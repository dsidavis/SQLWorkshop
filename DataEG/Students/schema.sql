
CREATE TABLE students (
 id INT,
 firstName VARCHAR(30),
 lastName VARCHAR(30),
 stage VARCHAR(5),  --  M, D1, D2
 program VARCHAR(20),
 DE VARCHAR(20),
 PRIMARY KEY(id)
);




CREATE TABLE courses (
 id INT,
 code VARCHAR(3),
 number INT,
 quarter VARCHAR(3),
 year  INT
 instructor INT
);

CREATE TABLE instructors (
 id INT,
 courseID INT,
);

CREATE TABLE Faculty (
  id INT,
  firstName VARCHAR(20),
  lastName VARCHAR(20),
  department VARCHAR(20),
  rank  VARCHAR()
);

