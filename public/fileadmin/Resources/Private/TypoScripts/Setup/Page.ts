# documentation: https://docs.typo3.org/typo3cms/TyposcriptReference/7.6/Setup/Page/
page = PAGE
page {
  shortcutIcon = fileadmin/Resources/Public/Images/favicon.png

  bodyTagCObject = TEXT
  bodyTagCObject.field = uid
  bodyTagCObject.wrap = <body id="page-|">

  bodyTagCObject.append = TEXT
  bodyTagCObject.append.value (
  )

  headerData {
    # page title
    10 = TEXT
    10 {
      field = title
      wrap = <title>|</title>
    }

    # meta keywords
    20 = COA
    20 {
      1 = TEXT
      1 {
        if.isTrue.field = keywords
        field = keywords
        wrap = <meta name="keywords" content="|">
      }
    }

    # meta description
    30 = COA
    30 {
      1 = TEXT
      1 {
        if.isTrue.field = description
        field = description
        wrap = <meta name="description" content="|">
      }
    }

    # meta author
    40 = COA
    40 {
      1 = TEXT
      1 {
        if.isTrue.field = author
        field = author
        wrap = <meta name="author" content="|">
      }
    }

    # meta devices
    # favicon generator: http://realfavicongenerator.net/
    50 = TEXT
    50.value (
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
      <meta name="msapplication-tap-highlight" content="no">
      <style>
        @-ms-viewport {
          width: device-width;
        }
      </style>
      <link rel="apple-touch-icon" sizes="180x180" href="fileadmin/Resources/Public/Images/Favicon/apple-touch-icon.png">
      <link rel="icon" type="image/png" href="fileadmin/Resources/Public/Images/Favicon/favicon-32x32.png" sizes="32x32">
      <link rel="icon" type="image/png" href="fileadmin/Resources/Public/Images/Favicon/favicon-16x16.png" sizes="16x16">
      <link rel="manifest" href="fileadmin/Resources/Public/Images/Favicon/manifest.json">
      <link rel="mask-icon" href="fileadmin/Resources/Public/Images/Favicon/safari-pinned-tab.svg" color="#ff8700">
      <link rel="shortcut icon" href="fileadmin/Resources/Public/Images/Favicon/favicon.ico">
      <meta name="msapplication-config" content="fileadmin/Resources/Public/Images/Favicon/browserconfig.xml">
      <meta name="theme-color" content="#ff8700">
    )

    # polyfill.io: https://polyfill.io/
    60 = TEXT
    60.value (
      <script src="https://cdn.polyfill.io/v2/polyfill.min.js"></script>
    )

    # browser version check: https://browser-update.org/
    70 = TEXT
    70.value (
      <script>
        var $buoop = {vs: {i: 10, f: -4, o: -4, s: 8, c: -4}, c: 4};
        function $buo_f() {
          var el = document.createElement('script');
          el.src = 'https://browser-update.org/update.min.js';
          document.body.appendChild(el);
        }
        try {
          document.addEventListener('DOMContentLoaded', $buo_f, false);
        } catch (e) {
          window.attachEvent('onload', $buo_f);
        }
      </script>
    )

    # css
    80 = TEXT
    80.value (
      <link rel="stylesheet" media="screen" href="fileadmin/Resources/Public/JavaScripts/node_modules/swiper/dist/css/swiper.min.css">
      <link rel="stylesheet" media="screen" href="fileadmin/Resources/Public/StyleSheets/app.css">
    )

    # js
    90 = TEXT
    90.value (
      <script src="fileadmin/Resources/Public/JavaScripts/node_modules/systemjs/dist/system.js" defer></script>
      <script src="fileadmin/Resources/Public/JavaScripts/app.min.js" defer></script>
    )
  }

  # documentation: https://docs.typo3.org/typo3cms/TyposcriptReference/7.6/ContentObjects/Fluidtemplate/
  10 = FLUIDTEMPLATE
  10 {
    templateRootPath = fileadmin/Resources/Private/Templates
    layoutRootPath = fileadmin/Resources/Private/Layouts
    partialRootPath = fileadmin/Resources/Private/Partials

    file.stdWrap.cObject = CASE
    file.stdWrap.cObject {
      key.data = levelfield:-1, backend_layout_next_level, slide
      key.override.field = backend_layout

      1 = TEXT
      1.value = fileadmin/Resources/Private/Templates/Default.html
    }

    variables {
      contentMain < styles.content.get
      contentMain {
        select.where = colPos = 0
        slide = -1
      }
    }
  }
}

# only load uncompiled if get param prod=0 or not present
[globalString = ENV:TYPO3_CONTEXT = Development] && [globalVar = GP:prod = 0, GP:prod =]
  page {
    headerData {
      # css
      80 >
      80 = TEXT
      80.value (
        <link rel="stylesheet" media="screen" href="fileadmin/Resources/Public/JavaScripts/node_modules/swiper/dist/css/swiper.css">
        <link rel="stylesheet" media="screen" href="fileadmin/Resources/Public/StyleSheets/app.css">
      )

      # js
      90 >
      90 = TEXT
      90.value (
        <script src="fileadmin/Resources/Public/JavaScripts/node_modules/systemjs/dist/system.js"></script>
      )
    }

    footerData {
      # closure uncompiled js
      10 >
      10 = TEXT
      10.value (
        <script src="fileadmin/Resources/Public/JavaScripts/node_modules/google-closure-library/closure/goog/base.js"></script>
        <script src="fileadmin/Resources/Public/JavaScripts/app-deps.js"></script>
        <script>
          goog.require('t3demo.App');
        </script>
      )
    }
  }
[global]