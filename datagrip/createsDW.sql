create table if not exists Dim_Survey(
    ID_Survey int,
    Status string)
    stored as textfile;

create table if not exists Dim_Student (
  ID_Student int,
  LastName string,
  FirstName string,
  Email string,
  IsCurrent boolean,
  StartTime timestamp,
  EndTime timestamp,
  Student_Index int,
  FavouriteCourses ARRAY<string>
) stored as textfile ;

create external table if not exists Dim_Time (
  ID_Time int,
  Hour int,
  TimeOfDay string
) stored as sequencefile ;

create table if not exists Dim_Date (
  ID_Date int,
  DateInfo timestamp,
  Year int,
  Month string,
  MonthNo int,
  DayOfWeek string,
  DayOfWeekNo int
) stored as textfile ;

create table if not exists Dim_Tutor (
  ID_Tutor int ,
  Person struct<LastName: string, Firstname: string>
) stored as textfile ;

create table if not exists Dim_Faculty (
  ID_Faculty int,
  Name string
) stored as textfile ;

create table if not exists Dim_Course (
  ID_Course int,
  Name string,
  NumOfHours string
) stored as textfile ;


create table if not exists Fact_Enrollment (
  Grade decimal,
  ID_StartDate int,
  ID_FinishDate int,
  ID_Time int ,
  ID_Course int ,
  ID_Student int ,
  ID_Survey int ,
  CompletitionPercentage int,
  ContentRate int ,
  TimeRate int ,
  HardnessRate int ,
  TutorRate int
) stored as parquet;

