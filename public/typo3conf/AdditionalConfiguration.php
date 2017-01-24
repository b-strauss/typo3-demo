<?php

$GLOBALS['TYPO3_CONF_VARS']['BE']['compressionLevel'] = 9;
$GLOBALS['TYPO3_CONF_VARS']['FE']['compressionLevel'] = 9;

$GLOBALS['TYPO3_CONF_VARS']['FE']['versionNumberInFilename'] = '';

switch (getenv('TYPO3_CONTEXT')) {
  case 'Development':
    // debug options
    ini_set('xdebug.max_nesting_level', 400);
    $GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = true;
    $GLOBALS['TYPO3_CONF_VARS']['BE']['warning_email_addr'] = '';
    $GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = true;
    $GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '*';
    $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 1;
    $GLOBALS['TYPO3_CONF_VARS']['SYS']['sqlDebug'] = 1;
    $GLOBALS['TYPO3_CONF_VARS']['SYS']['systemLogLevel'] = 0;
    $GLOBALS['TYPO3_CONF_VARS']['SYS']['clearCacheSystem'] = true;
    $GLOBALS['TYPO3_CONF_VARS']['SYS']['exceptionalErrors'] = 28674;

    // install tool password
    $GLOBALS['TYPO3_CONF_VARS']['BE']['installToolPassword'] = md5('install');

    // database options
    $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['host'] = 'localhost';
    $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['port'] = 3306;
    $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['dbname'] = 'typo3-demo-db';
    $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['user'] = 'typo3-user';
    $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['password'] = 'typo3-pw';

    switch ($_SERVER['HTTP_HOST']) {
      case 'typo3-demo.b-strauss.local':
        // openssl fix
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['binSetup'] = 'openssl="C:/OpenSSL-Win64/bin/openssl.exe"';

        // image processing
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['processor'] = 'GraphicsMagick';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_path'] = 'C:/Program Files/GraphicsMagick-1.3.25-Q16/';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_path_lzw'] = 'C:/Program Files/GraphicsMagick-1.3.25-Q16/';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_colorspace'] = 'RGB';
        break;

      case 'typo3-demo.nb160a.emp.nb':
        // openssl fix
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['binSetup'] = 'openssl="C:/MAMP/bin/apache/bin/openssl.exe"';

        // image processing
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['processor'] = 'GraphicsMagick';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_path'] = 'C:/Program Files/GraphicsMagick-1.3.23-Q16/';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_path_lzw'] = 'C:/Program Files/GraphicsMagick-1.3.23-Q16/';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_colorspace'] = 'RGB';
        break;
    }
    break;

  case 'Production/Staging':
    break;

  case 'Production':
    break;
}