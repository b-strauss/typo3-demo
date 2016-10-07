CREATE TABLE tx_typo3demo_news_domain_model_item (
  PRIMARY KEY (uid),

  # default fields
  uid              INT(11)          NOT NULL auto_increment,
  pid              INT(11)          NOT NULL DEFAULT '0',
  created_at       INT(11)          NOT NULL DEFAULT '0',
  created_by       INT(11)          NOT NULL DEFAULT '0',
  modified_at      INT(11)          NOT NULL DEFAULT '0',
  deleted          TINYINT(4)       NOT NULL DEFAULT '0',
  hidden           TINYINT(4)       NOT NULL DEFAULT '0',
  starttime        INT(11)          NOT NULL DEFAULT '0',
  endtime          INT(11)          NOT NULL DEFAULT '0',
  tt_content       INT(11)                   DEFAULT NULL,
  sorting          INT(11)          NOT NULL DEFAULT '0',
  sys_language_uid INT(11)          NOT NULL DEFAULT '0',
  l18n_parent      INT(11)          NOT NULL DEFAULT '0',
  l18n_diffsource  mediumblob       NOT NULL,

  # custom fields
  title            VARCHAR(255)     NOT NULL DEFAULT '',
  text             text             NOT NULL,
  image            INT(11) unsigned NOT NULL DEFAULT '0',
  inverted         TINYINT(4)       NOT NULL DEFAULT '0'
#   link        text DEFAULT ''         NOT NULL
);