<?php
/**
 * Embed a contact form onto any page
 *
 * @license    GPL 2 (http://www.gnu.org/licenses/gpl.html)
 * @author     Bob Baddeley <bob@bobbaddeley.com>
 */

if(!defined('DOKU_INC')) define('DOKU_INC',realpath(dirname(__FILE__).'/../../').'/');
if(!defined('DOKU_PLUGIN')) define('DOKU_PLUGIN',DOKU_INC.'lib/plugins/');
require_once(DOKU_PLUGIN.'syntax.php');
require_once(DOKU_INC.'inc/auth.php');

class syntax_plugin_contact extends DokuWiki_Syntax_Plugin {
    /**
     * return some info
     */
    function getInfo(){
        return array(
            'author' => 'Bob Baddeley',
            'email'  => 'bob@bobbaddeley.com',
            'date'   => '2008-2-2',
            'name'   => 'Contact Form Plugin',
            'desc'   => 'Creates a contact form to email the webmaster',
            'url'    => 'http://bobbaddeley.com/doku.php/projects/programming/wiki/contact',
        );
    }

    /**
     * What kind of syntax are we?
     */
    function getType(){
        return 'container';
    }

    /**
     * What about paragraphs?
     */
    function getPType(){
        return 'block';
    }

    /**
     * Where to sort in?
     */
    function getSort(){
        return 309;
    }


    /**
     * Connect pattern to lexer
     */
    function connectTo($mode) {
        $this->Lexer->addSpecialPattern('\{\{contact>[^}]*\}\}',$mode,'plugin_contact');
    }

    /**
     * Handle the match
     */
    function handle($match, $state, $pos, &$handler){
        $match = substr($match,10,-2); //strip markup from start and end

        $data = array();

        //handle params
        $params = explode('|',$match,2);
        foreach($params as $param){
        $splitparam = explode('=',$param);
        if ($splitparam[0]=='to')$data['to'] = $splitparam[1];
        else if ($splitparam[0]=='subj')$data['subj'] = $splitparam[1];
        }
        return $data;
    }

    /**
     * Create output
     */
    function render($mode, &$renderer, $data) {
        if($mode == 'xhtml'){
            $renderer->doc .= $this->_contact($data);
            return true;
        }
        return false;
    }

	function _send_contact(){
                    global $conf;
		    require_once(DOKU_INC.'inc/mail.php');
                    $verify = strtoupper($_REQUEST['verify']);
		    if ($verify!="HUMAN"){
		    	$this->_show_message ("Mail not sent. You could not be verified as a human.");
                        return '';
                    }
		    $name = $_REQUEST['name'];
		    $email = $_REQUEST['email'];
                    $subject = $_REQUEST['subject'];
		    $comment = $name."\r\n";
		    $comment .= $email."\r\n\n";
		    $comment .= $_REQUEST['content'];
                    if (isset($_REQUEST['to'])){
                    $to = $conf['plugin']['contact'][$_REQUEST['to']];
                    }
                    else{
                    $to = $conf['plugin']['contact']['default'];
                   }
		   // A bunch of tests to make sure it's legitimate mail and not spoofed
		   // This should make it not very easy to do injection
		   if (eregi("\r",$name) || eregi("\n",$name) || eregi("MIME-Version: ",$name) || eregi("Content-Type: ",$name)){
		     $this->_show_message("Name has invalid input");
		     die();
		   }
		   if (eregi("\r",$email) || eregi("\n",$email) || eregi("MIME-Version: ",$email || eregi("Content-Type: ",$email))){
		     $this->_show_message("Email address has invalid input");
		     die();
		   }
		   if (eregi("\r",$subject) || eregi("\n",$subject) || eregi("MIME-Version: ",$subject) || eregi("Content-Type: ",$subject)){
		     $this->_show_message("Subject has invalid input");
		     die();
		   }
		   if (eregi("\r",$to) || eregi("\n",$to) || eregi("MIME-Version: ",$to) || eregi("Content-Type: ",$to)){
		     $this->_show_message("Destination address has invalid input");
		     die();
		   }
		   if (eregi("MIME-Version: ",$comment) || eregi("Content-Type: ",$comment)){
		     $this->_show_message("Comment has invalid input");
		     die();
		   }
		    // send only if comment is not empty
		    // this should never be the case anyway because the form has
		    // validation to ensure a non-empty comment
		    if (trim($comment, " \t") != ''){
		      if (mail_send($to, $subject, $comment, $to)){
		      	$this->_show_message ("Mail sent successfully");
		      	}
		      else{
		      	$this->_show_message ("Mail not sent. Please contact the administrator");
		      	}
		      //we're using the included mail_send command because it's
		      //already there and it's easy to use and it works
		      }
		      return '';
		  }

	function _show_message($string){
		echo "<script type='text/javascript'>
			alert('$string');
		</script>";
	}

    /**
     * Does the contact form xhtml creation. Adds some javascript to validate the form
     * and creates the input form.
     */
    function _contact($data){
        global $lang;
	    global $conf;
        global $ID;
    		//there is a hidden field on the contact submission field
			//that essentially says 'contact' = true. When the page is loaded,
			//we'll look to see if that is part of the post data so we know we need
			//to send the mail
		$ret = '';
		if ($_POST['contact'] == 'true') {$ret .= $this->_send_contact();}

        $ret .= "<div class=\"level2\">";
		$ret .= "<form action=\"".script()."\" method=\"post\" onsubmit=\"return validatecontact(this);\">";
		$ret .= "<table class=\"inline\">";
		$ret .= "<tr><td>".$this->getLang("name")." : </td><td><input type=\"text\" name=\"name\" value=\"\" /></td></tr>";
		$ret .= "<tr><td>".$this->getLang("email")." : </td><td><input type=\"text\" name=\"email\" value=\"\" /></td></tr>";
                if (!isset($data['subj'])){
                  $ret .= "<tr><td>".$this->getLang("subject")." : </td><td><input type=\"text\" name=\"subject\" value=\"\" /></td></tr>";
                }
		$ret .= "<tr><td>".$this->getLang("content")." : </td><td><textarea name=\"content\" wrap=\"on\" cols=\"40\" rows=\"6\" value=\"\" ></textarea></td></tr>";
		$ret .= "<tr><td>".$this->getLang("verify")." : </td><td><input type=\"text\" name=\"verify\" value=\"\" /></td></tr>";
                $ret .= "</table>";
		$ret .= "<p>";
                if (isset($data['subj'])){
                  $ret .= "<input type=\"hidden\" name=\"subject\" value=\"".$data['subj']."\" />";
                }
                if (isset($data['to'])){		
                  $ret .= "<input type=\"hidden\" name=\"to\" value=\"".$data['to']."\" />";
                }
                $ret .= "<input type=\"hidden\" name=\"do\" value=\"show\" />";
		$ret .= '<input type="hidden" name="id" value="'.$ID.'" />';
		$ret .= '<input type="hidden" name="purge" value="true" />';
                $ret .= "<input type=\"hidden\" name=\"contact\"   value=\"true\" />";
		$ret .= "<input type=\"submit\" name=\"submit\" value=\"".$this->getLang("contact")."\" />";
		$ret .= "</p>";
		$ret .= "</form>";
   		$ret .= "</div>";
        return $ret;
    }

}
