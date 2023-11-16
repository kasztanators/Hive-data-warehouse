create table if not exists Dim_Survey(
    ID_Survey int, Statuses string)
    stored as textfile;

create table if not exists Dim_Student (
  ID_Student int,
  LastName string,
  FirstName string,
  Email string,
  IsCurrent boolean,
  StartTime timestamp,
  EndTime timestamp,
  Student_Index int
) stored as textfile ;

create table if not exists Dim_Time (
  ID_Time int,
  Hour int,
  TimeOfDay string
);

create table if not exists Dim_Date (
  ID_Date int,
  DateInfo timestamp,
  Year int,
  Month string,
  MonthNo int,
  DayOfWeek string,
  DayOfWeekNo int
);

create table if not exists Dim_Tutor (
  ID_Tutor int ,
  FirstName string,
  LastName string
);

create table if not exists Dim_Faculty (
  ID_Faculty int,
  Name string
);

create table if not exists Dim_Course (
  ID_Course int,
  Name string,
  NumOfHours string
);


create table if not exists Fact_Enrollment (
  Grade decimal,
  ID_StartDate int,
  ID_FinishDate int,
  ID_Time int ,
  ID_Course int ,
  ID_Student int ,
  ID_Survey int ,
  CompletitionPercentage int CHECK (CompletitionPercentage >= 0 AND CompletitionPercentage <= 100),
  ContentRate int CHECK (ContentRate >= 0 AND ContentRate <= 10),
  TimeRate int CHECK (TimeRate >= 0 AND TimeRate <= 10),
  HardnessRate int CHECK (HardnessRate >= 0 AND HardnessRate <= 10),
  ToutorRate int CHECK (ToutorRate >= 0 AND ToutorRate <= 10),
    constraint GradeConstraint CHECK (Grade >= 2 AND Grade <= 5)
);

