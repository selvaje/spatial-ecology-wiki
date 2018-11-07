<?php
/**
 * Renderer for XHTML output
 *
 * @author Carsten Graw <dokuwiki@graw.eu>
 */
// must be run within Dokuwiki
if(!defined('DOKU_INC')) die();

// we inherit from the XHTML renderer instead directly of the base renderer
require_once DOKU_INC.'inc/parser/xhtml.php';

/**
 * The Renderer
 */
class renderer_plugin_offline extends Doku_Renderer_xhtml {
   var $base='';
    var $tpl='';

    /**
     * return some info
     */
    function getInfo(){
        return confToHash(dirname(__FILE__).'/info.txt');
    }

    /**
     * the format we produce
     */
    function getFormat(){
        // this should be "offline"' usally, but we inherit from the xhtml renderer
        // and produce XHTML as well, so we can gain magically compatibility
        // by saying we're the 'xhtml' renderer here.
        return 'xhtml';
    }


    /**
     * Initialize the rendering
     */
     function document_start() {
        // call the parent
        parent::document_start();

        // send the content type header
        header('Content-Type: text/html; charset=utf-8');

        $this->base = DOKU_BASE.'lib/plugins/offline/ui/';
        $this->tpl  = $this->getConf('template');
        $this->offline_init($text);   
    }

    /**
     * Print the header of the page
     *
     * Gets called when the very first H1 header is discovered. It includes
     * all the S5 CSS and JavaScript magic
     */
 
    function offline_init($title){
        global $conf;
        global $lang;
        global $INFO;
        global $ID;
// Create prefix to turn almost absolute path into relative path
$urlPrefixStr = $this->create_url_prefix($ID);

        //throw away any previous content
        $this->doc = '
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="'.$conf['lang'].'"
 lang="'.$conf['lang'].'" dir="'.$lang['direction'].'">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>'.hsc($title).'</title>
<!-- metadata -->
<meta name="generator" content="Offline" />
<meta name="version" content="Offline 0.1" />
<!-- style sheet links -->
<link rel="stylesheet" media="all" type="text/css" href="' . $urlPrefixStr . '../css/all.css" />
<link rel="stylesheet" media="screen" type="text/css" href="' . $urlPrefixStr . '../css/screen.css" />
<link rel="stylesheet" media="print" type="text/css" href="' . $urlPrefixStr . '../css/print.css" />

</head>
<body>
<div class="dokuwiki export">

';
    }

    /**
     * Closes the document
    function document_end(){
        // we don't care for footnotes and toc
        // but cleanup is nice
        $this->doc = preg_replace('#<p>\s*</p>#','',$this->doc);

        if($this->slideopen){
            $this->doc .= '</div>'.DOKU_LF; //close previous slide
        }
        $this->doc .= '</div>
                       </body>
                       </html>';
    }
     */

    function document_end() {
        if ( count ($this->footnotes) > 0 ) {
            $this->doc .= '<div class="footnotes">'.DOKU_LF;

            $id = 0;
            foreach ( $this->footnotes as $footnote ) {
                $id++;   // the number of the current footnote

                // check its not a placeholder that indicates actual footnote text is elsewhere
                if (substr($footnote, 0, 5) != "@@FNT") {

                    // open the footnote and set the anchor and backlink
                    $this->doc .= '<div class="fn">';
                    $this->doc .= '<sup><a href="#fnt__'.$id.'" id="fn__'.$id.'" name="fn__'.$id.'" class="fn_bot">';
                    $this->doc .= $id.')</a></sup> '.DOKU_LF;

                    // get any other footnotes that use the same markup
                    $alt = array_keys($this->footnotes, "@@FNT$id");

                    if (count($alt)) {
                      foreach ($alt as $ref) {
                        // set anchor and backlink for the other footnotes
                        $this->doc .= ', <sup><a href="#fnt__'.($ref+1).'" id="fn__'.($ref+1).'" name="fn__'.($ref+1).'" class="fn_bot">';
                        $this->doc .= ($ref+1).')</a></sup> '.DOKU_LF;
                      }
                    }

                    // add footnote markup and close this footnote
                    $this->doc .= $footnote;
                    $this->doc .= '</div>' . DOKU_LF;
                }
            }
            $this->doc .= '</div>'.DOKU_LF;
        }

        // Prepare the TOC
        if($this->info['toc'] && is_array($this->toc) && count($this->toc) > 2){
            global $TOC;
            $TOC = $this->toc;        
        }

        // make sure there are no empty paragraphs
        $this->doc = preg_replace('#<p>\s*</p>#','',$this->doc);
        $this->doc .= '</div><!-- closes <div class="dokuwiki export">-->';
    }



