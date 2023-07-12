-- 다른 데이터 베이스
create database teamSubject;
use teamSubject;

CREATE TABLE Student (
  student_id INT NOT NULL auto_increment,
  student_name VARCHAR(255) NOT NULL,
  student_tel varchar(20) not null,
  PRIMARY KEY (student_id)
);

CREATE TABLE Subject_t(
  subject_id varchar(20) NOT NULL,
  subject_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (subject_id)
);

CREATE TABLE Grade (
  grade_id varchar(20) NOT NULL,
  student_id int NOT NULL,
  subject_id varchar(20) NOT NULL,
  grade int NOT NULL,
  PRIMARY KEY (grade_id),
  FOREIGN KEY (student_id) REFERENCES Student (student_id),
  FOREIGN KEY (subject_id) REFERENCES Subject_t (subject_id)
);

CREATE TABLE Teacher (
  teacher_id varchar(20) NOT NULL,
  teacher_name VARCHAR(255) NOT NULL,
  teacher_tel varchar(20) not null,
  PRIMARY KEY (teacher_id)
);

CREATE TABLE Feedback (
  feedback_id varchar(20) NOT NULL,
  student_id int NOT NULL,
  subject_id varchar(20) NOT NULL,
  content TEXT NOT NULL,
  PRIMARY KEY (feedback_id),
  FOREIGN KEY (student_id) REFERENCES Student (student_id),
  FOREIGN KEY (subject_id) REFERENCES Subject_t (subject_id)
);

CREATE TABLE teacher_course (
   subject_id varchar(20) NOT NULL,
    teacher_id varchar(20) NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES Subject_t (subject_id),
    FOREIGN KEY (teacher_id) REFERENCES Teacher (teacher_id)
);

-- drop table 
-- drop table feedback;
-- drop table teacher_course;
-- drop table Grade;
-- drop table teacher;
-- drop table Subject_t;
-- drop table Student;

-- 학생 테이블 insert
insert into student(student_name,student_tel) values ("강병화","010-7997-3023");
insert into student(student_name,student_tel) values ("임한별","010-4082-9778");
insert into student(student_name,student_tel) values ("최강인","010-2677-3114");
insert into student(student_name,student_tel) values ("윤혜민","010-4208-9514");
insert into student(student_name,student_tel) values ("이정연","010-8681-9533");

-- 학생 테이블 출력하기
select * from student;

-- 선생님 테이블 insert
insert into teacher(teacher_id,teacher_name,teacher_tel) values ("T001","나예호","010-0000-0000");
insert into teacher(teacher_id,teacher_name,teacher_tel) values ("T002","최영화","010-1111-1111");
insert into teacher(teacher_id,teacher_name,teacher_tel) values ("T003","이명훈","010-2222-2222");
insert into teacher(teacher_id,teacher_name,teacher_tel) values ("T004","김미희","010-3333-3333");
insert into teacher(teacher_id,teacher_name,teacher_tel) values ("T005","임승환","010-4444-4444");
insert into teacher(teacher_id,teacher_name,teacher_tel) values ("T006","박매일","010-5555-5555");


-- 선생님 테이블 출력하기
select * from teacher;

-- 과목 테이블 insert
insert into subject_t(subject_id,subject_name) values ("S001","아두이노");
insert into subject_t(subject_id,subject_name) values ("S002","라즈베리파이");
insert into subject_t(subject_id,subject_name) values ("S003","html/css");
insert into subject_t(subject_id,subject_name) values ("S004","app");
insert into subject_t(subject_id,subject_name) values ("S005","python 기초");
insert into subject_t(subject_id,subject_name) values ("S006","python 응용");
insert into subject_t(subject_id,subject_name) values ("S007","데이터 시각화");
insert into subject_t(subject_id,subject_name) values ("S008","웹 크롤링");
insert into subject_t(subject_id,subject_name) values ("S009","데이터베이스");
insert into subject_t(subject_id,subject_name) values ("S010","java");

-- 과목 테이블
select * from subject_t;


