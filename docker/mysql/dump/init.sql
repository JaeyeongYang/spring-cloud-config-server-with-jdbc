USE `configdb`;

CREATE TABLE IF NOT EXISTS `PROPERTIES`
(
    `APPLICATION` VARCHAR(50)   NOT NULL DEFAULT 'application',
    `PROFILE`     VARCHAR(50)   NOT NULL DEFAULT 'default',
    `LABEL`       VARCHAR(50)   NOT NULL DEFAULT 'master',
    `KEY`         VARCHAR(256)  NOT NULL,
    `VALUE`       VARCHAR(1024) NOT NULL
);

CREATE INDEX `IDX_PROPERTIES_01` ON `PROPERTIES` (`APPLICATION`, `PROFILE`, `LABEL`);

INSERT INTO `PROPERTIES` (APPLICATION, PROFILE, LABEL, `KEY`, VALUE)
VALUES ('foo', 'default', 'master', 'condition', 'foo-default-master'),
       ('foo', 'dev', 'master', 'condition', 'foo-dev-master'),
       ('foo', 'prod', 'master', 'condition', 'foo-prod-master'),
       ('bar', 'default', 'master', 'condition', 'bar-default-master'),
       ('bar', 'dev', 'master', 'condition', 'bar-dev-master'),
       ('bar', 'prod', 'master', 'condition', 'bar-prod-master');
