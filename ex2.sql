1-select * from room where capacity>=100

2-select * from course where start_time=(select min(start_time) from course )

4-select e.crn from enrolled e, majorsIn m,department d 
	where e.student_id=m.student_id and d.id=m.dept_id and d.name='BIF'
	 
5-selet * from student where id not in (select student_id from enrolled )

6-select count(m.student_id) from majorsIn m,department d 
	where d.id=m.dept_id and d.name='CS' and   course_crn='CSC275'

7-select count(e.student_id) from enrolled e, majorsIn m,department d 
	where e.student_id=m.student_id and d.id=m.dept_id and d.name='CS'

8-select student_id,  count(dept_id) from majorsIn  group by student_id

9-select  d.name,count(m.student_id)from majorsIn m,department d 
	where  d.id=m.dept_id having count(distinct)>1
  