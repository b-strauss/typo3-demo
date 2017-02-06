# documentation: https://docs.typo3.org/typo3cms/TyposcriptReference/Setup/Config/
config {
  admPanel = 0
  admPanel.enable.preview = 0
  admPanel.hide = 0
  baseURL = {$config.baseURL}
  compressJs = 1
  compressCss = 1
  disableImgBorderAttr = 1
  disablePrefixComment = 1
  extTarget = _blank
  index_enable = 1
  index_externals = 0
  index_metatags = 0
  linkVars = L
  no_cache = 0
  noPageTitle = 2
  removeDefaultCss = 1
  removeDefaultJS = 1
  uniqueLinkVars = 1

  tx_realurl_enable = 1
}

# documentation: https://docs.typo3.org/typo3cms/FrontendLocalizationGuide/DefaultLanguageFlag/Index.html
mod.SHARED {
  defaultLanguageFlag = de
  defaultLanguageLabel = German
}

# available locales are stored at the rootpage
# (the topmost page, not a page with checkbox rootpage)
# in the typo3 backend list view
#
# the default locale has a sys_language_uid of 0

# see: docs/typo3_page_localization.md

# default locale config
config {
#  defaultGetVars.L = 0
  language = de
  htmlTag_langKey = de
  locale_all = de_DE
}

[globalVar = GP:L=1]
  # English
  config {
    sys_language_uid = 1
    language = en
    htmlTag_langKey = en
    locale_all = en_GB
  }
[global]