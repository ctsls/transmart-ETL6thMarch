CREATE TABLE "TM_LZ"."LT_PROTEIN_ANNOTATION" 
   (	"GPL_ID" VARCHAR2(100 BYTE), 
	"PEPTIDE" VARCHAR2(200 BYTE), 
	"UNIPROT_ID" VARCHAR2(200 BYTE), 
	"BIOMARKER_ID" NUMBER, 
	"ORGANISM" VARCHAR2(100 BYTE)
   )

create or replace synonym tm_cz.LT_PROTEIN_ANNOTATION for "TM_LZ"."LT_PROTEIN_ANNOTATION" ;
grant select, insert, update, delete on "TM_LZ"."LT_PROTEIN_ANNOTATION" to tm_cz;
	
------------------------------------------------------------------------------------------------