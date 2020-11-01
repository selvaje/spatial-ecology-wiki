<?php
error_reporting(0);
/**
 * bliki Plugin: Adds a simple blogging engine to your wiki
 * 
 * @license    GPL 2 (http://www.gnu.org/licenses/gpl.html)
 * @author     Beau Lebens <beau@dentedreality.com.au>
 * @author		Anthony Caetano <Anthony.Caetano@Sanlam.co.za>
 * 2011-10-31  modified by Taggic to get is work with current dokuwiki (Rincewind)
 */
 
if(!defined('DOKU_INC')) define('DOKU_INC',realpath(dirname(__FILE__).'/../../').'/');
if(!defined('DOKU_PLUGIN')) define('DOKU_PLUGIN',DOKU_INC.'lib/plugins/');
require_once(DOKU_PLUGIN.'syntax.php');

/**
 * All DokuWiki plugins to extend the parser/rendering mechanism
 * need to inherit from this class
 */
class syntax_plugin_bliki extends DokuWiki_Syntax_Plugin {
 
    /**
     * return some info
     */
    function getInfo(){
        return array(
            'author' => 'Beau Lebens',
            'email'  => 'beau@dentedreality.com.au',
            'date'   => '2011-10-31',
            'name'   => 'Bliki: The Wiki Blog',
            'desc'   => 'Adds basic blogging functionality to any page of your wiki.',
            'url'    => 'http://www.dokuwiki.org/plugin:bliki',
        );
    }
 
    /**
     * What kind of syntax are we?
     */
    function getType(){
        return 'substition';
    }
	
    /**
     * What kind of syntax do we allow (optional)
     */
    function getAllowedTypes() {
        return array('container', 'formatting', 'substition', 'protected', 'disabled', 'paragraphs');
    }
   
    /**
     * What about paragraphs? (optional)
     */
    function getPType(){
        return 'block';
    }
 
    /**
     * Where to sort in?
     */ 
    function getSort(){
        return 400;
    }
 
 
    /**
     * Connect pattern to lexer
     */
    function connectTo($mode) {
      $this->Lexer->addSpecialPattern('~~BLIKI~~', $mode, 'plugin_bliki');
    }
	
    /**
     * Handle the match
     */
    function handle($match, $state, $pos, &$handler){
		return array();
    }
    
    /**
    * @return Array
    * @param String $ID
    * @param Int $num
    * @param Int $offset
    * @desc Finds the full pathnames of the most recent $num posts, starting at the optional within the $ID blog/namespace.
    */
    function getPosts($ID, $num, $offset = 0) {
		global $conf;
		$recents = array();
		$counter = 0;

		// fully-qaulify the ID that we're working with (to dig into the namespace)
		$fp = wikiFN($ID);
		$ID = substr($fp, 0, strrpos($fp, '.'));

		// Only do it if the namespace exists
		if (is_dir($ID . '/')) {
			if ($this->getConf('structure') == 'flat') {
				$posts = $this->read_dir_to_array($ID . '/', 'file', '/^[0-9]{4}-[0-9]{2}-[0-9]{2}-[0-9]{6}\.txt$/');
				sort($posts);

				while (sizeof($recents) < $num && sizeof($posts)) {
					$post = array_pop($posts);
					$counter++;
					if ($counter > $offset) {
						$recents[] = $ID . '/' . $post;
					}
				}

				return $recents;
			}
			else {   // $this->getConf('structure') == 'deep'
				$years = $this->read_dir_to_array($ID . '/', 'dir');
				sort($years);

				// Now start working backwards through it all and get the most recent posts
				while (sizeof($recents) < $num && sizeof($years)) {
					$year = array_pop($years);
					$months = $this->read_dir_to_array($ID . '/' . $year . '/', 'dir');
					sort($months);

					while (sizeof($recents) < $num && sizeof($months)) { 
						$month = array_pop($months); 
						$days = $this->read_dir_to_array($ID . '/' . $year . '/' . $month . '/', 'dir');
						sort($days);

						while (sizeof($recents) < $num && sizeof($days)) {
							$day = array_pop($days);
							$posts = $this->read_dir_to_array($ID . '/' . $year . '/' . $month . '/' . $day . '/', 
							                           'file', 
							                           '/^[0-9]{6}\.txt$/');
							sort($posts);

							while (sizeof($recents) < $num && sizeof($posts)) {
								$post = array_pop($posts);
								$counter++;
								if ($counter > $offset) {
									$recents[] = $ID . '/' . $year . '/' . $month . '/' . $day . '/' . $post;
								}
							}
						}
					}
				}
				return $recents;
			}
		}
    }
    
