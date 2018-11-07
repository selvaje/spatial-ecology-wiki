<?php
/**
 * Write string to log file and/or print it to screen.
 *
 * Example:
 * log_msg(__LINE__, compact(''));
 * 
 */
function log_msg($lineNumber, $data) {
    global $offlineConf;
    
    if (($offlineConf['logWriteToFile']) || ($offlineConf['logPrintToScreen'])) {
        // Assemble output-string:
        $dateStr = date('Y-m-d');
        $timeStr = date('H:i:s');
        $outputStr = "$timeStr L$lineNumber\n";
        if (gettype($data) == 'array') {
            foreach ($data as $key=>$element)  {
             $outputStr .= sprintf("%-20s", $key) . $element . "\n";
            }
        } else {
            // $data contains just a string (i.e. no array-elements)
            $outputStr .=  $data . "\n\n";
        }

        // Print out the string $outputStr or write it to file
        if ($offlineConf['logPrintToScreen']) {
            // Print to screen:
            echo $outputStr;
        }

        if ($offlineConf['logWriteToFile']) {
			if ($offlineConf['offlineMode'] != 'dryrun') {
				// Write to file:
				$fileNameWithPathStr = $offlineConf['logDirectory'] . '/' . $offlineConf['logDefaultFileName'];
				$filehandle = fopen($fileNameWithPathStr, 'a+');
					fputs($filehandle, $outputStr);
				fclose($filehandle);
			}
        }
    }
}


?>