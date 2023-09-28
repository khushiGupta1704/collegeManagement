use DB_NewGrowAMC;
create table session(id int primary key IDENTITY(1,1),year varchar(255))
insert into session values('2022-2023')
create table sliders(id int primary key IDENTITY(1,1),title nvarchar(max),page_name nvarchar(max),sub_title nvarchar(max),image nvarchar(max),description nvarchar(max),position int,status int,url nvarchar(max),meta_title nvarchar(max),meta_tag nvarchar(max),meta_description nvarchar(max),created_date nvarchar(max))
create table messages(id int primary key IDENTITY(1,1),name nvarchar(max),image nvarchar(max),position int,status int,designation nvarchar(max),message nvarchar(max),meta_title nvarchar(max),meta_tag nvarchar(max),meta_description nvarchar(max),created_date nvarchar(max)) 
create table news_updates(id int primary key IDENTITY(1,1),title nvarchar(max),news_date nvarchar(max),image nvarchar(max),description nvarchar(max),position int,status int,url nvarchar(max),meta_title nvarchar(max),meta_tag nvarchar(max),meta_description nvarchar(max),created_date nvarchar(max))
create table testimonials(id int primary key IDENTITY(1,1),name nvarchar(max),image nvarchar(max),position int,status int,profession nvarchar(max),comment nvarchar(max),meta_title nvarchar(max),meta_tag nvarchar(max),meta_description nvarchar(max),created_date nvarchar(max)) 
create table image_gallery(id int primary key IDENTITY(1,1),title nvarchar(max),image nvarchar(max),session_id int,position int,status int,description nvarchar(max),created_date nvarchar(max),FOREIGN KEY (session_id) REFERENCES session(id)) 
create table courses(id int primary key IDENTITY(1,1),name nvarchar(max),image nvarchar(max),position int,status int,description nvarchar(max),meta_title nvarchar(max),meta_tag nvarchar(max),meta_description nvarchar(max),created_date nvarchar(max)) 
create table topper_list(id int primary key IDENTITY(1,1),session_id int,course_id int,stu_position int,name nvarchar(max),father_name nvarchar(max),stu_percentage nvarchar(max),image nvarchar(max),position int,status int,created_date nvarchar(max),FOREIGN KEY (session_id) REFERENCES session(id),FOREIGN KEY (course_id) REFERENCES courses(id)) 
create table blogs(id int primary key IDENTITY(1,1),title nvarchar(max),image nvarchar(max),description nvarchar(max),position int,status int,course_id int,url nvarchar(max),meta_title nvarchar(max),meta_tag nvarchar(max),meta_description nvarchar(max),created_date nvarchar(max),FOREIGN KEY (course_id) REFERENCES courses(id))
create table videos(id int primary key IDENTITY(1,1),title nvarchar(max),sub_title nvarchar(max),image nvarchar(max),description nvarchar(max),position int,status int,url nvarchar(max),meta_title nvarchar(max),meta_tag nvarchar(max),meta_description nvarchar(max),created_date nvarchar(max))
create table faqs(id int primary key IDENTITY(1,1),question nvarchar(max),answer nvarchar(max),position int ,status int,created_date nvarchar(max))
create table tags(id int primary key IDENTITY(1,1),title nvarchar(max),url nvarchar(max),page_name nvarchar(max),position int ,status int,created_date nvarchar(max))
create table inquiry(id int primary key IDENTITY(1,1),name nvarchar(max),email nvarchar(max),phone_no nvarchar(max),address nvarchar(max),course_id int,status int,message nvarchar(max),created_date nvarchar(max),FOREIGN KEY (course_id) REFERENCES courses(id))
create table apply_course(id int primary key IDENTITY(1,1),name nvarchar(max),father_name nvarchar(max),email nvarchar(max),phone_no nvarchar(max),address nvarchar(max),course_id int,date_of_birth nvarchar(max),qualification nvarchar(max),status int,message nvarchar(max),created_date nvarchar(max),FOREIGN KEY (course_id) REFERENCES courses(id))
create table students(id int primary key IDENTITY(1,1),name nvarchar(max),father_name nvarchar(max),mother_name nvarchar(max),gender nvarchar(max),date_of_birth nvarchar(max),nationality nvarchar(max),category nvarchar(max),address nvarchar(max),city nvarchar(max),state int,email nvarchar(max),phone_no nvarchar(max),course_id int,session_id int,qualification nvarchar(max),profile_image nvarchar(max),id_proof nvarchar(max),qualification_proof nvarchar(max),status int,created_date nvarchar(max),FOREIGN KEY (course_id) REFERENCES courses(id),FOREIGN KEY (session_id) REFERENCES session(id),FOREIGN KEY (state) REFERENCES states(id))
SELECT students.*,courses.name as course_name,session.year as session_name,states.name as state_name from students inner join courses on students.course_id=courses.id inner join session on students.session_id=session.id inner join states on students.state=states.id
SELECT Distinct courses.name AS Expr1,session.year,session.id as session_id,courses.id AS course_id FROM students INNER JOIN session ON students.session_id = session.id INNER JOIN courses ON students.course_id = courses.id order by session.year desc
create table pdf_notifications(id int primary key IDENTITY(1,1),title nvarchar(max),pdf_file nvarchar(max),status int,created_date nvarchar(max))
CREATE TABLE states (id int primary key,name varchar(100))
create table student_corner(id int primary key IDENTITY(1,1),title nvarchar(max),type nvarchar(max),course_id int,session_id int,pdf_file nvarchar(max),status int,created_date nvarchar(max),FOREIGN KEY (course_id) REFERENCES courses(id),FOREIGN KEY (session_id) REFERENCES session(id))
create table our_team(id int primary key IDENTITY(1,1),name nvarchar(max),image nvarchar(max),resume nvarchar(max),course_id int,designation nvarchar(max),working_interval nvarchar(max),email nvarchar(max),phone_no nvarchar(max),position nvarchar(max),status int,address nvarchar(max),state int,city nvarchar(max),pin_code nvarchar(max),created_date varchar(max),FOREIGN KEY (course_id) REFERENCES courses(id),FOREIGN KEY (state) REFERENCES states(id)) 
select * from students
"SELECT Distinct courses.name AS Expr1,session.year,session.id as session_id,courses.id AS course_id,student_corner.type as student_type FROM student_corner INNER JOIN session ON student_corner.session_id = session.id INNER JOIN courses ON student_corner.course_id = courses.id where type=''Study Material''order by session.year desc

