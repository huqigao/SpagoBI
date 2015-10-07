alter table SBI_ORG_UNIT modify column NAME varchar(200);

CREATE TABLE SBI_GOAL (
  GOAL_ID       INTEGER NOT NULL AUTO_INCREMENT,
  GRANT_ID      INTEGER NOT NULL,
  START_DATE    DATE NOT NULL,
  END_DATE      DATE NOT NULL,
  NAME          VARCHAR(20) NOT NULL,
  LABEL          VARCHAR(20),
  DESCRIPTION		VARCHAR(1000),
  PRIMARY KEY (GOAL_ID)
);


CREATE TABLE SBI_GOAL_HIERARCHY (
  GOAL_HIERARCHY_ID INTEGER NOT NULL AUTO_INCREMENT,
  ORG_UNIT_ID       INTEGER NOT NULL,
  GOAL_ID           INTEGER NOT NULL,
  PARENT_ID         INTEGER,
  NAME              VARCHAR(50) NOT NULL,
  LABEL             VARCHAR(50),
  GOAL              VARCHAR(1000) ,
  PRIMARY KEY (GOAL_HIERARCHY_ID)
);


CREATE TABLE SBI_GOAL_KPI (
  GOAL_KPI_ID         INTEGER NOT NULL AUTO_INCREMENT,
  KPI_INSTANCE_ID     INTEGER NOT NULL,
  GOAL_HIERARCHY_ID   INTEGER NOT NULL,
  WEIGHT1             DOUBLE,
  WEIGHT2             DOUBLE,
  THRESHOLD1          DOUBLE,
  THRESHOLD2          DOUBLE,
  THRESHOLD1SIGN      INTEGER,
  THRESHOLD2SIGN      INTEGER,
  PRIMARY KEY (GOAL_KPI_ID)
);

ALTER TABLE SBI_GOAL_KPI ENGINE = InnoDB;
ALTER TABLE SBI_GOAL_HIERARCHY ENGINE = InnoDB;
ALTER TABLE SBI_GOAL ENGINE = InnoDB;

ALTER TABLE SBI_GOAL ADD CONSTRAINT FK_GRANT_ID_GRANT  FOREIGN KEY FK_GRANT_ID_GRANT (GRANT_ID) REFERENCES SBI_ORG_UNIT_GRANT (ID) ON DELETE CASCADE ON UPDATE RESTRICT;
                 
ALTER TABLE SBI_GOAL_HIERARCHY ADD CONSTRAINT FK_SBI_GOAL_HIERARCHY_GOAL  FOREIGN KEY FK_SBI_GOAL_HIERARCHY_GOAL (GOAL_ID) REFERENCES SBI_GOAL (GOAL_ID) ON DELETE CASCADE ON UPDATE RESTRICT;
ALTER TABLE SBI_GOAL_HIERARCHY ADD CONSTRAINT FK_SBI_GOAL_HIERARCHY_PARENT  FOREIGN KEY FK_SBI_GOAL_HIERARCHY_PARENT (PARENT_ID) REFERENCES SBI_GOAL_HIERARCHY (GOAL_HIERARCHY_ID) ON DELETE CASCADE ON UPDATE RESTRICT;
 
ALTER TABLE SBI_GOAL_KPI ADD CONSTRAINT FK_SBI_GOAL_KPI_GOAL  FOREIGN KEY FK_SBI_GOAL_KPI_GOAL (GOAL_HIERARCHY_ID) REFERENCES SBI_GOAL_HIERARCHY (GOAL_HIERARCHY_ID)  ON DELETE CASCADE ON UPDATE RESTRICT;
ALTER TABLE SBI_GOAL_KPI ADD CONSTRAINT FK_SBI_GOAL_KPI_KPI  FOREIGN KEY FK_SBI_GOAL_KPI_KPI (KPI_INSTANCE_ID) REFERENCES SBI_KPI_MODEL_INST (KPI_MODEL_INST) ON DELETE CASCADE ON UPDATE RESTRICT;
      
