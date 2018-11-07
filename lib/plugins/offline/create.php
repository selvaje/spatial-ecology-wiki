<?php
/**
 * Offline Plugin: Create a static version that is offline browseable
 *
 * @license    GPL 2 (http://www.gnu.org/licenses/gpl.html)
 * @author Carsten Graw <dokuwiki@graw.eu>
 */


/* ----------------------- Set some global variables ----------------------- */
// Global configuration for offline plugin will be stored in this array:
$offlineConf = array();

// The following variable is used to determine whether the script is run in the
// dry run mode or not.
// Because it is needed in 'init_log_file()' it is set here and not in the
// function 'set_my_global_variables()':
$offlineConf['offlineMode'] = strtolower(htmlentities(strip_tags(stripslashes($_REQUEST['offlineMode']))));

$offlineConf['pathDelimiterStr'] = strstr(PHP_OS, 'WIN') ? "\\" : "/";



/* ----------------------------- Include files ----------------------------- */
require_once('inc/log.inc.php');

// Get DokuWiki configuration:
// Note: Original DokuWiki defines paths with a trailing slash:
if (!defined('DOKU_INC')) define('DOKU_INC', dirname(__FILE__) . $offlineConf['pathDelimiterStr'] . '..' . $offlineConf['pathDelimiterStr'] . '..' . $offlineConf['pathDelimiterStr'] . '..' . $offlineConf['pathDelimiterStr']);
require_once(DOKU_INC.'inc/init.php');

// Get offline plugin configuration:
require_once('conf/default.php');



/* -------------------- Main program starts below here -------------------- */
echo '<pre>';

// Initialize log file:
init_log_file();

// Store required information in global array '$offlineConf':
set_my_global_variables();

// Recursively delete old temporary directory in which remains of a previous
// offline version might still be stored:
delete_old_tmp_session_directory($offlineConf['absolutePathToTmpSessionDirStr']);

// Create temporary directory in which the offline version will be stored
create_directory($offlineConf['absolutePathToTmpSessionDirStr'], 0777);

// Copy or download css files:
process_css_files();

// Copy media files:
process_media_files();

// Process directory in which pages are stored:
process_wiki_pages();

// Build indices for easier navigation and write them to file:
process_indices();

// Building an archiv, e.g. a zip-file:
create_archive();

// Delete temporary directory in which the offline version was stored:
// (In case the archiver was not called with the option 'move files' the
// remaining files should be deleted to leave the temporary directory clean.)
delete_old_tmp_session_directory($offlineConf['absolutePathToTmpSessionDirStr']);


log_msg(__LINE__, date('Y-m-d') . ' Offline version created');
echo '</pre>';
die;




/* ----------------- Function definitions start below here ----------------- */


/**
 * Initialize the log file.
 *
 * Global variables for logging are being set.
 * An existing log file will be deleted.
 * 
 */
function init_log_file() {
	global $offlineConf;
	
	// Settings for logging:
	$offlineConf['logWriteToFile']     = true;
	$offlineConf['logPrintToScreen']   = true;
	$offlineConf['logDirectory']       = dirname(__FILE__);
	$offlineConf['logDefaultFileName'] = 'offline.log';

	// Delete old log file
	delete_file($offlineConf['logDirectory'] . '/' . $offlineConf['logDefaultFileName'], false);

	log_msg(__LINE__, date('Y-m-d') . ' Creating offline version');
}


/**
 * Read user defined settings.
 * If there aren't any user defined settings, the default settings will be
 * used instead.
 * Values will be returned in the global hash $offlineConf.
 *
 *
 * Example:
 * 1) The user defined setting "wgetPathToBinary' can be accessed like this:
 *      $conf['plugin']['offline']['wgetPathToBinary']
 *   
 * 2) The default setting for wgetPathToBinary'is derived from the file
 *      "default.php"
 *    and is stored in
 *      $conf['wgetPathToBinary']
 *
 */
