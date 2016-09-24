<?php

if (!defined('TYPO3_MODE'))
  die('Access denied.');

$article = new \BStrauss\Engine\Plugin\PluginUtility(
    'BStrauss\Typo3Demo',
    $_EXTKEY,
    'Article',
    \BStrauss\Engine\Utils\LocalizationUtility::translateBackend('plugin_title', $_EXTKEY),
    \BStrauss\Engine\Utils\LocalizationUtility::translateBackend('plugin_description', $_EXTKEY)
);

$article->addBackendConfiguration(true, [
    'columnsOverrides' => [
        'bodytext' => [
            'defaultExtras' => 'richtext[]',
        ],
    ],
]);

$article->registerBackendPreviewRenderer(\BStrauss\Typo3Demo\News\Backend\ArticlePreviewRenderer::class);

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::allowTableOnStandardPages('tx_typo3demo_news_domain_model_item');