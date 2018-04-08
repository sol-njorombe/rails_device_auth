# Tables
1. Users
2. Roles
3. UserRoles (user, role)
4. Components
5. AdminType
6. AdminTypePermissions (admin_types, components)
7. Admins (user, admin_type)
8. Admin_Permissions (Module/Table, admin, role)
----
System Specific

----
9. Students (user)
10. Staff (user)
11. Teachers (user)
12. Parents (user)
13. Student_parents (student, parent)
----
Learning

-----
14. levels
15. streams
16. classes (level, stream)
17. departments
18. courses (department)
19. level_courses (level, course)
20. class_years (year, class)
21. class_students (class_year, student)
22. level_year_course (level, year, course, teacher)
23. class_year_course (level_year_course, teacher)
24. class_year_course_students (level_year_course, class_year_course, student)
25. timetable_slots
26. timetable (class_year_course, class_years, timetable_slots)
----
Finances

----
27. term
28. term_charges
29. term_charges_level
30. term_charges_class
31. student_invoice
32. student_payments

# User Roles
1. SysAdmin
2. Admin
3. Teacher
4. Student
5. Staff
6. Parent

# Use Case
## SysAdmin
1. Users (CRUD)
2. Components (Read)
3. Roles (Read)
4. Role_users(CRUD)
5. AdminTypes (CRUD)
6. AdminTypes_Permissions(CRUD)
7. Admins (CRUD) [type determines inherited permissions]
8. Admin_Permissions (CRUD) [Additional custom permissions]

## Admin
All tables (Dependent on permissions)

## Teacher
1. Administrative roles
2. class_year_course
3. class_year_course_students
4. timetable

## Student
1. user (Read Update)
2. student (Read)
3. Parent (Read)
4. class_year_course_students
5. student_invoice
6. any administrative role they may have

## Staff
1. any administrative role

## Parent
1. students
2. student_invoice
3. student_payments