function set_my_global_variables() {
	global $conf;// Variables from DokuWiki
	global $offlineConf;// Variables for offline plugin
	
	// Merge default values for offline plugin with user defined settings:
	$optionsArr = array('template', 'dokuwikiProtocol', 'dokuwikiHost', 'dokuwikiRelativePath', 'wgetPathToBinary', 'wgetHttpUser', 'wgetHttpPasswd', 'archiverPathToBinary', 'archiverOptions', 'insertLinkBackToHome', 'writeLogFile');
	foreach($optionsArr as $optionStr) {
		log_msg(__LINE__, $optionStr . '=' . $conf['plugin']['offline'][$optionStr] . ' (Default: ' . $conf[$optionStr] . ')');
		isset($conf['plugin']['offline'][$optionStr]) ? $offlineConf[$optionStr] = $conf['plugin']['offline'][$optionStr] : $offlineConf[$optionStr] = $conf[$optionStr];		
		log_msg(__LINE__, $optionStr . ' = ' . $offlineConf[$optionStr]);
	}
	
	$offlineConf['absolutePathToDokuwikiDirStr']      = dirname(__FILE__) . $offlineConf['pathDelimiterStr'] . '..' . $offlineConf['pathDelimiterStr'] . '..' . $offlineConf['pathDelimiterStr'] . '..';
	$offlineConf['absolutePathToOfflinePluginDirStr'] = dirname(__FILE__);
	$offlineConf['absolutePathToDataDirStr']          = $offlineConf['absolutePathToDokuwikiDirStr'] . $offlineConf['pathDelimiterStr'] . 'data';
	$offlineConf['absolutePathToMediaDirStr']         = $offlineConf['absolutePathToDokuwikiDirStr'] . $offlineConf['pathDelimiterStr'] . 'data' . $offlineConf['pathDelimiterStr'] . 'media';
	$offlineConf['absolutePathToPagesDirStr']         = $offlineConf['absolutePathToDokuwikiDirStr'] . $offlineConf['pathDelimiterStr'] . 'data' . $offlineConf['pathDelimiterStr'] . 'pages';
	$offlineConf['absolutePathToTmpDirStr']           = $offlineConf['absolutePathToDokuwikiDirStr'] . $offlineConf['pathDelimiterStr'] . 'data' . $offlineConf['pathDelimiterStr'] . 'tmp';
//	$offlineConf['absolutePathToTmpSessionDirStr']    = $offlineConf['absolutePathToDokuwikiDirStr'] . '/data/tmp' . '/offline' . date('Y-m-d_His');
	$offlineConf['absolutePathToTmpSessionDirStr']    = $offlineConf['absolutePathToDokuwikiDirStr'] . $offlineConf['pathDelimiterStr'] . 'data' . $offlineConf['pathDelimiterStr'] . 'tmp' . $offlineConf['pathDelimiterStr'] . 'offline';
	$offlineConf['pageExtensionStr']                  = 'txt';
//	$offlineConf['dokuwikiBaseUrlStr']                = 'http://localhost/dokuwiki';
	if ($offlineConf['dokuwikiRelativePath'] != '') {
		$offlineConf['dokuwikiBaseUrlStr']                = $offlineConf['dokuwikiProtocol'] . '://' . $offlineConf['dokuwikiHost'] . '/' . $offlineConf['dokuwikiRelativePath'];
	} else {
		$offlineConf['dokuwikiBaseUrlStr']                = $offlineConf['dokuwikiProtocol'] . '://' . $offlineConf['dokuwikiHost'];
	}
	$offlineConf['dokuwikiShowPageUrlStr']            = $offlineConf['dokuwikiBaseUrlStr'] . '/doku.php?id=';
	$offlineConf['dokuwikiExportCommandSuffixStr']    = '&do=export_offline';
	$offlineConf['wgetCommandStr']                    = assemble_wget_command();
	$offlineConf['pageDirectoriesArr']                = array();
	$offlineConf['wgetCommandsArr']                   = array();
	$offlineConf['mediaDirectoriesArr']               = array();
	$offlineConf['mediaFilesSourceAndTargetArr']      = array();
	
	// List all parameters and there values for debbuging:
	foreach ($offlineConf as $key => $value) {
		$parametersStr .= '-- ' . $key . ' = ' . $value . "\n";
	}
	log_msg(__LINE__, $parametersStr);
}


/**
 * Processes the directory in which pages are stored.
 * 
 * First, the page directory tree is traversed and all files and subdirectories
 * are stored in the global array $offlineConf['pageDirectoriesArr'].
 * In the second step this array is walked through and the according directory
 * structure is created in the temporary pages directory.
 * (Subdirectories are created by DokuWiki if wiki pages are arranged in name
 * spaces.)
 * Finally, each wiki page is downloaded and saved in the temp directory.
 * 
 */
