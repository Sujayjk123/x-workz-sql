CREATE DATABASE Xworkz_task;

use Xworkz_task;

create table patient_details( pid int,  p_name varchar(30),primary key(pid));

ALTER TABLE patient_details
ADD ( disease varchar(50) , 
	  severeness varchar(30), 
      total_amount int);

ALTER TABLE patient_details
DROP COLUMN severeness, 
DROP COLUMN p_name;

ALTER TABLE patient_details
CHANGE total_amount total_cost int;

ALTER TABLE patient_details
CHANGE pid patient_id int ;

ALTER TABLE patient_details
MODIFY patient_id varchar(20);

ALTER TABLE patient_details
MODIFY total_cost double;

RENAME TABLE patient_details TO patient_data;







-- /create , truncate drop alter - DDL

