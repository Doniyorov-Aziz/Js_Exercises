CREATE TABLE adresses(
 id BIGSERIAL NOT NULL PRIMARY KEY,
 adress_details VARCHAR(60) NOT NULL
 );


CREATE TABLE schools (
id BIGSERIAL NOT NULL PRIMARY KEY,
school_name VARCHAR(100) NOT NULL,
school_principal VARCHAR(80) NOT NULL,
other_school_details VARCHAR(80) NOT NULL,
adress_id BIGINT REFERENCES adresses(id),
UNIQUE (adress_id)
);

 CREATE TABLE teachers(
id BIGSERIAL NOT NULL PRIMARY KEY,
gender VARCHAR(80) NOT NULL,
first_name VARCHAR(100) NOT NULL,
middle_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
other_teacher_details VARCHAR(60) NOT NULL,
school_id BIGINT REFERENCES schools(id),
UNIQUE (school_id)
);


 CREATE TABLE subjec(
id BIGSERIAL NOT NULL PRIMARY KEY,
subject_name VARCHAR(100) NOT NULL);


 CREATE TABLE classes(
id BIGSERIAL NOT NULL PRIMARY KEY,
class_code NUMERIC(20) NOT NULL,
class_name VARCHAR(60) NOT NULL,
date_from DATE NOT NULL,
date_to DATE NOT NULL,
subject_id BIGINT REFERENCES subjec(id),
UNIQUE (subject_id),
teacher_id BIGINT REFERENCES teachers(id),
UNIQUE (teacher_id)
);


 CREATE TABLE parents(
id BIGSERIAL NOT NULL PRIMARY KEY,
gender VARCHAR(80) NOT NULL,
first_name VARCHAR(100) NOT NULL,
middle_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
other_parent_details VARCHAR(70) NOT NULL);


INSERT INTO adresses(adress_details) VALUES('Bektemir tumani');
INSERT INTO adresses(adress_details) VALUES('Mirobod tumani');

INSERT INTO schools(school_name,school_principal,other_school_details) VALUES ('Gimnaziya','Doniyorov','leader');
INSERT INTO schools(school_name,school_principal,other_school_details) VALUES ('Navoiy','Doniyorova','middle');

INSERT INTO teachers (gender,first_name,middle_name,last_name,other_teacher_details) VALUES ('Male','Laziz','Golib ogli','Doniyorov','good');
INSERT INTO teachers (gender,first_name,middle_name,last_name,other_teacher_details) VALUES ('Female','Ruxshona','Golib qizi','Doniyorova','bad');

INSERT INTO subjec (subject_name) VALUES ('Math');
INSERT INTO subjec (subject_name) VALUES ('English');

INSERT INTO classes(class_code,class_name,date_from,date_to) VALUES ('1212','9-A',DATE '2016-01-01',DATE '2023-05-25');
INSERT INTO classes(class_code,class_name,date_from,date_to) VALUES ('1313','11-B',DATE '2018-02-05',DATE '2022-07-08');

INSERT INTO parents(gender,first_name,middle_name,last_name,other_parent_details) VALUES ('Male','Jamshid','Doniyor ogli','Toshbekov','alo');
INSERT INTO parents(gender,first_name,middle_name,last_name,other_parent_details) VALUES ('Female','Oqila','Gayrat qizi','Toshbekova','yaxshi');