   /**
     * Renders internal and external media
     *
     * @author Andreas Gohr <andi@splitbrain.org>
     */
    function _media ($src, $title=NULL, $align=NULL, $width=NULL,
                      $height=NULL, $cache=NULL, $render = true) {
global $ID;
// Create prefix to turn almost absolute path into relative path
$urlPrefixStr = $this->create_url_prefix($ID);

        $ret = '';

        list($ext,$mime) = mimetype($src);
        if(substr($mime,0,5) == 'image'){
            // first get the $title
            if (!is_null($title)) {
                $title  = $this->_xmlEntities($title);
            }elseif($ext == 'jpg' || $ext == 'jpeg'){
                //try to use the caption from IPTC/EXIF
                require_once(DOKU_INC.'inc/JpegMeta.php');
                $jpeg =& new JpegMeta(mediaFN($src));
                if($jpeg !== false) $cap = $jpeg->getTitle();
                if($cap){
                    $title = $this->_xmlEntities($cap);
                }
            }
            if (!$render) {
                // if the picture is not supposed to be rendered
                // return the title of the picture
                if (!$title) {
                    // just show the sourcename
                    $title = $this->_xmlEntities(basename(noNS($src)));
                }
                return $title;
            }
            //add image tag
$ret .= '<img src="'.$urlPrefixStr.'../media/'.str_replace(':', '/', $src).'"';
            $ret .= ' class="media'.$align.'"';

            // make left/right alignment for no-CSS view work (feeds)
            if($align == 'right') $ret .= ' align="right"';
            if($align == 'left')  $ret .= ' align="left"';

            if ($title) {
                $ret .= ' title="' . $title . '"';
                $ret .= ' alt="'   . $title .'"';
            }else{
                $ret .= ' alt=""';
            }

            if ( !is_null($width) )
                $ret .= ' width="'.$this->_xmlEntities($width).'"';

            if ( !is_null($height) )
                $ret .= ' height="'.$this->_xmlEntities($height).'"';

            $ret .= ' />';

        }elseif($mime == 'application/x-shockwave-flash'){
            $ret .= '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'.
                    ' codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"';
            if ( !is_null($width) ) $ret .= ' width="'.$this->_xmlEntities($width).'"';
            if ( !is_null($height) ) $ret .= ' height="'.$this->_xmlEntities($height).'"';
            $ret .= '>'.DOKU_LF;
            $ret .= '<param name="movie" value="'.ml($src).'" />'.DOKU_LF;
            $ret .= '<param name="quality" value="high" />'.DOKU_LF;
            $ret .= '<embed src="'.ml($src).'"'.
                    ' quality="high"';
            if ( !is_null($width) ) $ret .= ' width="'.$this->_xmlEntities($width).'"';
            if ( !is_null($height) ) $ret .= ' height="'.$this->_xmlEntities($height).'"';
            $ret .= ' type="application/x-shockwave-flash"'.
                    ' pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>'.DOKU_LF;
            $ret .= '</object>'.DOKU_LF;

        }elseif($title){
            // well at least we have a title to display
            $ret .= $this->_xmlEntities($title);
        }else{
            // just show the sourcename
            $ret .= $this->_xmlEntities(basename(noNS($src)));
        }

        return $ret;
    }


