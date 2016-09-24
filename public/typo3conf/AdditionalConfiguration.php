<?php

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

    switch ($_SERVER['SERVER_NAME']) {
      case 'typo3-demo.b-strauss.local':
        // openssl fix
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['binSetup'] = 'openssl="C:/OpenSSL-Win64/bin/openssl.exe"';

        // image processing
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['image_processing'] = '1';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['im'] = '1';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['im_path'] = 'C:/Program Files/ImageMagick-6.9.3-Q16/';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['im_path_lzw'] = 'C:/Program Files/ImageMagick-6.9.3-Q16/';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['im_version_5'] = 'im6';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['im_v5effects'] = '0';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['im_mask_temp_ext_gif'] = '1';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['colorspace'] = 'sRGB';

        // database options
        $GLOBALS['TYPO3_CONF_VARS']['DB']['host'] = 'localhost';
        $GLOBALS['TYPO3_CONF_VARS']['DB']['port'] = 3306;
        $GLOBALS['TYPO3_CONF_VARS']['DB']['database'] = 'typo3-demo-db';
        $GLOBALS['TYPO3_CONF_VARS']['DB']['username'] = 'typo3-user';
        $GLOBALS['TYPO3_CONF_VARS']['DB']['password'] = 'typo3-pw';
        break;

      case 'typo3-demo.nb160a.emp.nb':
        // openssl fix
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['binSetup'] = 'openssl="C:/MAMP/bin/apache/bin/openssl.exe"';

        // image processing
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['image_processing'] = '1';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['im'] = '1';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['im_path'] = 'C:/Program Files/ImageMagick-6.9.1-Q16/';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['im_path_lzw'] = 'C:/Program Files/ImageMagick-6.9.1-Q16/';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['im_version_5'] = 'im6';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['im_v5effects'] = '0';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['im_mask_temp_ext_gif'] = '1';
        $GLOBALS['TYPO3_CONF_VARS']['GFX']['colorspace'] = 'sRGB';

        // database options
        $GLOBALS['TYPO3_CONF_VARS']['DB']['host'] = 'localhost';
        $GLOBALS['TYPO3_CONF_VARS']['DB']['port'] = 3306;
        $GLOBALS['TYPO3_CONF_VARS']['DB']['database'] = 'typo3-demo-db';
        $GLOBALS['TYPO3_CONF_VARS']['DB']['username'] = 'typo3-user';
        $GLOBALS['TYPO3_CONF_VARS']['DB']['password'] = 'typo3-pw';
        break;
    }
    break;

  case 'Production/Staging':
    break;

  case 'Production':
    break;
}