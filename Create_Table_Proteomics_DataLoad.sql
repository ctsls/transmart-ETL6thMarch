

  CREATE TABLE "TM_LZ"."LT_SRC_PROTEOMICS_DATA" 
   (	"TRIAL_NAME" VARCHAR2(25 BYTE), 
	"PEPTIDE" VARCHAR2(100 BYTE), 
	"M_P_ID" VARCHAR2(100 BYTE), 
	"INTENSITY_VALUE" VARCHAR2(50 BYTE)
   )
	create or replace synonym tm_cz.LT_SRC_PROTEOMICS_DATA for "TM_LZ"."LT_SRC_PROTEOMICS_DATA" ;
	grant select, insert, update, delete on  "TM_LZ"."LT_SRC_PROTEOMICS_DATA"    to tm_cz;

-----------------------------------------------------
  CREATE TABLE "TM_LZ"."LT_SRC_PROTEOMICS_SUB_SAM_MAP" 
   (	"TRIAL_NAME" VARCHAR2(100 BYTE), 
	"SITE_ID" VARCHAR2(100 BYTE), 
	"SUBJECT_ID" VARCHAR2(100 BYTE), 
	"SAMPLE_CD" VARCHAR2(100 BYTE), 
	"PLATFORM" VARCHAR2(100 BYTE), 
	"TISSUE_TYPE" VARCHAR2(100 BYTE), 
	"ATTRIBUTE_1" VARCHAR2(256 BYTE), 
	"ATTRIBUTE_2" VARCHAR2(200 BYTE), 
	"CATEGORY_CD" VARCHAR2(200 BYTE), 
	"SOURCE_CD" VARCHAR2(200 BYTE)
   )

	create or replace synonym tm_cz.LT_SRC_PROTEOMICS_SUB_SAM_MAP for "TM_LZ"."LT_SRC_PROTEOMICS_SUB_SAM_MAP"  ;
	grant select, insert, update, delete on  "TM_LZ"."LT_SRC_PROTEOMICS_SUB_SAM_MAP"    to tm_cz;
-------------------------------------------------------

  CREATE TABLE "DEAPP"."DE_SUBJECT_PROTEIN_DATA" 
   (	"TRIAL_NAME" VARCHAR2(50 BYTE), 
	"PROTEIN_ANNOTATION_ID" NUMBER(38,0), 
	"COMPONENT" VARCHAR2(100 BYTE), 
	"PATIENT_ID" NUMBER(38,0), 
	"GENE_SYMBOL" VARCHAR2(100 BYTE), 
	"GENE_ID" NUMBER(10,0), 
	"ASSAY_ID" NUMBER, 
	"SUBJECT_ID" VARCHAR2(100 BYTE), 
	"INTENSITY" NUMBER, 
	"ZSCORE" NUMBER, 
	"LOG_INTENSITY" NUMBER, 
	 CONSTRAINT "FK_PROTEIN_ANNOTATION_ID" FOREIGN KEY ("PROTEIN_ANNOTATION_ID")
	  REFERENCES "DEAPP"."DE_PROTEIN_ANNOTATION" ("ID") ENABLE
   )

	create or replace synonym tm_cz.DE_SUBJECT_PROTEIN_DATA for "DEAPP"."DE_SUBJECT_PROTEIN_DATA" ;
	grant select, insert, update, delete on  "DEAPP"."DE_SUBJECT_PROTEIN_DATA" to tm_cz;
----------------------------------------------------------------------------


 CREATE TABLE "TM_WZ"."WT_PROTEOMICS_NODES" 
   (	"LEAF_NODE" VARCHAR2(2000 BYTE), 
	"CATEGORY_CD" VARCHAR2(2000 BYTE), 
	"PLATFORM" VARCHAR2(2000 BYTE), 
	"TISSUE_TYPE" VARCHAR2(2000 BYTE), 
	"ATTRIBUTE_1" VARCHAR2(2000 BYTE), 
	"ATTRIBUTE_2" VARCHAR2(2000 BYTE), 
	"TITLE" VARCHAR2(2000 BYTE), 
	"NODE_NAME" VARCHAR2(2000 BYTE), 
	"CONCEPT_CD" VARCHAR2(100 BYTE), 
	"TRANSFORM_METHOD" VARCHAR2(2000 BYTE), 
	"NODE_TYPE" VARCHAR2(50 BYTE)
   ) 
   


	create or replace synonym tm_cz.WT_PROTEOMICS_NODES for "TM_WZ"."WT_PROTEOMICS_NODES";
	grant select, insert, update, delete on  "TM_WZ"."WT_PROTEOMICS_NODES"  to tm_cz;

----------------------------------------------------------------------------
     CREATE TABLE "TM_WZ"."WT_PROTEOMICS_NODE_VALUES" 
   (	"CATEGORY_CD" VARCHAR2(2000 BYTE), 
	"PLATFORM" VARCHAR2(2000 BYTE), 
	"TISSUE_TYPE" VARCHAR2(2000 BYTE), 
	"ATTRIBUTE_1" VARCHAR2(2000 BYTE), 
	"ATTRIBUTE_2" VARCHAR2(2000 BYTE), 
	"TITLE" VARCHAR2(2000 BYTE), 
	"TRANSFORM_METHOD" VARCHAR2(2000 BYTE)
   ) 



	create or replace synonym tm_cz.WT_PROTEOMICS_NODE_VALUES for "TM_WZ"."WT_PROTEOMICS_NODE_VALUES" ;
	grant select, insert, update, delete on "TM_WZ"."WT_PROTEOMICS_NODE_VALUES" to tm_cz;

