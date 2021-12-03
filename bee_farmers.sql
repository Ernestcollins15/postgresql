// HONEY BEE FARMERS DATABASE
CREATE TABLE bee_farmers(
    National_id BIGINT PRIMARY KEY NOT NULL,
	Farmers_name VARCHAR(50) NOT NULL,
	Farmers_mail VARCHAR(50),
	Hive_serialno BIGINT,
	Hive_assemblydate DATE,
	Hive_count integer			 
);