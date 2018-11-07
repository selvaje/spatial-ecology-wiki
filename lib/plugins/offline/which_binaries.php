<?php
/**
 * Offline Plugin: Helper progam that give information about installed standard
 * archivers and wget.
 *
 * @license    GPL 2 (http://www.gnu.org/licenses/gpl.html)
 * @author Carsten Graw <dokuwiki@graw.eu>
 */
	echo '<h1>Installed programs</h1>' . "\n";
	echo '<h2>Archivers</h2>' . "\n";
	echo '<p>The table below lists information about some standard archivers (aka \'packers\') on your system.</p>' . "\n";
	echo '<p>If a program is installed, the second column will list the path to this archiver. Just copy the value from the column <em>Path to archiver\'s binary</em> and insert in your DokuWiki\'s plugin configuration in the field <em>plugin &gt; offline &gt; archiverPathToBinary </em>.</p>' . "\n";
	echo '<p>If one of the programs is not available the information \'Not installed\' will be given. This means you cannot use this specific program to include all your wiki files in one single file for convenient download.</p>' . "\n";
	
	$outStr .= '<table border="1" cellspacing="0" cellpadding="2">' . "\n";
	$outStr .= '	<tr>' . "\n";
	$outStr .= '		<th>Program</th>' . "\n";
	$outStr .= '		<th>Path to binary</th>' . "\n";
	$outStr .= '	</tr>' . "\n";
	foreach(array('zip', 'unzip', 'bzip', 'gzip', 'rar', 'tar') as $packerNameStr) {
		unset($outputArr);
		exec('which ' . $packerNameStr, $outputArr);
		if (isset($outputArr[0])) {
			$packerPathStr = '<input type="text" id="' . $packerNameStr . '" value="' . $outputArr[0] . '" style="font-family: Courier,fixed; font-size: 0.9em; " />';
			$tdStyleStr = '';
		} else {
			$packerPathStr = 'Not installed.';
			$tdStyleStr = ' style="color: #AAAAAA; "';
		}

		$outStr .= '	<tr>' . "\n";
		$outStr .= '		<td style="width: 130px; ">' . $packerNameStr . '</td>' . "\n";
		$outStr .= '		<td' . $tdStyleStr . '>' . $packerPathStr . '</td>' . "\n";
		$outStr .= '	</tr>' . "\n";
		
		
	}
	$outStr .= '</table>' . "\n";


	$outStr .= '<h2>Wget</h2>' . "\n";
	$outStr .= '<p>(In some configurations the command \'which\' might not return a path though wget is installed.)</p>' . "\n";
	$outStr .= '<table border="1" cellspacing="0" cellpadding="2">' . "\n";
	$outStr .= '	<tr>' . "\n";
	$outStr .= '		<th>Program</th>' . "\n";
	$outStr .= '		<th>Path to binary</th>' . "\n";
	$outStr .= '	</tr>' . "\n";

	unset($outputArr);
	exec('which wget', $outputArr);
	if (isset($outputArr[0])) {
		$wgetPathStr = '<input type="text" id="wget" value="' . $outputArr[0] . '" style="font-family: Courier,fixed; font-size: 0.9em; " />';
		$tdStyleStr = '';
	} else {
		$wgetPathStr = 'Not installed.';
		$tdStyleStr = ' style="color: #AAAAAA; "';
	}

	$outStr .= '	<tr>' . "\n";
	$outStr .= '		<td style="width: 130px; ">wget</td>' . "\n";
	$outStr .= '		<td' . $tdStyleStr . '>' . $wgetPathStr . '</td>' . "\n";
	$outStr .= '	</tr>' . "\n";
	$outStr .= '</table>' . "\n";

	echo $outStr;
?>