    /**
    * @return String
    * @param Array $list
    * @desc Compiles the contents of all the files listed (as fully-qualified paths)  
    *       in $list into a single string. Compiles in the order listed. Adds date headers
    *       where required and a footer after each post.
    */
    function compilePosts($list) {
    	global $ID, $conf;

    	if (sizeof($list)) {
    		$last_date = false;
    		$str = '';
    		
    		foreach ($list as $file) {
    			// Decide if we need to add a date divider
    			$file = str_replace('\\', '/', $file);
            $ts = $this->getTimestampFromFile($file);
    			$date = date('Y-m-d', $ts);
    			if ($date != $last_date) {
    				$str .= $this->getDateHeader($ts);
    				$last_date = $date;
    			}
    			
    			// Add this file's contents to the output
    			$str .= file_get_contents($file);
    			
    			// And add a wiki-formatted footer of meta data as well, accounting for rewrites
    			$post_url = $this->getUrlPartFromTimestamp($ID, $ts);
   		   $edit_url = $this->getRewriteUrl($post_url, 'do=edit', false);
    			
    			$timestamp = date($this->getConf('datefooter'), $ts);
    			$str .= str_replace(array('{timestamp}', '{permalink}', '{edit}'), array($timestamp, $post_url, "this>$edit_url"), $this->getConf('footer'));
    		}
    		return $str;
    	}
    	else {
    		return '';
    	}
    }
    
    /**
    * @return String
    * @param timestamp $ts
    * @desc Returns a wiki-formatted date header for between posts.
    */
    function getDateHeader($ts) {
    	global $conf;
    	
    	$date = date($this->getConf('dateheader'), $ts);
    	return $date . "\n";
    }

    /**
    * @return timestamp
    * @param String $filename
    * @desc Returns a timestamp based on the filename/namespace structure
    */
    function getTimestampFromFile($file) {
		global $conf;
    	
		if ($this->getConf('structure') == 'flat') {
			$parts = explode('-', basename($file));
			$ts = mktime(substr($parts[3], 0, 2), substr($parts[3], 2, 2), substr($parts[3], 4, 2), $parts[1], $parts[2], $parts[0]);
		} 
		else {  // $this->getConf('structure') == 'deep'
			$parts = explode('/', dirname($file));
			$s = sizeof($parts);
			$date = $parts[$s-3] . '-' . $parts[$s-2] . '-' . $parts[$s-1];
			$filename = basename($file);
			$ts = mktime(substr($filename, 0, 2), substr($filename, 2, 2), substr($filename, 4, 2), $parts[$s-2], $parts[$s-1], $parts[$s-3]);
		}
    	return $ts;
    }

    /**
    * @return String
    * @param String $ID
    * @param timestamp $ts
    * @desc Returns a post url for a post based on the post's timestamp and the base ID
    */
    function getUrlPartFromTimestamp($ID, $ts=0) {
		global $conf;
		
      if ($ts == 0) {
          $ts = time();
      }

/*      if ($conf['userewrite'] > 0) {
 		    $sep = ($conf['useslash'] == true ? '/' : ':');
      } 
      else {      */
          $sep = ':';
//      }

      if ($this->getConf('structure') == 'flat') {
          return $ID . $sep . date('Y-m-d-His', $ts);
      } 
      else { // $this->getConf('structure') == 'deep'
  			return $ID . $sep . date('Y' . $sep . 'm' . $sep . 'd' . $sep . 'His', $ts);
      }
    }
    
    /**
    * @return String
    * @param String $url
    * @param String $query
    * @desc Returns a url properly prefixed according to the $conf['rewrite'] option
    *       A $page is an appropriately constructed (namespace inclusive and considering $conf['useslash']) page reference
    *       A $query contains a query string parameters to append
    */
    function getRewriteUrl($page, $query, $base = true) {
    	global $conf;
    
    	if ($conf['userewrite'] == 0) {
			if ($base) {
				$str = DOKU_BASE;
			}
			$str .= DOKU_SCRIPT . '?id=' . $page;
			if ($query != '') {
				$str .=  '&' . $query;
			}
		} 
      else if ($conf['userewrite'] == 1) {
			if ($base) {
				$str = DOKU_BASE;
			}
			$str .= idfilter($page, false);
			if ($query != '') {
				$str .=  '?' . $query;
			}
		} 
      else {
			if ($base) {
				$str = DOKU_BASE;
			}
			$str .= DOKU_SCRIPT . '/' . idfilter($page, false);
			if ($query != '') {
				$str .=  '?' . $query;
			}
      }
      return $str;
    }
    