function process_wiki_pages() {
	global $offlineConf;
	
	log_msg(__LINE__, 'Processing wiki pages ...');
	retrieve_page_tree($offlineConf['absolutePathToPagesDirStr']);
	log_msg(__LINE__, join("\n", $offlineConf['wgetCommandsArr']));
	
	foreach ($offlineConf['pageDirectoriesArr'] as $currentDirStr => $count) {
		create_directory($offlineConf['absolutePathToTmpSessionDirStr'] . $offlineConf['pathDelimiterStr'] . $currentDirStr, 0777);
	}
	
	foreach ($offlineConf['wgetCommandsArr'] as $currentWgetCommandStr) {
		log_msg(__LINE__, $currentWgetCommandStr);
		if ($offlineConf['offlineMode'] != 'dryrun') system($currentWgetCommandStr);
	}
	unset($offlineConf['wgetCommandsArr']);
}


/**
 * Expects an absolute path to start from and traverses the whole directory.
 * All subdirectories and files are returned in a nested array.
 * 
 * Credits:
 * This routine is based on the function 'retrieveTree' which is explained in
 * the article 'Recursion In PHP: Tapping Unharnessed Power' by Robert Peake
 * published on November 18, 2004, on the website
 * http://devzone.zend.com/node/view/id/1235. Discovered: 12/20/2008.
 * Thank you, Robert!
 * 
 */
function retrieve_page_tree($pathStr)  {
	global $offlineConf;

	if ($dir = @opendir($pathStr)) {
		while (($element = readdir($dir)) !== false) {
			if (is_dir($pathStr . $offlineConf['pathDelimiterStr'] . $element) && $element != "." && $element != "..") {
				$array[$element] = retrieve_page_tree($pathStr . $offlineConf['pathDelimiterStr'] . $element);
			} elseif ($element!= "." && $element!= ".." && (ereg('\.txt$', $element))) {
				$array[] = $pathStr . $offlineConf['pathDelimiterStr'] . $element;
				$tmpDokuwikiUrlStr = '"' . $offlineConf['dokuwikiShowPageUrlStr'] . convert_absolute_file_system_path_to_relative_dokuwiki_path($pathStr . $offlineConf['pathDelimiterStr'] . $element) . $offlineConf['dokuwikiExportCommandSuffixStr'] . '"';
			$tmpRelativeFilenameWithPathStr = str_replace($offlineConf['absolutePathToDataDirStr'] . $offlineConf['pathDelimiterStr'], '', $pathStr)  . $offlineConf['pathDelimiterStr'] . str_replace('.txt', '.html', $element);
				$tmpOutputFilenameWithPathStr = '"' . $offlineConf['absolutePathToTmpSessionDirStr'] . $offlineConf['pathDelimiterStr'] . $tmpRelativeFilenameWithPathStr . '"';
				$offlineConf['wgetCommandsArr'][] = $offlineConf['wgetCommandStr'] . ' ' . $tmpDokuwikiUrlStr . ' -O ' . $tmpOutputFilenameWithPathStr;
				$offlineConf['pageDirectoriesArr'][str_replace($offlineConf['absolutePathToDataDirStr'] . $offlineConf['pathDelimiterStr'], '', $pathStr)]++;
				$offlineConf['indexHierarchicalArr'][] = $tmpRelativeFilenameWithPathStr;
				
				$offlineConf['indexAlphabeticalArr'][$element] = $tmpRelativeFilenameWithPathStr;
			}
		}
		closedir($dir);
	}
	
	return (isset($array) ? $array : false);
}


/**
 * Converts an absolute path from the file system into a relative dokuwiki
 * path.
 *
 * 1) Remove prefix for absolute path, e.g.:
 *      '/data/htdocs/dokuwiki/data/pages/admin/start.txt'
 *      -->
 *      'admin/start.txt'
 * 2) Remove file extension:
 *      'admin/start.txt'
 *      -->
 *      'admin/start'
 * 3) Convert delimiter string to colon:
 *      'admin/start'
 *      -->
 *      'admin:start'
 *      
 */
