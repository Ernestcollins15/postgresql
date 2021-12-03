--Production table
CREATE TABLE production_table(
     farmer_id SERIAL PRIMARY KEY NOT NULL,
	 Hive_count INTEGER,
	 Ounces_produced NUMERIC,
	 farm_location VARCHAR(20),
	 Hive_type JSONB);

    
     SELECT * FROM production_table;