-- 겅병화 과목당 점수 테이블 insert
insert into grade(grade_id, student_id, subject_id, grade) values ("G0001",1,"S001",80);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0002",1,"S002",70);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0003",1,"S003",90);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0004",1,"S005",50);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0005",1,"S006",60);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0006",1,"S007",80);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0007",1,"S008",56);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0008",1,"S009",67);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0009",1,"S010",89);

-- 임한별 과목당 점수 테이블 insert
insert into grade(grade_id, student_id, subject_id, grade) values ("G0010",2,"S001",76);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0011",2,"S002",80);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0012",2,"S003",56);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0013",2,"S005",89);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0014",2,"S006",47);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0015",2,"S007",68);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0016",2,"S008",73);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0017",2,"S009",70);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0018",2,"S010",90);


-- 최강인 과목당 점수 테이블 insert
insert into grade(grade_id, student_id, subject_id, grade) values ("G0019",3,"S001",86);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0020",3,"S002",90);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0021",3,"S003",66);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0022",3,"S005",68);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0023",3,"S006",78);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0024",3,"S007",84);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0025",3,"S008",64);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0026",3,"S009",75);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0027",3,"S010",69);

-- 윤혜민 과목당 점수 테이블 insert
insert into grade(grade_id, student_id, subject_id, grade) values ("G0028",4,"S001",88);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0029",4,"S002",77);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0030",4,"S003",66);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0031",4,"S005",55);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0032",4,"S006",78);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0033",4,"S007",65);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0034",4,"S008",78);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0035",4,"S009",82);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0036",4,"S010",49);

-- 이정연 과목당 점수 테이블 insert
insert into grade(grade_id, student_id, subject_id, grade) values ("G0037",5,"S001",90);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0038",5,"S002",80);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0039",5,"S003",70);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0040",5,"S005",60);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0041",5,"S006",50);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0042",5,"S007",40);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0043",5,"S008",30);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0044",5,"S009",20);
insert into grade(grade_id, student_id, subject_id, grade) values ("G0045",5,"S010",10);

-- 점수 테이블
select * from grade;

-- 피드백 테이블 insert
insert into feedback(feedback_id, student_id, subject_id, content) values ("FB0001",1,"S003","참 잘했어요!!");
insert into feedback(feedback_id, student_id, subject_id, content) values ("FB0002",2,"S006","좀 더 분발하세요. 스터디 하는 걸 추천드릴게요");
insert into feedback(feedback_id, student_id, subject_id, content) values ("FB0003",3,"S002","참 잘했어요 다음번에는 100점을 목표로!!");
insert into feedback(feedback_id, student_id, subject_id, content) values ("FB0004",4,"S010","조금 더 공부를 하셔야겠어요 50점은 넘어야죠~~");
insert into feedback(feedback_id, student_id, subject_id, content) values ("FB0005",5,"S010","10점은 너무하신거 아닌가요?? 수업끝나고 남아서 자습하셔야 할거같아요.. 다음부터는 풀어주세요");
-- 피드백테이블
select * from feedback;

-- 선생님 수업과목 테이블
insert into teacher_course(subject_id, teacher_id) values ("S001","T001");
insert into teacher_course(subject_id, teacher_id) values ("S002","T001");
insert into teacher_course(subject_id, teacher_id) values ("S003","T001");
insert into teacher_course(subject_id, teacher_id) values ("S004","T005");
insert into teacher_course(subject_id, teacher_id) values ("S005","T002");
insert into teacher_course(subject_id, teacher_id) values ("S006","T004");
insert into teacher_course(subject_id, teacher_id) values ("S007","T003");
insert into teacher_course(subject_id, teacher_id) values ("S008","T003");
insert into teacher_course(subject_id, teacher_id) values ("S009","T006");
insert into teacher_course(subject_id, teacher_id) values ("S010","T001");


-- 선생님 수업과목테이블
select * from teacher_course;

-- 한 학생의 모든 과목 점수출력 하기
select A.stid, A.stname, subject_t.subject_name, A.gg
from subject_t
join 
(select student.student_id as stid, student.student_name as stname, grade.subject_id, grade.grade as gg
 from student
 join grade on student.student_id = grade.student_id)
 as A 
 on subject_t.subject_id = A.subject_id