function convert_absolute_file_system_path_to_relative_dokuwiki_path($elementStr) {
	global $offlineConf;

	$elementStr = str_replace($offlineConf['absolutePathToPagesDirStr'] . $offlineConf['pathDelimiterStr'], '', $elementStr);
	$elementStr = ereg_replace('^(.*)\.' . $offlineConf['pageExtensionStr'] . '$', '\\1', $elementStr);
	$elementStr = str_replace($offlineConf['pathDelimiterStr'], ':', $elementStr);

	return $elementStr;
}


/**
 * Assembles the wget command, which will be used to download the wiki pages.
 *
 */
function assemble_wget_command() {
	global $offlineConf;
	
	// Verify existence of wget binary file:
	check_existence($offlineConf['wgetPathToBinary'], 'file');
	
	if (($offlineConf['wgetHttpUser'] != '') || ($offlineConf['wgetHttpPasswd'] != '')) {
		$commandStr = ' --http-user="' . $offlineConf['wgetHttpUser']  . '" --http-passwd="' . $offlineConf['wgetHttpPasswd']  . '"';
	}
	
	$commandStr = escapeshellcmd($offlineConf['wgetPathToBinary'] . ' --proxy=off ' . $commandStr);
	
	return $commandStr;
}


/**
 * Copies or downloads the cascading style sheet files which a are needed to
 * display the wiki pages properly.
 * 
 */
function process_css_files() {
	global $offlineConf;
	
	log_msg(__LINE__, 'Processing css files ...');
	if ($offlineConf['template'] == 'default') {
		// Use DokuWiki's current default template:
		download_css_files($offlineConf['absolutePathToTmpSessionDirStr'], $offlineConf['wgetCommandStr']);
	} else {
		// Use one of the templates provided with this plugin:
		copy_css_files($offlineConf['absolutePathToTmpSessionDirStr'], $offlineConf['template']);
	}
}


/**
 * Download necessary css files.
 *
 */
function download_css_files($absolutePathToTmpDirStr, $wgetCommandStr) {
	global $offlineConf;
	
	log_msg(__LINE__, 'Downloading css files ...');

	create_directory($absolutePathToTmpDirStr . $offlineConf['pathDelimiterStr'] . 'css', 0777);
	$cssFilesArr = array(); 
	$cssFilesArr['all']    = '/lib/exe/css.php?s=all&amp;t=default';
	$cssFilesArr['screen'] = '/lib/exe/css.php?t=default';
	$cssFilesArr['print']  = '/lib/exe/css.php?s=print&amp;t=default';
	foreach ($cssFilesArr as $currentTypeStr => $currentCssSubPathStr) {
		$currentWgetCommandStr = $offlineConf['wgetCommandStr'] . ' "' . $offlineConf['dokuwikiBaseUrlStr'] . $currentCssSubPathStr . '" -O "' . $absolutePathToTmpDirStr . $offlineConf['pathDelimiterStr'] . 'css' . $offlineConf['pathDelimiterStr'] . $currentTypeStr . '.css" ' . "\n";
		log_msg(__LINE__, $currentWgetCommandStr);
		if ($offlineConf['offlineMode'] != 'dryrun') system($currentWgetCommandStr);
	}
}


/**
 * Copying necessary css files.
 *
 */
function copy_css_files($absolutePathToTmpDirStr, $cssTemplateStr = 'default') {
	global $offlineConf;

	log_msg(__LINE__, 'Copying css files ...');
	
	create_directory($absolutePathToTmpDirStr . $offlineConf['pathDelimiterStr'] . 'css', 0777);
	foreach (array('all.css', 'print.css', 'screen.css') as $currentCssFileStr) {
		$tmpSourceFilenameWithPathStr = $offlineConf['absolutePathToOfflinePluginDirStr'] . $offlineConf['pathDelimiterStr'] . 'ui' . $offlineConf['pathDelimiterStr'] . $cssTemplateStr . $offlineConf['pathDelimiterStr'] . $currentCssFileStr;
		$tmpTargetFilenameWithPathStr = $absolutePathToTmpDirStr . $offlineConf['pathDelimiterStr'] . 'css' . $offlineConf['pathDelimiterStr'] . $currentCssFileStr;
		log_msg(__LINE__, 'copying "' . $tmpSourceFilenameWithPathStr . '" to "' . $tmpTargetFilenameWithPathStr . '"');
		copy_file($tmpSourceFilenameWithPathStr, $tmpTargetFilenameWithPathStr);
	}	
}


