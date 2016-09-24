<?php

if (!defined('TYPO3_MODE'))
  die('Access denied.');

\BStrauss\Engine\Plugin\PluginUtility::configurePlugin(
    'BStrauss\Typo3Demo',
    $_EXTKEY,
    'Article',
    [
        'Article' => 'index',
    ],
    [
        'Article' => '',
    ]
);

\BStrauss\Engine\Plugin\PluginUtility::includeTypoScriptConstants($_EXTKEY);
\BStrauss\Engine\Plugin\PluginUtility::includeTypoScriptSetup($_EXTKEY);