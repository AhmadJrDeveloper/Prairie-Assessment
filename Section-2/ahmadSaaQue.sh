CREATE TABLE MENTORS(
    SSN INT PRIMARY KEY,
    First_name varchar NOT NULL,
    Last_name varchar NOT NULL,
    Date_of_birth date,
    Seniority_level enum('junior','mid','senior'),
    Salary INT NOT NULL,
    Topic_id FORIEGN KEY,
    Dep_id FOREGIN KEY
);
CREATE TABLE STUDENT(
    SSN INT PRIMARY KEY,
    STD_NBR INT,
    First_name varchar NOT NULL,
    Last_name varchar NOT NULL,
    Date_of_birth date,
    Skills varchar
);
CREATE TABLE DEPARTMENT(
    ID INT PRIMARY KEY,
    name varchar,
    office varchar,
    topic_speciality varchar
);
CREATE TABLE COHORT(
    ID INT PRIMARY KEY,
    number INT,
    start_date date,
    end_date date
);
CREATE TABLE TOPIC(
    ID INT PRIMARY KEY,
    Title varchar,
    description varchar
    
);
INSERT INTO MENTORS VALUES(
    'ZEINAB','KASSEM','1-1-1990','Senior','5000';
);
INSERT INTO MENTORS VALUES(
    'PETER','FADDOUL','1-1-1990','Senior','5000';
);INSERT INTO MENTORS VALUES(
    'HADEEL','DEEB','1-1-1990','MID','5000';
);INSERT INTO MENTORS VALUES(
    'JOSEPH','KASSEM','1-1-1990','JUNIOR','5000';
);
INSERT INTO STUDENT VALUES(
    'AHMAD','SAAD','18-11-2002','JS'
);
INSERT INTO STUDENT VALUES(
    'JANA','SAKR','18-11-2002','JS'
);INSERT INTO STUDENT VALUES(
    'MOHAMAD','AGHA','18-11-2002','JS'
);INSERT INTO STUDENT VALUES(
    'ALI','ALAHMAD','18-11-2002','JS'
);
INSERT INTO COHORT VALUES(
    '1','15-10-2023','15-6-2024'
);
INSERT INTO COHORT VALUES(
    '2','15-10-2024','15-6-2025'
);INSERT INTO COHORT VALUES(
    '3','15-10-2026','15-6-2027'
);INSERT INTO COHORT VALUES(
    '4','15-10-2028','15-6-2029'
);
INSERT INTO TOPIC VALUES(
    'JS','PROG LANG'
);
INSERT INTO TOPIC VALUES(
    'HTML','PROG LANG'
);INSERT INTO TOPIC VALUES(
    'CSS','PROG LANG'
);INSERT INTO TOPIC VALUES(
    'PHP','PROG LANG'
);
INSERT INTO DEPARTMENT VALUES(
    'DEP1','OFFICE1','PROGRAMMER'
);
INSERT INTO DEPARTMENT VALUES(
    'DEP2','OFFICE2','PROGRAMMER'
);INSERT INTO DEPARTMENT VALUES(
    'DEP3','OFFICE3','PROGRAMMER'
);INSERT INTO DEPARTMENT VALUES(
    'DEP4','OFFICE4','PROGRAMMER'
);

22- SELECT First_name,Last_name,Seniority_level FROM MENTORS;
23- SELECT name FROM DEPARTMENT WHERE office = "333";
25-SELECT MENTORS.First_name AS first,
MENTORS.last_name AS last FROM MENTORS WHERE SALARY > 1000
INNER JOIN MENTORS.dep_id = DEPARTMENT.ID;
26-SELECT MENTORS.First_name AS first,
MENTORS.last_name AS last FROM MENTORS WHERE topic_speciality = "English" AND "Life Skills"
INNER JOIN MENTORS.dep_id = DEPARTMENT.ID;
26- SELECT STD_NBR FROM STUDENTS WHERE Skills = "Development";
27- SELECT SSN FROM STUDENTS WEHERE Skills = "Development";