/**
 * Creates a directory in the file system.
 *
 * The directory is created only if it does not exist already.
 * If the directory cannot be created, the program will be aborted.
 *
 * Subdirectories will be created when necessary.
 * 
 */
function create_directory($dirStr, $mode = 0777) {
	global $offlineConf;	
	
	$msgStr = 'Creating directory "' . $dirStr . '" ... ' . "\n";
	log_msg(__LINE__, $msgStr);
	
	if (!is_dir($dirStr)) {
		if (strstr(PHP_OS, 'WIN')) {
			// Windows file system:
			$singleDirectoriesArr = explode($offlineConf['pathDelimiterStr'] , $dirStr);
			array_shift($singleDirectoriesArr);// Throw away drive letter from array
			$currentDirStr = substr($dirStr, 0, 1) . ':';// Drive letter
		} else {
			// Unix like file system:
			$dirStr = ereg_replace('^\/', '', $dirStr);
			$singleDirectoriesArr = explode($offlineConf['pathDelimiterStr'] , $dirStr);
			$currentDirStr = '';
		}		

		for ($d = 0; $d < sizeof($singleDirectoriesArr); $d++) {
			$currentDirStr .= $offlineConf['pathDelimiterStr'] . $singleDirectoriesArr[$d];
			if (!is_dir($currentDirStr)) {
				$msgStr = '  Creating directory "' . $currentDirStr . '" ... ' . "\n";
				if ($offlineConf['offlineMode'] != 'dryrun') {
					if (mkdir($currentDirStr, $mode)) {
						$msgStr .= 'ok.';
						log_msg(__LINE__, compact('msgStr'));
					} else {             
						$msgStr .= 'ERROR: Could not create directory!' . "\n";
						$msgStr .= 'Program aborted.' . "\n\n";
						log_msg(__LINE__, compact('msgStr'));
						die;
					}
				}
			}
		}		
	} else {
		$msgStr .= '  already exists.';
		log_msg(__LINE__, $msgStr);
	}
}


/**
 * Copies a file.
 *
 */
function copy_file($sourceFilenameWithPathStr, $targetFilenameWithPathStr) {
	global $offlineConf;
	
	log_msg(__LINE__, 'Copying files ...' . "\n" . '  Source: ' . $sourceFilenameWithPathStr . "\n" . '  Target: ' . $targetFilenameWithPathStr);
    if ($offlineConf['offlineMode'] != 'dryrun') {
		check_existence($sourceFilenameWithPathStr, 'file');
		check_existence(dirname($targetFilenameWithPathStr), 'directory');
		if (!copy($sourceFilenameWithPathStr, $targetFilenameWithPathStr)) {
			log_msg(__LINE__, 'ERROR: Could not copy!');
		}
	}
}


/**
 * Delete a file from the file system.
 *
 */
function delete_file($filenameWithPathStr, $log = true) {
	global $offlineConf;
	
	if ($log) log_msg(__LINE__, 'Deleting "' . $filenameWithPathStr . '" ...');
	if (file_exists($filenameWithPathStr)) {
		if ($offlineConf['offlineMode'] != 'dryrun') {
			if (!unlink($filenameWithPathStr)) {
				log_msg(__LINE__, 'Could not delete "' . $filenameWithPathStr . '".');
			}
		}
	}
}


/**
 * Removes a directory from the file system.
 *
 */
function remove_directory($pathStr, $log = true) {
	global $offlineConf;
	
	if ($log) log_msg(__LINE__, 'Removing directory "' . $pathStr . '" ...');
	if (is_dir($pathStr)) {
		if ($offlineConf['offlineMode'] != 'dryrun') {
			if (!rmdir($pathStr)) {
				log_msg(__LINE__, 'Could not remove "' . $pathStr . '".');
			}
		}
	}
}


/**
 * Checks, whether a file or a directory in the file system exists or not.
 * If the file/directory exists, the program simply continues.
 * If there is no such file/directory, an error message will be written to the
 * log file (only if logging is enabled, i.e. 'writeLogFile' is set to 1).
 *
 */
