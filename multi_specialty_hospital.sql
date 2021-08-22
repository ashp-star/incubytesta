create database multi_specialty_hospital;

use multi_specialty_hospital;

create table patients( customer_name varchar(255) PRIMARY KEY NOT NULL,
  customer_id varchar(18) NOT NULL,
  customer_open_date date NOT NULL,
  last_consulted_date date,
  vaccination_type char(8),
  doctor_consulted char(255),
  state char(5),
  country char(5),
  post_code int,
  date_of_birth date,
  active_customer char(1)
);

insert into patients(customer_name, customer_id, customer_open_date, last_consulted_date, vaccination_type, doctor_consulted, state, country, post_code, date_of_birth, active_customer)
values(
"Ashwin Pandey", "12334", "2018-06-29", "2021-01-31", "CS", "Ram", "TN", "IND", 562001, "1999-01-17", "A"),
("Ankit Mishra", "56256", "2019-01-29", "2020-10-31", "CV", "Vikas", "GUJ", "IND", 396195, "1997-12-02", "A"),
("Paul White", "57852", "2016-02-29", "2020-12-03", "SP", "Conor", "CA", "USA", 564210, "1980-05-20", "A"),
("Nick Diaz", "21254", "2017-09-01", "2021-04-28", "SS", "Nate", "NYC", "USA", 658562, "1985-08-02", "A"),
("AB de villar", "56235", "2012-12-06", "2020-02-03", "JS", "Morkal", "CT", "SA", 523654, "1981-03-12", "A"),
("Morne Morkal", "25644", "2018-10-16", "2021-01-13", "MD", "Stane", "EC", "SA", 658542, "1986-12-02", "A"),
("Tim Cook", "65458", "2012-12-12", "2020-01-03", "TT", "Ema", "LN", "ENG", 523651, "1982-08-22", "A"),
("Darren Till", "18745", "2018-02-02", "2021-06-13", "ST", "Daniel", "SD", "ENG", 568710, "1986-09-02", "A"),
("Shawn Tate", "85475", "2016-04-12", "2020-07-23", "RS", "George", "AB", "CAN", 254652, "1980-08-16", "A"),
("Paula Miranda", "85654", "2014-09-22", "2021-08-03", "AS", "James", "MB", "CAN", 541025, "1990-11-26", "A")
;

select * from patients;
