<?php
if (! class_exists('syntax_plugin_nbsp')) {
	if (! defined('DOKU_PLUGIN')) {
		if (! defined('DOKU_INC')) {
			define('DOKU_INC', realpath(dirname(__FILE__) . '/../../') . '/');
		} // if
		define('DOKU_PLUGIN', DOKU_INC . 'lib/plugins/');
	} // if
	// Include parent class:
	require_once(DOKU_PLUGIN . 'syntax.php');

/**
 * <tt>syntax_plugin_nbsp.php </tt>- A PHP4 class that provides the
 * ability to insert non-breaking spaces in <tt>DokuWiki</tt> page.
 *
 * <p>
 * To actually use this plugin just add <tt>\\ </tt> (i.e. backslash
 * space) or <tt>~~SP~~</tt> in a DokuWiki page. This will be expanded
 * to the UTF-8 character sequence.
 * </p><pre>
 *	Copyright (C) 2005, 2008  M.Watermann, D-10247 Berlin, FRG
 *			All rights reserved
 *		EMail : &lt;support@mwat.de&gt;
 * </pre>
 * <div class="disclaimer">
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either
 * <a href="http://www.gnu.org/licenses/gpl.html">version 3</a> of the
 * License, or (at your option) any later version.<br>
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 * </div>
 * @author <a href="mailto:support@mwat.de">Matthias Watermann</a>
 * @version <tt>$Id: syntax_plugin_nbsp.php,v 1.8 2008/11/22 07:48:34 matthias Exp $</tt>
 * @since created 27-Aug-2005
 */
class syntax_plugin_nbsp extends DokuWiki_Syntax_Plugin {

	/**
	 * Tell the parser whether the plugin accepts syntax mode
	 * <tt>$aMode</tt> within its own markup.
	 *
	 * <p>
	 * This method always returns <tt>FALSE</tt> since no other data
	 * can be nested inside a non-breaking space.
	 * </p>
	 * @param $aMode String The requested syntaxmode.
	 * @return Boolean <tt>FALSE</tt> always.
	 * @public
	 * @see getAllowedTypes()
	 */
	function accepts($aMode) {
		return FALSE;
	} // accepts()

	/**
	 * Connect lookup patterns to lexer.
	 *
	 * @param $aMode String The desired rendermode.
	 * @public
	 * @see render()
	 */
	function connectTo($aMode) {
		// 'verbose' pattern:
		$this->Lexer->addSpecialPattern('~~SP~~', $aMode, 'plugin_nbsp');
		// Don't match DokuWiki's linebreak markup:
		$this->Lexer->addSpecialPattern('(?<!\x5C)\x5C\x20',
			$aMode, 'plugin_nbsp');
		// in case a raw #160 was inserted (e.g. by copy&paste):
		$this->Lexer->addSpecialPattern('(?<![\x80-\xE2])\xA0',
			$aMode, 'plugin_nbsp');
	} // connectTo()

	/**
	 * Get an associative array with plugin info.
	 *
	 * <p>
	 * The returned array holds the following fields:
	 * <dl>
	 * <dt>author</dt><dd>Author of the plugin</dd>
	 * <dt>email</dt><dd>Email address to contact the author</dd>
	 * <dt>date</dt><dd>Last modified date of the plugin in
	 * <tt>YYYY-MM-DD</tt> format</dd>
	 * <dt>name</dt><dd>Name of the plugin</dd>
	 * <dt>desc</dt><dd>Short description of the plugin (Text only)</dd>
	 * <dt>url</dt><dd>Website with more information on the plugin
	 * (eg. syntax description)</dd>
	 * </dl>
	 * @return Array Information about this plugin class.
	 * @public
	 * @static
	 */
	function getInfo() {
		return array (
			'author' =>	'Matthias Watermann',
			'email' =>	'support@mwat.de',
			'date' =>	'2008-11-22',
			'name' =>	'NBSP Plugin',
			'desc' =>	'Include non-breaking spaces in wiki pages.',
			'url' =>	'http://www.dokuwiki.org/plugin:nbsp');
	} // getInfo()

	/**
	 * Where to sort in?
	 *
	 * @return Integer <tt>176</tt>.
	 * @public
	 * @static
	 */
	function getSort() {
		return 176;
	} // getSort()

	/**
	 * Get the type of syntax this plugin defines.
	 *
	 * @return String <tt>'substition'</tt> (a mispelled 'substitution').
	 * @public
	 * @static
	 */
	function getType() {
		return 'substition';
	} // getType()

	/**
	 * Handler to prepare matched data for the rendering process.
	 *
	 * <p>
	 * This implementation does nothing (ignoring the passed
	 * arguments) and just returns the given <tt>$aState</tt>.
	 * </p>
	 * @param $aMatch String The text matched by the patterns.
	 * @param $aState Integer The lexer state for the match.
	 * @param $aPos Integer The character position of the matched text.
	 * @param $aHandler Object Reference to the Doku_Handler object.
	 * @return Integer The given <tt>$aState</tt> value.
	 * @public
	 * @see render()
	 * @static
	 */
	function handle($aMatch, $aState, $aPos, &$aHandler) {
		return $aState;		// nothing more to do here ...
	} // handle()

	/**
	 * Handle the actual output creation.
	 *
	 * <p>
	 * The method checks for the given <tt>$aMode</tt> and returns
	 * <tt>FALSE</tt> when a mode isn't supported.
	 * <tt>$aRenderer</tt> contains a reference to the renderer object
	 * which is currently handling the rendering.
	 * The contents of <tt>$aData</tt> is the return value of the
	 * <tt>handle()</tt> method.
	 * </p><p>
	 * This implementation ignores the passed <tt>$aFormat</tt>
	 * argument adding a raw UTF-8 character sequence to the
	 * renderer's document.
	 * </p>
	 * @param $aFormat String The output format to generate.
	 * @param $aRenderer Object A reference to the renderer object.
	 * @param $aData Integer The state value returned by <tt>handle()</tt>.
	 * @return Boolean <tt>TRUE</tt> always.
	 * @public
	 * @see handle()
	 */
	function render($aFormat, &$aRenderer, $aData) {
		if (DOKU_LEXER_SPECIAL == $aData) {
			// No test of "$aFormat" needed here:
			// The raw UTF-8 character sequence is the same anyway.
			$aRenderer->doc .= chr(194) . chr(160);
		} // if
		return TRUE;
	} // render()

} // class syntax_plugin_nbsp
} // if
?>
