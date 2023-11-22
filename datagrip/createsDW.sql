create table if not exists Dim_Survey(
    ID_Survey int,
    difficulty int,
    content int,
    tutor int,
    hours int)
    row format delimited
fields terminated BY ','
lines terminated BY '\n'
    stored as textfile;

create table if not exists Dim_Student (
  ID_Student int,
  LastName string,
  FirstName string,
  Email string,
  Student_Index int,
  FavouriteCourses ARRAY<string>
) PARTITIONED BY (BirthYear int)
    row format delimited
fields terminated BY ','
COLLECTION ITEMS TERMINATED BY ':'
lines terminated BY '\n'
    stored as textfile ;

create external table if not exists Dim_Time (
  ID_Time int,
  hour int,
  TimeOfDay string
)   row format delimited
fields terminated BY ','
lines terminated BY '\n'
    stored as sequencefile;


create table if not exists Dim_Date (
  WholeDate date,
  Year int,
  Month string,
  MonthNo int,
  DayOfWeek string,
  DayOfWeekNo int
)    row format delimited
fields terminated BY ','
lines terminated BY '\n'
    stored as textfile ;

create table if not exists Dim_Tutor (
  ID_Tutor int ,
  Person struct<LastName: string, Firstname: string>
) row format delimited
fields terminated BY ','
COLLECTION ITEMS TERMINATED BY ':'
lines terminated BY '\n'
    stored as textfile ;

create table if not exists Dim_Faculty (
  ID_Faculty int,
  Name string
) row format delimited
fields terminated BY ','
lines terminated BY '\n'
    stored as textfile ;

create table if not exists Dim_Course (
  ID_Course int,
  Name string,
  NumOfHours string,
    FK_ID_Faculty int
) row format delimited
fields terminated BY ','
lines terminated BY '\n'
    stored as textfile ;


create table if not exists Fact_Enrollment (
  Grade decimal,
  ID_StartDate date,
  ID_FinishDate date,
  ID_Time int ,
  ID_Course int ,
  ID_Student int ,
  ID_Survey int ,
  CompletitionPercentage int,
  ContentRate int ,
  TimeRate int ,
  HardnessRate int ,
  TutorRate int
) clustered by (ID_Course) INTO 10 BUCKETS
    row format delimited
fields terminated BY ','
lines terminated BY '\n'
    stored as parquet;

create table if not exists fact_teaching (
  ID_Course int,
  ID_Tutor int
) row format delimited
fields terminated BY ','
lines terminated BY '\n'
    stored as textfile ;