function check_existence($locationStr, $typeStr) {
	log_msg(__LINE__, 'Checking whether ' . $typeStr . ' "' . $locationStr . '" exists ...');
	if ($typeStr == 'file') {
		if (file_exists($locationStr)) {
			log_msg(__LINE__, 'ok');
		} else {
			$msgStr .= 'ERROR: No such file.' . "\n";
			$msgStr .= 'Program aborted.' . "\n\n";
			log_msg(__LINE__, compact('msgStr'));
			die;
		}
	} else if ($typeStr == 'directory') {
		if (is_dir($locationStr)) {
			log_msg(__LINE__, 'ok');
		} else {
			$msgStr .= 'ERROR: No such directory.' . "\n";
			$msgStr .= 'Program aborted.' . "\n\n";
			log_msg(__LINE__, compact('msgStr'));
			die;
		}
	}
}


/**
 * Expects an absolute path to start from and traverses the whole directory.
 * All subdirectories and files are returned in a nested array.
 * 
 * Credits:
 * This routine is based on the function 'retrieveTree' which is explained in
 * the article 'Recursion In PHP: Tapping Unharnessed Power' by Robert Peake
 * published on November 18, 2004, on the website
 * http://devzone.zend.com/node/view/id/1235. Discovered: 12/20/2008.
 * Thank you, Robert!
 * 
 */
function delete_tmp_session_tree($pathStr)  {
	global $offlineConf;

	log_msg(__LINE__, 'Deleting old temporary session dir ...');
	if ($dir = @opendir($pathStr)) {
		while (($element = readdir($dir)) !== false) {
			if (is_dir($pathStr . $offlineConf['pathDelimiterStr'] . $element) && $element != "." && $element != "..") {
				$offlineConf['directoriesToDeleteArr'][] = $pathStr . $offlineConf['pathDelimiterStr'] . $element;
				$array[$element] = delete_tmp_session_tree($pathStr . $offlineConf['pathDelimiterStr'] . $element);
				remove_directory($pathStr . $offlineConf['pathDelimiterStr'] . $element);
				$countDirectoriesDeleted++;
			} elseif (($element != ".") && ($element != "..")) {
				delete_file($pathStr . $offlineConf['pathDelimiterStr'] . $element);
				$array[] = $pathStr . $offlineConf['pathDelimiterStr'] . $element;
				$countFilesDeleted++;
			}
		}
		closedir($dir);
	} else {
		log_msg(__LINE__, 'Nothing to do.');
	}
	
	return (isset($array) ? $array : false);
}


function delete_old_tmp_session_directory($absolutePathToTmpSessionDirStr) {
	global $offlineConf;
	
	if (is_dir($absolutePathToTmpSessionDirStr)) {
		delete_tmp_session_tree($absolutePathToTmpSessionDirStr);
	} else {
		// There is no temporary session directory left from a previous run
		// of the offline plugin:

		return;
	}
}


/**
 * Writes a string to a file specified by its absolute path in the file system
 * and its name and extension.
 *
 * An existing file will be overwritten!
 *
 */
function write_file($filenameWithPathStr, $fileContentsStr) {
	global $offlineConf;
	
	log_msg(__LINE__, 'Writing file "' . $filenameWithPathStr . '" ...');
	if (isset($fileContentsStr) && $fileContentsStr != '') {
		if ($offlineConf['offlineMode'] != 'dryrun') {
			$filehandle = fopen($filenameWithPathStr, 'w') or log_msg('File could not be opened for writing.');
				fwrite($filehandle, $fileContentsStr);
			fclose($filehandle) or die('File could not be closed');
		}
	} else {
		log_msg(__LINE__, 'There is nothing to write to nowhere.');
	}
}


/**
 * Creates an archive of the offline browseable pages in the temporary
 * directory.
 *
 */
