<?php

if (!defined('TYPO3_MODE'))
  die('Access denied.');

$newsItem = new \BStrauss\Engine\Tca\Builder(
    'tx_typo3demo_news_domain_model_item',
    'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item',
    'title'
);

$newsItem
    ->addInput(
        'title',
        'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item.title',
        'required,trim'
    )
    ->addText(
        'text',
        'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item.text',
        'required'
    )
    ->build();