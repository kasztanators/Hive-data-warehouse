LOAD DATA local inpath 'course_feedback.csv' INTO TABLE dim_survey;

LOAD DATA local inpath 'students2000.csv' INTO TABLE dim_student PARTITION (BirthYear=2000);
LOAD DATA local inpath 'students2001.csv' INTO TABLE dim_student PARTITION (BirthYear=2001);
LOAD DATA local inpath 'students2002.csv' INTO TABLE dim_student PARTITION (BirthYear=2002);
LOAD DATA local inpath 'students2003.csv' INTO TABLE dim_student PARTITION (BirthYear=2003);

LOAD DATA local inpath 'time.csv' INTO TABLE dim_time;

LOAD DATA local inpath 'dim_date.csv' INTO TABLE dim_date;

LOAD DATA local inpath 'tutor.csv' INTO TABLE dim_tutor;

LOAD DATA local inpath 'Courses.csv' INTO TABLE dim_course;

LOAD DATA local inpath 'faculties.csv' INTO TABLE dim_faculty;




INSERT INTO fact_Enrollment VALUES
  (90, '2015-01-01', '2015-02-01', 1, 101, 1001, 1, 95, 80, 90, 75, 85),
  (85, '2015-02-01', '2015-03-01', 2, 102, 1002, 2, 80, 70, 85, 65, 75),
  (80, '2015-03-01', '2015-04-01', 3, 103, 1003, 3, 70, 60, 80, 55, 65),
  (75, '2015-04-01', '2015-05-01', 4, 104, 1004, 4, 60, 50, 75, 45, 55),
  (70, '2015-05-01', '2015-06-01', 5, 105, 1005, 5, 50, 40, 70, 35, 45),
  (65, '2015-06-01', '2015-07-01', 6, 106, 1006, 6, 40, 30, 65, 25, 35),
  (60, '2015-07-01', '2015-08-01', 7, 107, 1007, 7, 30, 20, 60, 15, 25),
  (55, '2015-08-01', '2015-09-01', 8, 108, 1008, 8, 20, 10, 55, 5, 15),
  (50, '2015-09-01', '2015-10-01', 9, 109, 1009, 9, 10, 5, 50, 2, 10),
  (45, '2015-10-01', '2015-11-01', 10, 110, 1010, 10, 5, 2, 45, 1, 5);

INSERT INTO fact_teaching VALUES
  (90, 1 ),
  (85, 2),
  (80, 3),
  (75, 4),
  (70, 5),
  (65, 6),
  (60, 7),
  (55, 9),
  (50, 8),
  (45, 10);