function create_archive() {
	global $offlineConf;
	
	log_msg(__LINE__, 'Creating archive ...');
	
	if (($offlineConf['archiverPathToBinary'] != '') && ($offlineConf['archiverOptions'] != '')) {		
		log_msg(__LINE__, 'Changing working directory to "' . $offlineConf['absolutePathToTmpDirStr'] . '"');
		if (!chdir($offlineConf['absolutePathToTmpDirStr'])) {
			log_msg(__LINE__, 'Could not change directory to "' . $offlineConf['absolutePathToTmpDirStr'] . '".');
		}
		
		$commandStr = escapeshellcmd($offlineConf['archiverPathToBinary'] . ' ' . $offlineConf['archiverOptions']);
		$commandStr .= ' "' . dirname(__FILE__) . $offlineConf['pathDelimiterStr'] . 'offline.zip" "offline" >> ';
		$commandStr .= $offlineConf['logDirectory'] . $offlineConf['pathDelimiterStr'] . $offlineConf['logDefaultFileName'] . ' 2>&1';
		log_msg(__LINE__, $commandStr);
		if ($offlineConf['offlineMode'] != 'dryrun') system($commandStr);
	}
}


/**
 * Processes the directory in which pages are stored.
 * 
 * First, the page directory tree is traversed and all files and subdirectories
 * are stored in the global array $offlineConf['pageDirectoriesArr'].
 * In the second step this array is walked through and the according directory
 * structure is created in the temporary pages directory.
 * (Subdirectories are created by DokuWiki if wiki pages are arranged in name
 * spaces.)
 * Finally, each wiki page is downloaded and saved in the temp directory.
 * 
 */
function process_media_files() {
	global $offlineConf;
	
	log_msg(__LINE__, 'Processing media files ...');
	retrieve_media_tree($offlineConf['absolutePathToMediaDirStr']);
	log_msg(__LINE__, '--' . join("\n--", array_keys($offlineConf['mediaDirectoriesArr'])));
	
	foreach ($offlineConf['mediaDirectoriesArr'] as $currentDirStr => $count) {
		create_directory($offlineConf['absolutePathToTmpSessionDirStr'] . $offlineConf['pathDelimiterStr'] . $currentDirStr, 0777);
	}
	
	$currentSourceAndTargetArr = array();
	foreach ($offlineConf['mediaFilesSourceAndTargetArr'] as $currentSourceAndTargetArr) {
		if ($offlineConf['offlineMode'] != 'dryrun') copy_file($currentSourceAndTargetArr[0], $currentSourceAndTargetArr[1]);
	}
	unset($offlineConf['mediaFilesSourceAndTargetArr']);
}


/**
 * Expects an absolute path to start from and traverses the whole directory.
 * All subdirectories and files are returned in a nested array.
 * 
 * Credits:
 * This routine is based on the function 'retrieveTree' which is explained in
 * the article 'Recursion In PHP: Tapping Unharnessed Power' by Robert Peake
 * published on November 18, 2004, on the website
 * http://devzone.zend.com/node/view/id/1235. Discovered: 12/20/2008.
 * Thank you, Robert!
 * 
 */
function retrieve_media_tree($pathStr)  {
	global $offlineConf;

	if ($dir = @opendir($pathStr)) {
		while (($element = readdir($dir)) !== false) {
			if (is_dir($pathStr . $offlineConf['pathDelimiterStr'] . $element) && $element != "." && $element != "..") {
				$array[$element] = retrieve_media_tree($pathStr . $offlineConf['pathDelimiterStr'] . $element);
			} elseif (($element != ".") && ($element != "..")) {
				$array[] = $pathStr . $offlineConf['pathDelimiterStr'] . $element;
				$currentMediaSubDirStr = str_replace($offlineConf['absolutePathToDataDirStr'] . $offlineConf['pathDelimiterStr'], '', $pathStr);
				$tmpSourceFilenameWithPathStr = $pathStr . $offlineConf['pathDelimiterStr'] . $element;
				$tmpTargetFilenameWithPathStr = $offlineConf['absolutePathToTmpSessionDirStr'] . $offlineConf['pathDelimiterStr'] . $currentMediaSubDirStr . $offlineConf['pathDelimiterStr'] . $element;
				$offlineConf['mediaFilesSourceAndTargetArr'][] = array($tmpSourceFilenameWithPathStr, $tmpTargetFilenameWithPathStr);
				$offlineConf['mediaDirectoriesArr'][$currentMediaSubDirStr]++;
			}
		}
		closedir($dir);
	}
	
	return (isset($array) ? $array : false);
}


/**
 * Returns the head of a standard DokuWiki offline HTML page.
 *
 */
