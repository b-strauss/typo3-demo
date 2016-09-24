<?php
/**
 * See {@link https://docs.typo3.org/typo3cms/CoreApiReference/ExtensionArchitecture/DeclarationFile/Index.html}
 * for a full documentation.
 */

$EM_CONF[$_EXTKEY] = [
    'title' => 'News',
    'description' => '',
    'category' => 'plugin',
    'constraints' => [
        'depends' => [
            'engine' => '0.1.0',
        ],
        'conflicts' => [],
        'suggests' => [],
    ],
    'state' => 'experimental',
    'uploadfolder' => false,
    'createDirs' => '',
    'clearCacheOnLoad' => true,
    'author' => 'Benjamin Strauß',
    'author_email' => '',
    'author_company' => '',
    'version' => '0.1.0',
];