CREATE DATABASE IF NOT EXISTS accidentes_aereos;
USE accidentes_aereos;

-- SELECT @@global.secure_file_priv; -- Para ver la ruta de origen donde poner los csv.

DROP TABLE IF EXISTS `accidente`;
CREATE TABLE IF NOT EXISTS `accidente` (
  	`idAccidente` 		int auto_increment primary key,
  	`route` 			varchar(255),
    `operator`			varchar(255),
  	`ac_type` 			varchar(255),
    `all_aboard`		int,
    `total_fatalities`	int,
    `ground`			int,
    `summary`			text,
    `year` 				int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;	

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\AA_clean.csv'
INTO TABLE `accidente` 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(route, operator, ac_type, all_aboard, total_fatalities, ground, summary, year);

 -- SELECT * FROM accidente;