CREATE TABLE tx_typo3demo_news_domain_model_item (
  # Default fields
  uid         INT(10)          NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (uid),
  pid         INT(10)          NOT NULL,
  created_at  INT(10)          NOT NULL,
  created_by  INT(10)          NOT NULL,
  modified_at INT(10)          NOT NULL,
  deleted     TINYINT(3)       NOT NULL,
  sorting     INT(10)          NOT NULL DEFAULT 0,
  tt_content  INT(10)                   DEFAULT NULL,

  # Optional fields:
  #   hidden           TINYINT(3)       NOT NULL DEFAULT 0,
  #   starttime        INT(10)          NOT NULL DEFAULT 0,
  #   endtime          INT(10)          NOT NULL DEFAULT 0,

  # Localization fields:
  #   sys_language_uid INT(10)          NOT NULL DEFAULT 0,
  #   l18n_parent      INT(10)          NOT NULL DEFAULT 0,
  #   l18n_diffsource  MEDIUMBLOB       NOT NULL DEFAULT '',

  # custom fields
  title       VARCHAR(255)     NOT NULL DEFAULT '',
  text        TEXT             NOT NULL DEFAULT '',
  inverted    TINYINT(3)       NOT NULL DEFAULT 0,
  size        VARCHAR(255)     NOT NULL DEFAULT '',
  color       VARCHAR(255)     NOT NULL DEFAULT '',
  image       INT(10) UNSIGNED NOT NULL DEFAULT 0,
  newstime    DATETIME                  DEFAULT NULL
);