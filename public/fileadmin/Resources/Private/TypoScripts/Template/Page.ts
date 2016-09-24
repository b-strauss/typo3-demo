# documentation: https://docs.typo3.org/typo3cms/TyposcriptReference/7.6/Setup/Page/
page = PAGE
page {
  shortcutIcon = fileadmin/Resources/Public/Images/favicon/favicon.ico

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

    # device config
    50 = TEXT
    50.value (
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
      <meta name="msapplication-tap-highlight" content="no">
      <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    )

    # browser version check: https://browser-update.org/
    60 = TEXT
    60.value (
      <script>
        var $buoop = {vs: {i: 10, f: -4, o: -4, s: 7, c: -4}, c: 4};
        function $buo_f() {
          var e = document.createElement("script");
          e.src = "//browser-update.org/update.min.js";
          document.body.appendChild(e);
        }
        try {
          document.addEventListener("DOMContentLoaded", $buo_f, false);
        } catch (e) {
          window.attachEvent("onload", $buo_f);
        }
      </script>
    )
  }

  #  includeCSS {
#    core = ./fileadmin/Resources/Public/StyleSheets/core.css
#    core.media = screen
#
#    layout = ./fileadmin/Resources/Public/StyleSheets/layout.css
#    layout.media = screen
#
#    extension = ./fileadmin/Resources/Public/StyleSheets/extension.css
#    extension.media = screen
#
#    rte = ./fileadmin/Resources/Public/StyleSheets/rte.css
#    rte.media = screen
#  }

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

#page.includeCSS {
#  swiper = ./fileadmin/Resources/Public/Javascript/third-party/swiper/swiper.min.css
#  swiper.media = all
#}
#
#page.includeJS {
#  10 = ./fileadmin/Resources/Public/Javascript/third-party/modernizr.js
#  11 = ./fileadmin/Resources/Public/Javascript/third-party/swiper/swiper.min.js
#  12 = ./fileadmin/Resources/Public/Javascript/third-party/picturefill/picturefill.min.js
#  13 = ./fileadmin/Resources/Public/Javascript/third-party/greensock/TweenMax.min.js
#  14 = ./fileadmin/Resources/Public/Javascript/third-party/greensock/plugins/ScrollToPlugin.min.js
#}

#page.includeJSFooterlibs {
#  10 = ./fileadmin/Resources/Public/Javascript/application-min.js
#}

#page.footerData {
#  10 = TEXT
#  10.value = <script type="text/javascript">ce.bootstrap();</script>
#}

[globalString = ENV:TYPO3_CONTEXT = Development]
#  page.includeCSS.swiper >
#  page.includeCSS {
#    swiper = ./fileadmin/Resources/Public/Javascript/third-party/swiper/swiper.css
#    swiper.media = all
#  }
#
#  page.includeJS >
#  page.includeJS {
#    10 = ./fileadmin/Resources/Public/Javascript/third-party/modernizr.js
#    11 = ./fileadmin/Resources/Public/Javascript/third-party/swiper/swiper.js
#    12 = ./fileadmin/Resources/Public/Javascript/third-party/picturefill/picturefill.js
#    13 = ./fileadmin/Resources/Public/Javascript/third-party/greensock/TweenMax.js
#    14 = ./fileadmin/Resources/Public/Javascript/third-party/greensock/plugins/ScrollToPlugin.js
#  }
#
#  page.includeJSFooterlibs >
#  page.includeJSFooterlibs {
#    10 = ./fileadmin/Resources/Public/Javascript/closure-library/closure/goog/base.js
#    20 = ./fileadmin/Resources/Public/Javascript/ce-deps.js
#  }
#
#  page.footerData >
#  page.footerData {
#    10 = TEXT
#    10.value = <script type="text/javascript">goog.require('ce.Application');</script>
#    20 = TEXT
#    20.value = <script type="text/javascript">ce.bootstrap();</script>
#  }
[global]