---------------------------------------------------------------------------


  CREATE TABLE "TM_WZ"."WT_SUBJECT_PROTEOMICS_PROBESET" 
   (	"PROBESET" VARCHAR2(500 BYTE), 
	"EXPR_ID" VARCHAR2(500 BYTE), 
	"INTENSITY_VALUE" NUMBER, 
	"NUM_CALLS" NUMBER, 
	"PVALUE" NUMBER, 
	"ASSAY_ID" NUMBER(18,0), 
	"PATIENT_ID" NUMBER(22,0), 
	"SAMPLE_ID" VARCHAR2(100 BYTE), 
	"SUBJECT_ID" VARCHAR2(100 BYTE), 
	"TRIAL_NAME" VARCHAR2(200 BYTE), 
	"TIMEPOINT" VARCHAR2(200 BYTE), 
	"SAMPLE_TYPE" VARCHAR2(200 BYTE), 
	"PLATFORM" VARCHAR2(200 BYTE), 
	"TISSUE_TYPE" VARCHAR2(200 BYTE)
   )


	create or replace synonym tm_cz.WT_SUBJECT_PROTEOMICS_PROBESET for "TM_WZ"."WT_SUBJECT_PROTEOMICS_PROBESET";
	grant select, insert, update, delete on "TM_WZ"."WT_SUBJECT_PROTEOMICS_PROBESET"to tm_cz;
----------------------------------------------------------------------------


 CREATE TABLE "TM_WZ"."WT_SUBJECT_PROTEOMICS_MED" 
   (	"PROBESET_ID" VARCHAR2(500 BYTE), 
	"INTENSITY_VALUE" NUMBER, 
	"LOG_INTENSITY" NUMBER, 
	"ASSAY_ID" NUMBER(18,0), 
	"PATIENT_ID" NUMBER(18,0), 
	"SAMPLE_ID" NUMBER(18,0), 
	"SUBJECT_ID" VARCHAR2(50 BYTE), 
	"TRIAL_NAME" VARCHAR2(50 BYTE), 
	"TIMEPOINT" VARCHAR2(100 BYTE), 
	"PVALUE" FLOAT(126), 
	"NUM_CALLS" NUMBER, 
	"MEAN_INTENSITY" NUMBER, 
	"STDDEV_INTENSITY" NUMBER, 
	"MEDIAN_INTENSITY" NUMBER, 
	"ZSCORE" NUMBER
   ) 




	create or replace synonym tm_cz.WT_SUBJECT_PROTEOMICS_MED for "TM_WZ"."WT_SUBJECT_PROTEOMICS_MED" ;
	grant select, insert, update, delete on "TM_WZ"."WT_SUBJECT_PROTEOMICS_MED"to tm_cz;
----------------------------------------------------------------------------


CREATE TABLE "TM_WZ"."WT_SUBJECT_PROTEOMICS_LOGS" 
   (	"PROBESET_ID" VARCHAR2(500 BYTE), 
	"INTENSITY_VALUE" NUMBER, 
	"PVALUE" FLOAT(126), 
	"NUM_CALLS" NUMBER, 
	"ASSAY_ID" NUMBER(18,0), 
	"PATIENT_ID" NUMBER(18,0), 
	"SAMPLE_ID" NUMBER(18,0), 
	"SUBJECT_ID" VARCHAR2(50 BYTE), 
	"TRIAL_NAME" VARCHAR2(50 BYTE), 
	"TIMEPOINT" VARCHAR2(100 BYTE), 
	"LOG_INTENSITY" NUMBER
   ) 
	create or replace synonym tm_cz.WT_SUBJECT_PROTEOMICS_LOGS for "TM_WZ"."WT_SUBJECT_PROTEOMICS_LOGS" ;
	grant select, insert, update, delete on "TM_WZ"."WT_SUBJECT_PROTEOMICS_LOGS" to tm_cz;


---------------------------------------------------------------------------



 CREATE TABLE "TM_WZ"."WT_SUBJECT_PROTEOMICS_CALCS" 
   (	"TRIAL_NAME" VARCHAR2(50 BYTE), 
	"PROBESET_ID" VARCHAR2(500 BYTE), 
	"MEAN_INTENSITY" NUMBER, 
	"MEDIAN_INTENSITY" NUMBER, 
	"STDDEV_INTENSITY" NUMBER
   ) 

	create or replace synonym tm_cz.WT_SUBJECT_PROTEOMICS_CALCS for "TM_WZ"."WT_SUBJECT_PROTEOMICS_CALCS" ;
	grant select, insert, update, delete on "TM_WZ"."WT_SUBJECT_PROTEOMICS_CALCS" to tm_cz;
-----------------------------------------------------------------------------------------------