    /**
    * @return String
    * @param String $label
    * @desc Creates the HTML required for the "New Post" link, using the lable provided.
    */
    function newPostLink($label) {
    	global $conf, $ID;
    	
//    	$sep = ($conf['useslash'] == true ? '/' : ':');
      $sep = ':';
   	                                                   //+ (isset($this->getConf('offset')) ? ($this->getConf('offset') * 3600) : 0)
   	  $page = $this->getUrlPartFromTimestamp($ID, time());      
    	$html = '<div id="blognew">';
    	$hilf = $this->getRewriteUrl($page, 'do=edit');
      $output = '<a href="'.$hilf.'">' . $label . '</a>';
		  $html .= $output.'</div>';
		
		return $html;
    }
    
    /**
    * @return String
    * @param Int $page
    * @param String $label
    * @desc Creates the HTML required for a link to an older/newer page of posts. 
    */
    function pagingLink($page, $label) {
    	global $conf, $ID;
    	
    	$html = '<a href="';
   	$html .= $this->getRewriteUrl($ID, "page=$page");
		$html .= '">' . $label . '</a>';
		
		return $html;
    }
    
    /**
	 * @return Array
	 * @param String $dir
	 * @param String $select
	 * @param String $match
	 * @desc Reads all entries in a directory into an array, sorted alpha, dirs then files.
	 *       $select is used to selects either only dir(ectories), file(s) or both
	 *       If $match is supplied, it should be a / delimited regex to match the filename against
	 */
	function read_dir_to_array($dir, $select = 'both', $match = false) { 
		$files = array();
		$dirs  = array();
		
		// Read all the entries in the directory specified
		$handle = @opendir($dir);
		if (!$handle) {
			return false;
		}
		while ($file = @readdir($handle)) {
			// Ignore self and parent references
			if ($file != '.' && $file != '..') {
				if (($select == 'both' || $select == 'dir') && is_dir($dir . $file)) {
					$dirs[] = $file;
				}
				else if (($select == 'both' || $select == 'file') && !is_dir($dir . $file)) { 
					if (is_string($match)) {
						if (!preg_match($match, $file)) {
							continue;
						}
					}
					$files[] = $file;
				}
			}
		}
		@closedir($handle);

		// Sort anything found alphabetically and combine the results (dirs->files)
		if (sizeof($dirs) > 0) {
			sort($dirs, SORT_STRING);
		}
		if (sizeof($files) > 0) {
			sort($files, SORT_STRING);
		}
		
		// Put the directories and files back together and return them
		return array_merge($dirs, $files);
	}
 
    /**
     * Create output
     */
    function render($mode, &$renderer, $data) {
    	global $ID, $conf;
    	
    	// Set the page number (determines which posts we display)
    	if (isset($_REQUEST['page'])) {
    		$page = $_REQUEST['page'];
    	}
    	else {
    		$page = 0;
    	}
    	
		if ($mode == 'xhtml') {
			// Addlink for creating a new post
			$renderer->doc .= $this->newPostLink($this->getConf('newlabel'));

			// Go and get the required blog posts and compile them into one wikitext string
			// FIXME $config var for how many? or inline directive?
			$recents = $this->getPosts($ID, $this->getConf('numposts'), ($page * $this->getConf('numposts')));
			$compiled = $this->compilePosts($recents);
	
			// Disable section editing to avoid weird links
			$conf['maxseclevel'] = 0;

			// Disbale caching because we need to get new files always
			$renderer->info['cache'] = false;

			// Add the compiled blog posts after rendering them.
			$renderer->doc .= p_render('xhtml', p_get_instructions($compiled), $info);

			// Add a link to older entries if we filled the number per page (assuming there's more)
			if (sizeof($recents) == $this->getConf('numposts')) {
				$renderer->doc .= '<div id="blogolder">' . $this->pagingLink($page+1, $this->getConf('olderlabel')) . '</div>';
			}

			// And also a link to newer posts if we're not on page 0
			if ($page != 0) {
				$renderer->doc .= '<div id="blognewer">' . $this->pagingLink($page-1, $this->getConf('newerlabel')) . '</div>';
			}

			return true;
		}
		return false;
		}
}
?>