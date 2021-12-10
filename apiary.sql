--Bee farmers DB
BEGIN;


CREATE TABLE IF NOT EXISTS public.assessment_table
(
    farm_location character varying(20) NOT NULL,
    vegetation_cover character varying(20),
    watersource_proximity integer NOT NULL,
    hive_security character varying(20) NOT NULL,
    id integer
);

CREATE TABLE IF NOT EXISTS public.bee_farmers
(
    national_id bigint NOT NULL,
    farmers_name character varying(50) NOT NULL,
    farmers_mail character varying(50),
    hive_serialno bigint,
    hive_assemblydate date,
    hive_count integer,
    PRIMARY KEY (national_id)
);

CREATE TABLE IF NOT EXISTS public.production_table
(
    farmer_id integer NOT NULL,
    hive_count integer,
    ounces_produced numeric,
    farm_location character varying(20),
    hive_type jsonb,
    PRIMARY KEY (farmer_id)
);

ALTER TABLE public.production_table
    ADD FOREIGN KEY (farmer_id)
    REFERENCES public.bee_farmers (national_id)
    NOT VALID;


ALTER TABLE public.assessment_table
    ADD FOREIGN KEY (id)
    REFERENCES public.bee_farmers (national_id)
    NOT VALID;

END;
