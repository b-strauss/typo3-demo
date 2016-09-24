CREATE TABLE tx_typo3demo_news_domain_model_item (
  PRIMARY KEY (uid),

  # default fields
  uid              INT(11)                 NOT NULL auto_increment,
  pid              INT(11) DEFAULT '0'     NOT NULL,
  created_at       INT(11) DEFAULT '0'     NOT NULL,
  created_by       INT(11) DEFAULT '0'     NOT NULL,
  modified_at      INT(11) DEFAULT '0'     NOT NULL,
  deleted          TINYINT(4) DEFAULT '0'  NOT NULL,
  hidden           TINYINT(4) DEFAULT '0'  NOT NULL,
  starttime        INT(11) DEFAULT '0'     NOT NULL,
  endtime          INT(11) DEFAULT '0'     NOT NULL,
  tt_content       INT(11)                          DEFAULT NULL,
  sorting          INT(11) DEFAULT '0'     NOT NULL,
  sys_language_uid INT(11) DEFAULT '0'     NOT NULL,
  l18n_parent      INT(11) DEFAULT '0'     NOT NULL,
  l18n_diffsource  mediumblob              NOT NULL,

  # custom fields
  title            VARCHAR(255) DEFAULT '' NOT NULL,
  text             text                    NOT NULL
#   image       text DEFAULT ''         NOT NULL,
#   link        text DEFAULT ''         NOT NULL
);