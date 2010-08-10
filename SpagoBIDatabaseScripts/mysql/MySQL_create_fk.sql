CREATE INDEX XIF3SBI_CHECKS ON SBI_CHECKS
(
       VALUE_TYPE_ID                  ASC
);

CREATE INDEX XIF1SBI_EXT_ROLES ON SBI_EXT_ROLES
(
       ROLE_TYPE_ID                   ASC
);

CREATE INDEX XIF1SBI_FUNC_ROLE ON SBI_FUNC_ROLE
(
       ROLE_ID                        ASC
);

CREATE INDEX XIF2SBI_FUNC_ROLE ON SBI_FUNC_ROLE
(
       FUNCT_ID                       ASC
);

CREATE INDEX XIF4SBI_FUNC_ROLE ON SBI_FUNC_ROLE
(
       STATE_ID                       ASC
);

CREATE INDEX XIF1SBI_FUNCTIONS ON SBI_FUNCTIONS
(
       FUNCT_TYPE_ID                  ASC
);

CREATE INDEX XIF2SBI_FUNCTIONS ON SBI_FUNCTIONS
(
       PARENT_FUNCT_ID                ASC
);

CREATE INDEX XIF3SBI_LOV ON SBI_LOV
(
       INPUT_TYPE_ID                  ASC
);

CREATE INDEX XIF1SBI_OBJ_FUNC ON SBI_OBJ_FUNC
(
       BIOBJ_ID                       ASC
);

CREATE INDEX XIF2SBI_OBJ_FUNC ON SBI_OBJ_FUNC
(
       FUNCT_ID                       ASC
);

CREATE INDEX XIF1SBI_OBJ_PAR ON SBI_OBJ_PAR
(
       PAR_ID                         ASC
);

CREATE INDEX XIF2SBI_OBJ_PAR ON SBI_OBJ_PAR
(
       BIOBJ_ID                       ASC
);

CREATE INDEX XIF3SBI_OBJ_STATE ON SBI_OBJ_STATE
(
       BIOBJ_ID                       ASC
);

CREATE INDEX XIF4SBI_OBJ_STATE ON SBI_OBJ_STATE
(
       STATE_ID                       ASC
);

CREATE INDEX XIF2SBI_OBJECTS ON SBI_OBJECTS
(
       STATE_ID                       ASC
);

CREATE INDEX XIF4SBI_OBJECTS ON SBI_OBJECTS
(
       BIOBJ_TYPE_ID                  ASC
);

CREATE INDEX XIF5SBI_OBJECTS ON SBI_OBJECTS
(
       EXEC_MODE_ID                   ASC
);

CREATE INDEX XIF6SBI_OBJECTS ON SBI_OBJECTS
(
       STATE_CONS_ID                  ASC
);

CREATE INDEX XIF1SBI_PARAMETERS ON SBI_PARAMETERS
(
       PAR_TYPE_ID                    ASC
);

CREATE INDEX XIF1SBI_PARUSE ON SBI_PARUSE
(
       PAR_ID                         ASC
);

CREATE INDEX XIF2SBI_PARUSE ON SBI_PARUSE
(
       LOV_ID                         ASC
);

CREATE INDEX XIF1SBI_PARUSE_CK ON SBI_PARUSE_CK
(
       USE_ID                         ASC
);

CREATE INDEX XIF2SBI_PARUSE_CK ON SBI_PARUSE_CK
(
       CHECK_ID                       ASC
);

CREATE INDEX XIF2SBI_PARUSE_DET ON SBI_PARUSE_DET
(
       EXT_ROLE_ID                    ASC
);

CREATE INDEX XIF3SBI_PARUSE_DET ON SBI_PARUSE_DET
(
       USE_ID                         ASC
);

CREATE UNIQUE INDEX XAK1SBI_SBI_DIST_LIST ON SBI_DIST_LIST
(
       DL_ID						ASC
);

CREATE UNIQUE INDEX XAK1SBI_DIST_LIST_USER ON SBI_DIST_LIST_USER
(
       DLU_ID						ASC
);

CREATE UNIQUE INDEX XAK1SBI_DIST_LIST_OBJECTS ON SBI_DIST_LIST_OBJECTS
(
       REL_ID						ASC
);