    /**
     * Render an internal Wiki Link
     *
     * $search and $returnonly are not for the renderer but are used
     * elsewhere - no need to implement them in other renderers
     *
     * @author Andreas Gohr <andi@splitbrain.org>
     */
    function internallink($id, $name = NULL, $search=NULL,$returnonly=false) {
        global $conf;
        global $ID;
        // default name is based on $id as given
        $default = $this->_simpleTitle($id);// now first resolve and clean up the $id
        resolve_pageid(getNS($ID),$id,$exists);
        $name = $this->_getLinkTitle($name, $default, $isImage, $id);
        if ( !$isImage ) {
            if ( $exists ) {
                $class='wikilink1';
            } else {
                $class='wikilink2';
                $link['rel']='nofollow';
            }
        } else {
            $class='media';
        }

$urlPrefixStr = $this->create_url_prefix($ID);
        //keep hash anchor
        list($id,$hash) = explode('#',$id,2);
        if(!empty($hash)) $hash = $this->_headerToLink($hash);

        //prepare for formating
        $link['target'] = $conf['target']['wiki'];
        $link['style']  = '';
        $link['pre']    = '';
        $link['suf']    = '';
        // highlight link to current page
        if ($id == $ID) {
            $link['pre']    = '<span class="curid">';
            $link['suf']    = '</span>';
        }
        $link['more']   = '';
        $link['class']  = $class;
$link['url']    = $urlPrefixStr . str_replace(':', '/', $id) . '.html';// Links relativ
        $link['name']   = $name;
        $link['title']  = $id;
        //add search string
        if($search){
            ($conf['userewrite']) ? $link['url'].='?' : $link['url'].='&amp;';
            if(is_array($search)){
                $search = array_map('rawurlencode',$search);
                $link['url'] .= 's[]='.join('&amp;s[]=',$search);
            }else{
                $link['url'] .= 's='.rawurlencode($search);
            }
        }

        //keep hash
        if($hash) $link['url'].='#'.$hash;

        //output formatted
        if($returnonly){
            return $this->_formatLink($link);
        }else{
            $this->doc .= $this->_formatLink($link);
        }
    }



     /**
     * Create URL-prefix to turn almost absolute path into relative path
     * Carsten Graw
     */
    function create_url_prefix($ID) {
        // $ID enth"alt die ID der Seite, die die Links enth"alt.
        // $id ist ein Link-Ziel in der Seite ID.
        //echo '<hr><div>ID: ', $ID, '<br />';
        //echo 'id: ', $id, '</div><hr />';
        // 
        $directoryLevel = substr_count($ID, ':');
        $urlPrefixStr = '';
        for ($i = 0; $i < $directoryLevel; $i++) {
            $urlPrefixStr .= '../';
        }
        
        return $urlPrefixStr;
    }

    /**
     * Top-Level Sections are slides
    function section_open($level) {
        if($level < 3){
            $this->doc .= '<div class="slidecontent">'.DOKU_LF;
        }else{
            $this->doc .= '<div>'.DOKU_LF;
        }
        // we don't use it 
    }
     */

    /**
     * Throw away footnote
    function footnote_close() {
        // recover footnote into the stack and restore old content
        $footnote = $this->doc;
        $this->doc = $this->store;
        $this->store = '';
    }
     */

    /**
     * No acronyms in a presentation
    function acronym($acronym){
        $this->doc .= $this->_xmlEntities($acronym);
    }
     */

    /**
     * A line stops the slide and start the handout section
    function hr() {
        $this->doc .= '</div>'.DOKU_LF;
        $this->doc .= '<div class="handout">'.DOKU_LF;
    }
     */


/**
 * Places the TOC where the function is called
 *
 * If you use this you most probably want to call tpl_content with
 * a false argument
 *
 * @author Andreas Gohr <andi@splitbrain.org>
 */
function tpl_toc2($return=false){
    global $TOC;
    global $ACT;
    global $ID;
    global $REV;
    global $INFO;
    $toc = array();

    if(is_array($TOC)){
        // if a TOC was prepared in global scope, always use it
        $toc = $TOC;
    }elseif(($ACT == 'show' || substr($ACT,0,6) == 'export') && !$REV && $INFO['exists']){
        // get TOC from metadata, render if neccessary
        $meta = p_get_metadata($ID, false, true);
        if(isset($meta['internal']['toc'])){
            $tocok = $meta['internal']['toc'];
        }else{
            $tocok = true;
        }
        $toc   = $meta['description']['tableofcontents'];
        if(!$tocok || !is_array($toc) || count($toc) < 3){
            $toc = array();
        }
    }elseif($ACT == 'admin'){
        // try to load admin plugin TOC FIXME: duplicates code from tpl_admin
        $plugin = null;
        if (!empty($_REQUEST['page'])) {
            $pluginlist = plugin_list('admin');
            if (in_array($_REQUEST['page'], $pluginlist)) {
                // attempt to load the plugin
                $plugin =& plugin_load('admin',$_REQUEST['page']);
            }
        }
        if ( ($plugin !== null) &&
             (!$plugin->forAdminOnly() || $INFO['isadmin']) ){
            $toc = $plugin->getTOC();
            $TOC = $toc; // avoid later rebuild
        }
    }

    $html = html_TOC($toc);
    if($return) return $html;
    echo $html;
}



}


//Setup VIM: ex: et ts=4 enc=utf-8 :