'new user','Result','7','1','data/a7702fe7-a31f-47ee-a85c-e9e4f6455e17.html','1','11-05-2023 15:02:45
INSERT INTO states (id, name) VALUES
(1, 'Andaman and Nicobar Islands'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli'),
(9, 'Daman and Diu'),
(10, 'Delhi'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kenmore'),
(19, 'Kerala'),
(20, 'Lakshadweep'),
(21, 'Madhya Pradesh'),
(22, 'Maharashtra'),
(23, 'Manipur'),
(24, 'Meghalaya'),
(25, 'Mizoram'),
(26, 'Nagaland'),
(27, 'Narora'),
(28, 'Natwar'),
(29, 'Odisha'),
(30, 'Paschim Medinipur'),
(31, 'Pondicherry'),
(32, 'Punjab'),
(33, 'Rajasthan'),
(34, 'Sikkim'),
(35, 'Tamil Nadu'),
(36, 'Telangana'),
(37, 'Tripura'),
(38, 'Uttar Pradesh'),
(39, 'Uttarakhand'),
(40, 'Vaishali'),
(41, 'West Bengal')
select * from topper_list
drop table students
select topper_list.*,session.year,courses.name from topper_list inner join session on session.id=topper_list.session_id inner join courses on courses.id=topper_list.course_id where topper_list.status=1 group by topper_list.session_id order by topper_list.stu_position
update messages set message="With a website as sleekly designed, interactive, and easy to navigate as UMDs undergraduate admissions site, its no surprise theyve already snagged one of the final five nomination spots for best admissions website this year. The website was designed by the communications firm Frause." where designation="Teacher"


SELECT Distinct courses.name AS Expr1,session.year
FROM     topper_list INNER JOIN
                  session ON topper_list.session_id = session.id INNER JOIN
                  courses ON topper_list.course_id = courses.id order by session.year desc


				  select * from topper_list where session_id=1 and course_id=7 and status=1 order by stu_position