CREATE UNIQUE INDEX XAK2SBI_KPI_MODEL_INST ON SBI_KPI_MODEL_INST
(
       LABEL						ASC
);

CREATE UNIQUE INDEX XAK1SBI_CONFIG ON SBI_CONFIG
(
       LABEL                          ASC
);

CREATE INDEX XIF3SBI_CONFIG ON SBI_CONFIG
(
       VALUE_TYPE_ID                  ASC
);

CREATE UNIQUE INDEX XAK1SBI_USER ON SBI_USER
(
       USER_ID                          ASC
);

ALTER TABLE SBI_CHECKS ADD CONSTRAINT FK_sbi_checks_1 FOREIGN KEY FK_sbi_checks_1 ( VALUE_TYPE_ID ) REFERENCES SBI_DOMAINS ( VALUE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_EXT_ROLES ADD CONSTRAINT FK_sbi_ext_roles_1 FOREIGN KEY FK_sbi_ext_roles_1 ( ROLE_TYPE_ID ) REFERENCES SBI_DOMAINS ( VALUE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_FUNC_ROLE ADD CONSTRAINT FK_sbi_func_role_3 FOREIGN KEY FK_sbi_func_role_3 ( FUNCT_ID ) REFERENCES SBI_FUNCTIONS ( FUNCT_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_FUNC_ROLE ADD CONSTRAINT FK_sbi_func_role_1 FOREIGN KEY FK_sbi_func_role_1 ( ROLE_ID ) REFERENCES SBI_EXT_ROLES ( EXT_ROLE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_FUNC_ROLE ADD CONSTRAINT FK_sbi_func_role_2 FOREIGN KEY FK_sbi_func_role_2 ( STATE_ID ) REFERENCES SBI_DOMAINS ( VALUE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_FUNCTIONS ADD CONSTRAINT FK_sbi_functions_1 FOREIGN KEY FK_sbi_functions_1 ( FUNCT_TYPE_ID ) REFERENCES SBI_DOMAINS ( VALUE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_FUNCTIONS ADD CONSTRAINT FK_sbi_functions_2 FOREIGN KEY FK_sbi_functions_2 ( PARENT_FUNCT_ID ) REFERENCES SBI_FUNCTIONS ( FUNCT_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_LOV ADD CONSTRAINT FK_sbi_lov_1 FOREIGN KEY FK_sbi_lov_1 ( INPUT_TYPE_ID ) REFERENCES SBI_DOMAINS ( VALUE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_FUNC ADD CONSTRAINT FK_sbi_obj_func_2 FOREIGN KEY FK_sbi_obj_func_2 ( BIOBJ_ID ) REFERENCES SBI_OBJECTS ( BIOBJ_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_FUNC ADD CONSTRAINT FK_sbi_obj_func_1 FOREIGN KEY FK_sbi_obj_func_1 ( FUNCT_ID ) REFERENCES SBI_FUNCTIONS ( FUNCT_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_PAR ADD CONSTRAINT FK_sbi_obj_par_1 FOREIGN KEY FK_sbi_obj_par_1 ( BIOBJ_ID ) REFERENCES SBI_OBJECTS ( BIOBJ_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_PAR ADD CONSTRAINT FK_sbi_obj_par_2 FOREIGN KEY FK_sbi_obj_par_2 ( PAR_ID ) REFERENCES SBI_PARAMETERS ( PAR_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_STATE ADD CONSTRAINT FK_sbi_obj_state_1 FOREIGN KEY FK_sbi_obj_state_1 ( BIOBJ_ID ) REFERENCES SBI_OBJECTS ( BIOBJ_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_STATE ADD CONSTRAINT FK_sbi_obj_state_2 FOREIGN KEY FK_sbi_obj_state_2 ( STATE_ID ) REFERENCES SBI_DOMAINS ( VALUE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJECTS ADD CONSTRAINT FK_sbi_objects_2 FOREIGN KEY FK_sbi_objects_2 ( STATE_ID ) REFERENCES SBI_DOMAINS ( VALUE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJECTS ADD CONSTRAINT FK_sbi_objects_3 FOREIGN KEY FK_sbi_objects_3 ( BIOBJ_TYPE_ID ) REFERENCES SBI_DOMAINS ( VALUE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJECTS ADD CONSTRAINT FK_sbi_objects_5 FOREIGN KEY FK_sbi_objects_5 ( ENGINE_ID ) REFERENCES SBI_ENGINES ( ENGINE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJECTS ADD CONSTRAINT FK_sbi_objects_4 FOREIGN KEY FK_sbi_objects_4 ( EXEC_MODE_ID ) REFERENCES SBI_DOMAINS ( VALUE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJECTS ADD CONSTRAINT FK_sbi_objects_1 FOREIGN KEY FK_sbi_objects_1 ( STATE_CONS_ID ) REFERENCES SBI_DOMAINS ( VALUE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJECTS ADD CONSTRAINT FK_sbi_objects_6 FOREIGN KEY FK_sbi_objects_6 ( DATA_SOURCE_ID ) REFERENCES SBI_DATA_SOURCE ( DS_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJECTS_RATING ADD CONSTRAINT FK_sbi_objects_rating_1 FOREIGN KEY FK_sbi_objects_rating_1 (OBJ_ID) REFERENCES SBI_OBJECTS (BIOBJ_ID)ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE SBI_PARAMETERS ADD CONSTRAINT FK_sbi_parameters_1 FOREIGN KEY FK_sbi_parameters_1 ( PAR_TYPE_ID ) REFERENCES SBI_DOMAINS ( VALUE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_PARUSE ADD CONSTRAINT FK_sbi_paruse_1 FOREIGN KEY FK_sbi_paruse_1 ( PAR_ID ) REFERENCES SBI_PARAMETERS ( PAR_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_PARUSE ADD CONSTRAINT FK_sbi_paruse_2 FOREIGN KEY FK_sbi_paruse_2 ( LOV_ID ) REFERENCES SBI_LOV ( LOV_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_PARUSE_CK ADD CONSTRAINT FK_sbi_paruse_ck_1 FOREIGN KEY FK_sbi_paruse_ck_1 ( USE_ID ) REFERENCES SBI_PARUSE ( USE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_PARUSE_CK ADD CONSTRAINT FK_sbi_paruse_ck_2 FOREIGN KEY FK_sbi_paruse_ck_2 ( CHECK_ID ) REFERENCES SBI_CHECKS ( CHECK_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_PARUSE_DET ADD CONSTRAINT FK_sbi_paruse_det_1 FOREIGN KEY FK_sbi_paruse_det_1 ( USE_ID ) REFERENCES SBI_PARUSE ( USE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_PARUSE_DET ADD CONSTRAINT FK_sbi_paruse_det_2 FOREIGN KEY FK_sbi_paruse_det_2 ( EXT_ROLE_ID ) REFERENCES SBI_EXT_ROLES ( EXT_ROLE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_PARUSE ADD CONSTRAINT FK_sbi_obj_paruse_1 FOREIGN KEY FK_sbi_obj_paruse_1 ( OBJ_PAR_ID ) REFERENCES SBI_OBJ_PAR ( OBJ_PAR_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_PARUSE ADD CONSTRAINT FK_sbi_obj_paruse_2 FOREIGN KEY FK_sbi_obj_paruse_2 ( USE_ID ) REFERENCES SBI_PARUSE ( USE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_PARUSE ADD CONSTRAINT FK_sbi_obj_paruse_3 FOREIGN KEY FK_sbi_obj_paruse_3 ( OBJ_PAR_FATHER_ID ) REFERENCES SBI_OBJ_PAR ( OBJ_PAR_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_ENGINES ADD CONSTRAINT FK_sbi_engines_1 FOREIGN KEY FK_sbi_engines_1 ( BIOBJ_TYPE ) REFERENCES SBI_DOMAINS ( VALUE_ID );
ALTER TABLE SBI_ENGINES ADD CONSTRAINT FK_sbi_engines_2 FOREIGN KEY FK_sbi_engines_2 ( ENGINE_TYPE ) REFERENCES SBI_DOMAINS ( VALUE_ID );
ALTER TABLE SBI_ENGINES ADD CONSTRAINT FK_SBI_ENGINE_3 FOREIGN KEY FK_sbi_engines_3 (DEFAULT_DS_ID) REFERENCES SBI_DATA_SOURCE(DS_ID);
ALTER TABLE SBI_EVENTS_ROLES ADD CONSTRAINT FK_sbi_events_roles_1 FOREIGN KEY FK_sbi_events_roles_1 ( ROLE_ID ) REFERENCES SBI_EXT_ROLES ( EXT_ROLE_ID );
ALTER TABLE SBI_EVENTS_ROLES ADD CONSTRAINT FK_sbi_events_roles_2 FOREIGN KEY FK_sbi_events_roles_2 ( EVENT_ID ) REFERENCES SBI_EVENTS_LOG ( ID );
ALTER TABLE SBI_SUBREPORTS ADD CONSTRAINT FK_sbi_subreports_1 FOREIGN KEY FK_sbi_subreports_1 ( MASTER_RPT_ID ) REFERENCES SBI_OBJECTS ( BIOBJ_ID );
ALTER TABLE SBI_SUBREPORTS ADD CONSTRAINT FK_sbi_subreports_2 FOREIGN KEY FK_sbi_subreports_2 ( SUB_RPT_ID ) REFERENCES SBI_OBJECTS ( BIOBJ_ID );
ALTER TABLE SBI_AUDIT ADD CONSTRAINT FK_sbi_audit_1 FOREIGN KEY FK_sbi_audit_1 (DOC_REF) REFERENCES SBI_OBJECTS ( BIOBJ_ID ) ON DELETE SET NULL ;
ALTER TABLE SBI_AUDIT ADD CONSTRAINT FK_sbi_audit_2 FOREIGN KEY FK_sbi_audit_2 (ENGINE_REF) REFERENCES SBI_ENGINES (ENGINE_ID) ON DELETE SET NULL ;
ALTER TABLE SBI_AUDIT ADD CONSTRAINT FK_sbi_audit_3 FOREIGN KEY FK_sbi_audit_3 (SUBOBJ_REF) REFERENCES SBI_SUBOBJECTS ( SUBOBJ_ID ) ON DELETE SET NULL ;
ALTER TABLE SBI_GEO_MAPS ADD CONSTRAINT FK_SBI_GEO_MAPS_1 FOREIGN KEY FK_SBI_GEO_MAPS_1 (BIN_ID) REFERENCES SBI_BINARY_CONTENTS(BIN_ID);
ALTER TABLE SBI_GEO_MAP_FEATURES ADD CONSTRAINT FK_geo_map_features1 FOREIGN KEY FK_geo_map_features1 (MAP_ID) REFERENCES SBI_GEO_MAPS (MAP_ID); 
ALTER TABLE SBI_GEO_MAP_FEATURES ADD CONSTRAINT FK_geo_map_features2 FOREIGN KEY FK_geo_map_features2 (FEATURE_ID) REFERENCES SBI_GEO_FEATURES (FEATURE_ID); 
ALTER TABLE SBI_VIEWPOINTS ADD CONSTRAINT FK_sbi_viewpoints_1 FOREIGN KEY FK_sbi_viewpoints_1 ( BIOBJ_ID ) REFERENCES SBI_OBJECTS ( BIOBJ_ID );

ALTER TABLE SBI_OBJECT_TEMPLATES ADD CONSTRAINT FK_SBI_OBJECT_TEMPLATES_1 FOREIGN KEY FK_SBI_OBJECT_TEMPLATES_1 ( BIN_ID ) REFERENCES SBI_BINARY_CONTENTS(BIN_ID);
ALTER TABLE SBI_OBJECT_TEMPLATES ADD CONSTRAINT FK_SBI_OBJECT_TEMPLATES_2 FOREIGN KEY FK_SBI_OBJECT_TEMPLATES_2 ( BIOBJ_ID ) REFERENCES SBI_OBJECTS(BIOBJ_ID);

ALTER TABLE SBI_OBJECT_NOTES ADD CONSTRAINT FK_SBI_OBJECT_NOTES_1 FOREIGN KEY FK_SBI_OBJECT_NOTES_1 ( BIN_ID ) REFERENCES SBI_BINARY_CONTENTS(BIN_ID);
ALTER TABLE SBI_OBJECT_NOTES ADD CONSTRAINT FK_SBI_OBJECT_NOTES_2 FOREIGN KEY FK_SBI_OBJECT_NOTES_2 ( BIOBJ_ID ) REFERENCES SBI_OBJECTS(BIOBJ_ID);

ALTER TABLE SBI_SUBOBJECTS ADD CONSTRAINT FK_SBI_SUBOBJECTS_1 FOREIGN KEY FK_SBI_SUBOBJECTS_1 ( BIN_ID ) REFERENCES SBI_BINARY_CONTENTS(BIN_ID);
ALTER TABLE SBI_SUBOBJECTS ADD CONSTRAINT FK_SBI_SUBOBJECTS_2 FOREIGN KEY FK_SBI_SUBOBJECTS_2 ( BIOBJ_ID ) REFERENCES SBI_OBJECTS(BIOBJ_ID);

ALTER TABLE SBI_SNAPSHOTS ADD CONSTRAINT FK_SBI_SNAPSHOTS_1 FOREIGN KEY FK_SBI_SNAPSHOTS_1 ( BIN_ID ) REFERENCES SBI_BINARY_CONTENTS(BIN_ID);
ALTER TABLE SBI_SNAPSHOTS ADD CONSTRAINT FK_SBI_SNAPSHOTS_2 FOREIGN KEY FK_SBI_SNAPSHOTS_2 ( BIOBJ_ID ) REFERENCES SBI_OBJECTS(BIOBJ_ID);

ALTER TABLE SBI_ROLE_TYPE_USER_FUNC ADD CONSTRAINT FK_SBI_ROLE_TYPE_USER_FUNC_1 FOREIGN KEY FK_SBI_ROLE_TYPE_USER_FUNC_1 ( ROLE_TYPE_ID ) REFERENCES SBI_DOMAINS(VALUE_ID);
ALTER TABLE SBI_ROLE_TYPE_USER_FUNC ADD CONSTRAINT FK_SBI_ROLE_TYPE_USER_FUNC_2 FOREIGN KEY FK_SBI_ROLE_TYPE_USER_FUNC_2 ( USER_FUNCT_ID ) REFERENCES SBI_USER_FUNC(USER_FUNCT_ID);
ALTER TABLE SBI_DATA_SOURCE ADD CONSTRAINT FK_SBI_DATA_SOURCE_1 FOREIGN KEY FK_SBI_DATA_SOURCE_1 ( DIALECT_ID ) REFERENCES SBI_DOMAINS(VALUE_ID);

ALTER TABLE SBI_DOSSIER_PRES ADD CONSTRAINT FK_SBI_DOSSIER_PRES_1 FOREIGN KEY FK_SBI_DOSSIER_PRES_1 ( BIN_ID ) REFERENCES SBI_BINARY_CONTENTS(BIN_ID);
ALTER TABLE SBI_DOSSIER_PRES ADD CONSTRAINT FK_SBI_DOSSIER_PRES_2 FOREIGN KEY FK_SBI_DOSSIER_PRES_2 ( BIOBJ_ID ) REFERENCES SBI_OBJECTS(BIOBJ_ID);

ALTER TABLE SBI_DOSSIER_TEMP ADD CONSTRAINT FK_SBI_DOSSIER_TEMP_1 FOREIGN KEY FK_SBI_DOSSIER_TEMP_1 ( BIOBJ_ID ) REFERENCES SBI_OBJECTS(BIOBJ_ID);

ALTER TABLE SBI_DOSSIER_BIN_TEMP ADD CONSTRAINT FK_SBI_DOSSIER_BIN_TEMP_1 FOREIGN KEY FK_SBI_DOSSIER_BIN_TEMP_1 ( PART_ID ) REFERENCES SBI_DOSSIER_TEMP(PART_ID) ON DELETE CASCADE;

ALTER TABLE SBI_DIST_LIST_USER ADD CONSTRAINT FK_SBI_DIST_LIST_USER_1 FOREIGN KEY FK_SBI_DIST_LIST_USER_1 ( LIST_ID ) REFERENCES SBI_DIST_LIST(DL_ID)ON DELETE CASCADE;
ALTER TABLE SBI_DIST_LIST_OBJECTS ADD CONSTRAINT FK_SBI_DIST_LIST_OBJECTS_1 FOREIGN KEY FK_SBI_DIST_LIST_OBJECTS_1 ( DOC_ID ) REFERENCES SBI_OBJECTS(BIOBJ_ID)ON DELETE CASCADE;
ALTER TABLE SBI_DIST_LIST_OBJECTS ADD CONSTRAINT FK_SBI_DIST_LIST_OBJECTS_2 FOREIGN KEY FK_SBI_DIST_LIST_OBJECTS_2 ( DL_ID ) REFERENCES SBI_DIST_LIST(DL_ID)ON DELETE CASCADE;

ALTER TABLE SBI_REMEMBER_ME ADD CONSTRAINT FK_SBI_REMEMBER_ME_1 FOREIGN KEY FK_SBI_REMEMBER_ME_1 ( BIOBJ_ID ) REFERENCES SBI_OBJECTS(BIOBJ_ID) ON DELETE CASCADE;
ALTER TABLE SBI_REMEMBER_ME ADD CONSTRAINT FK_SBI_REMEMBER_ME_2 FOREIGN KEY FK_SBI_REMEMBER_ME_2 ( SUBOBJ_ID ) REFERENCES SBI_SUBOBJECTS(SUBOBJ_ID) ON DELETE CASCADE;

ALTER TABLE SBI_MENU_ROLE ADD CONSTRAINT FK_SBI_MENU_ROLE1 FOREIGN KEY FK_SBI_MENU_ROLE1 (MENU_ID) REFERENCES SBI_MENU (MENU_ID) ON DELETE CASCADE; 
ALTER TABLE SBI_MENU_ROLE ADD CONSTRAINT FK_SBI_MENU_ROLE2 FOREIGN KEY FK_SBI_MENU_ROLE2 (EXT_ROLE_ID) REFERENCES SBI_EXT_ROLES (EXT_ROLE_ID) ON DELETE CASCADE;
ALTER TABLE SBI_DATA_SET ADD CONSTRAINT FK_SBI_DATA_SET_1  FOREIGN KEY FK_SBI_DATA_SET_1 ( TRANSFORMER_ID ) REFERENCES SBI_DOMAINS ( VALUE_ID ) ON DELETE CASCADE;

-- METADATA
ALTER TABLE SBI_OBJ_METADATA ADD CONSTRAINT FK_SBI_OBJ_METADATA_1 FOREIGN KEY FK_SBI_OBJ_METADATA_1 ( DATA_TYPE_ID ) REFERENCES SBI_DOMAINS(VALUE_ID);
ALTER TABLE SBI_OBJ_METACONTENTS ADD CONSTRAINT FK_SBI_OBJ_METACONTENTS_1 FOREIGN KEY FK_SBI_OBJ_METACONTENTS_1 ( OBJMETA_ID ) REFERENCES SBI_OBJ_METADATA (  OBJ_META_ID );
ALTER TABLE SBI_OBJ_METACONTENTS ADD CONSTRAINT FK_SBI_OBJ_METACONTENTS_2 FOREIGN KEY FK_SBI_OBJ_METACONTENTS_2 ( BIOBJ_ID )   REFERENCES SBI_OBJECTS (  BIOBJ_ID );
ALTER TABLE SBI_OBJ_METACONTENTS ADD CONSTRAINT FK_SBI_OBJ_METACONTENTS_3 FOREIGN KEY FK_SBI_OBJ_METACONTENTS_3 ( SUBOBJ_ID )  REFERENCES SBI_SUBOBJECTS (  SUBOBJ_ID ) ;
ALTER TABLE SBI_OBJ_METACONTENTS ADD CONSTRAINT FK_SBI_OBJ_METACONTENTS_4 FOREIGN KEY FK_SBI_OBJ_METACONTENTS_4 ( BIN_ID )     REFERENCES SBI_BINARY_CONTENTS(BIN_ID);
-- DEFINITION
Alter table `SBI_THRESHOLD` add Foreign Key (`THRESHOLD_TYPE_ID`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_MEASURE_UNIT` add Foreign Key (`SCALE_TYPE_ID`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_THRESHOLD_VALUE` add Foreign Key (`SEVERITY_ID`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_THRESHOLD_VALUE` add Foreign Key (`THRESHOLD_ID`) references `SBI_THRESHOLD` (`THRESHOLD_ID`) on delete cascade on update no action;
Alter table `SBI_KPI_ROLE` add Foreign Key (`EXT_ROLE_ID`) references `SBI_EXT_ROLES` (`EXT_ROLE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_ROLE` add Foreign Key (`KPI_ID`) references `SBI_KPI` (`KPI_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI` add Foreign Key (`id_measure_unit`) references `SBI_MEASURE_UNIT` (`id_measure_unit`) on delete  restrict on update  restrict;
Alter table `SBI_KPI` add Foreign Key (`THRESHOLD_ID`) references `SBI_THRESHOLD` (`THRESHOLD_ID`) on delete no action on update no action;
Alter table `SBI_KPI` add Foreign Key (`DS_ID`) references `SBI_DATA_SET` (`DS_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI` add Foreign Key (`id_kpi_parent`) references `SBI_KPI` (`KPI_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_MODEL` add Foreign Key (`KPI_PARENT_MODEL_ID`) references `SBI_KPI_MODEL` (`KPI_MODEL_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_MODEL` add Foreign Key (`KPI_MODEL_TYPE_ID`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_MODEL` add Foreign Key (`KPI_ID`) references `SBI_KPI` (`KPI_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_MODEL_ATTR` add Foreign Key (`KPI_MODEL_ATTR_TYPE_ID`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_MODEL_ATTR_VAL` add Foreign Key (`KPI_MODEL_ATTR_ID`) references `SBI_KPI_MODEL_ATTR` (`KPI_MODEL_ATTR_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_MODEL_ATTR_VAL` add Foreign Key (`KPI_MODEL_ID`) references `SBI_KPI_MODEL` (`KPI_MODEL_ID`) on delete  restrict on update  restrict;

-- INSTANCE
Alter table `SBI_RESOURCES` add Foreign Key (`RESOURCE_TYPE_ID`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_INSTANCE` add Foreign Key (`KPI_ID`) references `SBI_KPI` (`KPI_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_INSTANCE` add Foreign Key (`CHART_TYPE_ID`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_INSTANCE` add Foreign Key (`id_measure_unit`) references `SBI_MEASURE_UNIT` (`id_measure_unit`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_INSTANCE` add Foreign Key (`THRESHOLD_ID`) references `SBI_THRESHOLD` (`THRESHOLD_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_INSTANCE_HISTORY` add Foreign Key (`id_measure_unit`) references `SBI_MEASURE_UNIT` (`id_measure_unit`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_INSTANCE_HISTORY` add Foreign Key (`THRESHOLD_ID`) references `SBI_THRESHOLD` (`THRESHOLD_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_INSTANCE_HISTORY` add Foreign Key (`CHART_TYPE_ID`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_INSTANCE_HISTORY` add Foreign Key (`id_kpi_instance`) references `SBI_KPI_INSTANCE` (`id_kpi_instance`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_MODEL_INST` add Foreign Key (`KPI_MODEL_INST_PARENT`) references `SBI_KPI_MODEL_INST` (`KPI_MODEL_INST`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_MODEL_INST` add Foreign Key (`KPI_MODEL_ID`) references `SBI_KPI_MODEL` (`KPI_MODEL_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_MODEL_INST` add Foreign Key (`id_kpi_instance`) references `SBI_KPI_INSTANCE` (`id_kpi_instance`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_MODEL_RESOURCES` add Foreign Key (`KPI_MODEL_INST`) references `SBI_KPI_MODEL_INST` (`KPI_MODEL_INST`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_MODEL_RESOURCES` add Foreign Key (`RESOURCE_ID`) references `SBI_RESOURCES` (`RESOURCE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_RESOURCES` add Foreign Key (`RESOURCE_TYPE_ID`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_VALUE` add Foreign Key (`RESOURCE_ID`) references `SBI_RESOURCES` (`RESOURCE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI_VALUE` add Foreign Key (`id_kpi_instance`) references `SBI_KPI_INSTANCE` (`id_kpi_instance`) on delete  restrict on update  restrict;
Alter TABLE `SBI_KPI_INST_PERIOD` ADD FOREIGN KEY (`PERIODICITY_ID`) REFERENCES `SBI_KPI_PERIODICITY` (`id_kpi_periodicity`) ON DELETE RESTRICT ON UPDATE RESTRICT;
Alter TABLE `SBI_KPI_INST_PERIOD` ADD FOREIGN KEY  (`KPI_INSTANCE_ID`) REFERENCES `SBI_KPI_INSTANCE` (`id_kpi_instance`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ALARM
Alter table `SBI_ALARM` add Foreign Key (`MODALITY_ID`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_ALARM` add Foreign Key (`DOCUMENT_ID`) references `SBI_OBJECTS` (`BIOBJ_ID`) on delete  restrict on update  restrict;
Alter table `SBI_ALARM` add Foreign Key (`id_kpi_instance`) references `SBI_KPI_INSTANCE` (`id_kpi_instance`) on delete  restrict on update  restrict;
Alter table `SBI_ALARM` add Foreign Key (`id_threshold_value`) references `SBI_THRESHOLD_VALUE` (`id_threshold_value`) on delete  restrict on update  restrict;
Alter table `SBI_ALARM_EVENT` add Foreign Key (`ALARM_ID`) references `SBI_ALARM` (`ALARM_ID`) on delete  restrict on update  restrict;
Alter table `SBI_ALARM_DISTRIBUTION` add Foreign Key (`ALARM_ID`) references `SBI_ALARM` (`ALARM_ID`) on delete  restrict on update  restrict;
Alter table `SBI_ALARM_DISTRIBUTION` add Foreign Key (`ALARM_CONTACT_ID`) references `SBI_ALARM_CONTACT` (`ALARM_CONTACT_ID`) on delete  restrict on update  restrict;

Alter table `SBI_KPI` add Foreign Key (`kpi_type`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI` add Foreign Key (`metric_scale_type`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_KPI` add Foreign Key (`measure_type`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;

Alter table `SBI_EXPORTERS` add Foreign Key (`engine_id`) references `SBI_ENGINES` (`ENGINE_ID`) on delete  restrict on update  restrict;
Alter table `SBI_EXPORTERS` add Foreign Key (`domain_id`) references `SBI_DOMAINS` (`VALUE_ID`) on delete  restrict on update  restrict;

ALTER TABLE SBI_CONFIG ADD CONSTRAINT FK_sbi_config_1 FOREIGN KEY FK_sbi_config_1 ( VALUE_TYPE_ID ) REFERENCES SBI_DOMAINS ( VALUE_ID ) ON DELETE RESTRICT;
ALTER TABLE SBI_USER_ATTRIBUTES ADD CONSTRAINT FK_sbi_user_attributes_1 FOREIGN KEY FK_sbi_user_attributes_1 (ID) REFERENCES SBI_USER (ID) ON DELETE CASCADE ON UPDATE  RESTRICT;
ALTER TABLE SBI_EXT_USER_ROLES ADD CONSTRAINT FK_sbi_ext_user_roles_1 FOREIGN KEY FK_sbi_ext_user_roles_1 (ID) REFERENCES SBI_USER (ID) ON DELETE CASCADE ON UPDATE  RESTRICT;
ALTER TABLE SBI_USER_ATTRIBUTES ADD CONSTRAINT FK_sbi_user_attributes_2 FOREIGN KEY FK_sbi_user_attributes_2 (ATTRIBUTE_ID) REFERENCES SBI_ATTRIBUTE (ATTRIBUTE_ID) ON DELETE  RESTRICT ON UPDATE  RESTRICT;
ALTER TABLE SBI_EXT_USER_ROLES ADD CONSTRAINT FK_sbi_ext_user_roles_2 FOREIGN KEY FK_sbi_ext_user_roles_2 (EXT_ROLE_ID) REFERENCES SBI_EXT_ROLES (EXT_ROLE_ID) ON DELETE  RESTRICT ON UPDATE  RESTRICT;
