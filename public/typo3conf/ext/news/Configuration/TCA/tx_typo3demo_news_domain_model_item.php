<?php

if (!defined('TYPO3_MODE'))
  die('Access denied.');

$newsItem = new \BStrauss\Engine\Tca\Builder(
    'tx_typo3demo_news_domain_model_item',
    'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item',
    'title'
);

$newsItem
    ->addTab('Tab 1')
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
    ->addCheckbox(
        'inverted',
        'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item.inverted'
    )
    ->addTab('Tab 2')
    ->addRadioButtons(
        'size',
        'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item.size',
        [
            [
                'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item.size.small',
                's',
            ],
            [
                'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item.size.medium',
                'm',
            ],
            [
                'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item.size.large',
                'l',
            ],
        ]
    )
    ->addSelect(
        'color',
        'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item.color',
        [
            [
                'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item.color.red',
                'red',
            ],
            [
                'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item.color.green',
                'green',
            ],
            [
                'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item.color.blue',
                'blue',
            ],
        ]
    )
    ->addImage(
        'image',
        'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:tx_typo3demo_news_domain_model_item.image'
    );

return $newsItem->build();