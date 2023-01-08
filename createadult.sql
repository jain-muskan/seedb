DROP TABLE IF EXISTS "Adult" cascade;

CREATE TABLE IF NOT EXISTS public."Adult"
(
    age numeric,
    workclass character varying,
    fnlwgt numeric,
    education character varying,
    "education-num" numeric,
    "marital-status" character varying,
    occupation character varying,
    relationship character varying,
    race character varying,
    sex character varying,
    "capital-gain" numeric,
    "capital-loss" numeric,
    "hours-per-week" numeric,
    "native-country" character varying,
    income character varying
);

COPY public."Adult" 
FROM '[path to adult.csv]'
(FORMAT csv, HEADER, DELIMITER ',');

UPDATE public."Adult"
	SET "marital-status" = 'Unmarried' 
	WHERE "marital-status" in ('Separated',  'Widowed',  'Divorced','Never-married');
    
UPDATE public."Adult"
	SET "marital-status" = 'Married' 
	WHERE "marital-status" in ('Married-civ-spouse', 'Married-spouse-absent', 'Married-AF-spouse');



