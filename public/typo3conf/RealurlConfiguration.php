<?php
// documentation: https://github.com/dmitryd/typo3-realurl/wiki
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['realurl'] = [
    '_DEFAULT' => [
        'init' => [
            'emptyUrlReturnValue' => '/',
        ],
        'fileName' => [
            'defaultToHTMLsuffixOnPrev' => true,
        ],
        'pagePath' => [
            'rootpage_id' => 1,
        ],
        'preVars' => [
            [
                'GETvar' => 'L',
                'valueMap' => [
                    'de' => 0,  // German, default locale
                    'en' => 1,  // English
                ],
                'noMatch' => 'bypass',
            ],
        ],
        'postVarSets' => [
            '_DEFAULT' => [],
        ],
    ],
];