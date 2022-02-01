DROP TABLE IF EXISTS usr CASCADE;
DROP TABLE IF EXISTS company CASCADE;

CREATE TABLE IF NOT EXISTS company (
  company_id INT NOT NULL,
  company_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (company_id)
);

CREATE TABLE IF NOT EXISTS usr (
  user_id SERIAL NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  company_id INT,
  PRIMARY KEY (user_id)
);


ALTER TABLE usr ADD CONSTRAINT FK_usr_company FOREIGN KEY (company_id) REFERENCES company;
INSERT INTO company (company_id, company_name) VALUES (1, 'Orange');
INSERT INTO company VALUES (2, 'TopSoft');
INSERT INTO usr (user_id, first_name, last_name, password, age, company_id) VALUES (1, 'Taro', 'Yamada', 'password', 20, 1);
INSERT INTO usr VALUES (2, 'Jiro', 'Suzuki', 'password', 30, 1);
INSERT INTO usr VALUES (3, 'Saburo', 'Ishida', 'password', 40, 2);
INSERT INTO usr VALUES (4, 'Shiro', 'Tanaka', 'password', 50, 1);
INSERT INTO usr VALUES (5, 'Goro', 'Sasaki', 'password', 60, 1);
INSERT INTO usr VALUES (6, 'Rokuro', 'Kondo', 'password', 18, 2);
INSERT INTO usr VALUES (7,'Taro','HASEGWA','password',30, NULL);
SELECT  first_name , last_name , company_id , age FROM usr WHERE company_id IS NULL;

