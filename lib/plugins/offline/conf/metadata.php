<?php

$meta['template']             = array('dirchoice','_dir' => DOKU_INC.'lib/plugins/offline/ui/');
$meta['dokuwikiProtocol']     = array('multichoice','_choices' => array('http', 'https'));
$meta['dokuwikiHost']         = array('string');
$meta['dokuwikiRelativePath'] = array('string');
$meta['wgetPathToBinary']     = array('string');
$meta['wgetHttpUser']         = array('string');
$meta['wgetHttpPasswd']       = array('string');
$meta['archiverPathToBinary'] = array('string');
$meta['archiverOptions']      = array('string');
$meta['insertLinkBackToHome'] = array('onoff');
$meta['writeLogFile']         = array('onoff');



