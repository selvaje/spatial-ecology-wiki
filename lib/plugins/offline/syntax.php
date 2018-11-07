<?php
/**
 * Offline Plugin: Create a static version that is offline browsable
 *
 * @license    GPL 2 (http://www.gnu.org/licenses/gpl.html)
 * @author Carsten Graw <dokuwiki@graw.eu>
  */
// must be run within Dokuwiki
if(!defined('DOKU_INC')) die();

if(!defined('DOKU_PLUGIN')) define('DOKU_PLUGIN',DOKU_INC.'lib/plugins/');
require_once(DOKU_PLUGIN.'syntax.php');

/**
 * All DokuWiki plugins to extend the parser/rendering mechanism
 * need to inherit from this class
 */
class syntax_plugin_offline extends DokuWiki_Syntax_Plugin {

    /**
     * return some info
     */
    function getInfo(){
        return confToHash(dirname(__FILE__).'/info.txt');
    }

    /**
     * What kind of syntax are we?
     */
    function getType(){
        return 'substition';
    }

    /**
     * What about paragraphs?
     */
    function getPType(){
        return 'normal';
    }

    /**
     * Where to sort in?
     */
    function getSort(){
        return 800;
    }


    /**
     * Connect pattern to lexer
     */
    function connectTo($mode) {
        $this->Lexer->addSpecialPattern('~~SLIDESHOW~~',$mode,'plugin_s5');
    }


    /**
     * Handle the match
     */
    function handle($match, $state, $pos, &$handler){
        return array();
    }

    /**
     * Create output
     */
    function render($format, &$renderer, $data) {
        global $ID;
        if($format != 'xhtml') return false;

        $renderer->doc .= '<a href="'.exportlink($ID, 's5').'" title="'.$this->getLang('view').'">';
        $renderer->doc .= '<img src="'.DOKU_BASE.'lib/plugins/offline/screen.gif" align="right" alt="'.$this->getLang('view').'" width="48" height="48" />';
        $renderer->doc .= '</a>';
        return true;
    }
}

//Setup VIM: ex: et ts=4 enc=utf-8 :