function assemble_html_head($relativePathStr) {
	$headStr = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="de"
 lang="de" dir="ltr">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DokuWiki offline version</title>
<!-- metadata -->
<meta name="generator" content="Offline" />
<meta name="version" content="Offline 0.1" />
<!-- style sheet links -->
<link rel="stylesheet" media="all" type="text/css" href="' . $relativePathStr . 'css/all.css" />
<link rel="stylesheet" media="screen" type="text/css" href="' . $relativePathStr . 'css/screen.css" />
<link rel="stylesheet" media="print" type="text/css" href="' . $relativePathStr . 'css/print.css" />

</head>
<body>
<div class="dokuwiki export">';

	return $headStr;
}


/**
 * Builds indices for easier navigation and writes them to file.
 *
 */
function process_indices() {
	global $offlineConf;
	
	log_msg(__LINE__, 'Creating index files ...');

	// Create index page to start browsing the offline version:
	create_index_page();
	
	$absolutePathToIndexDirStr = $offlineConf['absolutePathToTmpSessionDirStr'] . $offlineConf['pathDelimiterStr'] . 'index';
	create_directory($absolutePathToIndexDirStr, 0755);

	// Create alphabetical index:
	$indexAlphabeticalStr = build_alphabetical_index();
	write_file($absolutePathToIndexDirStr . $offlineConf['pathDelimiterStr'] . 'alphabetical.html', $indexAlphabeticalStr);
}


/**
 * Creates a file called 'index.html' within the temporary directory.
 * The index file contains a link to the start page off the offline wiki.
 *
 */
function create_index_page($nameOfWikiStartPageStr = 'start') {
	global $conf;
	global $offlineConf;
	
	log_msg(__LINE__, 'Creating index file ...');
	$pageStr = assemble_html_head('');
	$pageStr .= '
	<h1>' . $conf['title'] . ' - Offline Version</h1>
	<div class="level2">
		<p><a href="pages/' . $nameOfWikiStartPageStr . '.html" class="wikilink1" title="Start">Start</a></p>
		<p><a href="index/alphabetical.html" class="wikilink1" title="Start">Index (alphabetisch)</a></p>
	</div>
</div>
</body>
</html>
';

	write_file($offlineConf['absolutePathToTmpSessionDirStr'] . $offlineConf['pathDelimiterStr']  . 'index.html', $pageStr);
}


/**
 * Build alphabetical index.
 *
 */
function build_alphabetical_index() {
	global $offlineConf;
	
	$navigationLettersArr = array();
	$htmlHeadStr = assemble_html_head('../');
	$indexStr = '<div>';
	
	ksort($offlineConf['indexAlphabeticalArr']);
	$previousFirstChar = '';
	foreach($offlineConf['indexAlphabeticalArr'] as $pagenameStr => $relativePathToPageStr) {
		$currentFirstChar = substr($pagenameStr, 0, 1);
		if ($currentFirstChar != $previousFirstChar) {
			$indexStr .= '</div><a name="' . strtolower($currentFirstChar) . '"></a><h2>' . strtoupper($currentFirstChar) . '</h2><div class="level2">';
			$navigationLettersArr[strtolower($currentFirstChar)] = 1;
		}
		
		$indexStr .= '<a href="../' . $relativePathToPageStr . '" class="wikilink1">' . str_replace('.txt', '', $pagenameStr) . '</a><br />';
		$previousFirstChar = $currentFirstChar;
	}
	$indexStr .= '</div>';
	
	for ($c = 97; $c < 123; $c++) {
		$currentChar = chr($c);
		if ($navigationLettersArr[$currentChar] == 1) {
			$navigationBarStr .= '<a href="#' . $currentChar . '">' . strtoupper($currentChar) . '</a>&nbsp;';
		} else {
			$navigationBarStr .= strtoupper($currentChar) . '&nbsp;';
		}
	}
	$navigationBarStr = '<p>' . $navigationBarStr . '</p>';
	
	$linkToMainIndexStr = '<p><a href="../index.html" class="wikilink1" title="Back to main index">Back to main index</a></p>';
	unset($offlineConf['indexAlphabeticalArr']);

	return $htmlHeadStr . '<h1>Alphabetical Index</h1><div class="level2">' . $navigationBarStr . $linkToMainIndexStr . '</div>' . $indexStr . '<br /><br /><hr /><div class="level2">' . $linkToMainIndexStr . '</div>';
}


?>