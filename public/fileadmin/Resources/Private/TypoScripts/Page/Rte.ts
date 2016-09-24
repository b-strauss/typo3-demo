# documentation: https://docs.typo3.org/typo3cms/extensions/rtehtmlarea/7.6/Configuration/PageTsconfig/interfaceConfiguration/
RTE.default {
  showButtons = bold, italic, underline, orderedlist, unorderedlist, left, center, right, insertcharacter, link, undo, redo, chMode, removeformat, textstyle
  toolbarOrder = bold, italic, underline, bar, orderedlist, unorderedlist, bar, left, center, right, bar, textstyle, bar, insertcharacter, bar, link, bar, undo, redo, bar, chMode, bar, removeformat

  ignoreMainStyleOverride = 1
  useCSS = 1
  showTagFreeClasses = 1
  contentCSS = fileadmin/Resources/Public/StyleSheets/rte.css

  removeTags =

  proc {
    entryHTMLparser_db.removeTags = font, meta, o:p, sdfield, strike, style, title, h1
    dontConvBRtoParagraph = true
    overruleMode = ts_css,txdam_media
    allowedClasses = track-me
  }

  buttons {
    link.options.removeItems = file,mail,spec,folder
    link.properties.class.allowedClasses = track-me
    link.page.properties.class.default = track-me
    link.url.properties.class.default = track-me

    textstyle.tags.span.allowedClasses = track-me
  }
}