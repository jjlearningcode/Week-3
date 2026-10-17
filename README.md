University Equipment Checkout Database

	Project Overview
This database is for a univeristy department that lends equipment to students. The database helps the department keep track of students, equipment, equipment categories, and checkout records.

	Database Tables
	- Student: Stores student names, email addresses, phone numbers, and birth dates
	- Equipment: Stores equipment names, serial numbers, purchase dates, categories, and avaliability status
	- Category: Store equipment categories and descriptions
	- Checkoutt: Stores checkout dates, due dates, return dates, and return conditions

	Relationships
	- Each checkout record belongs to one student and one equipment item
	- One equipmennt item can appear in multiple checkout records over time
	- One category can contain many equipment items
	- One student can have many checkout records

	Business Rules
	1. Equipment returned after its due date is considered a late return
	2. A returned item can be borrowed again, creating a new checkout record
	3. A NULL return date means the equipment has not yet been returned
	4. Every student has a unique student ID and email address
	5. Every equipment item has a unique equipment ID and serial number
	6. Every equipment item belongs to a category
	7. Every checkout record refers to an existing student and equipment item
	8. Every checkout has a checkout date and due date
	9. Equipment returned after its due date is considered a late return
	10. Students and equipmeent can exist in the database without any checkout records

	HOW TO RUN THE PROJECT
	1. Open MySQL
	2. Run schema.sql to create the database and tables
	3. Run data.sql to insert the sample records
	4. Run queries.sql to view the query results
	- If your Ubuntu installation uses socket authentication, log in with sudo mysql and run the files from the MySQL prompt instead
		- mysql -u root -p < schema.sql
		- mysql -u root -p < data.sql
		- mysql -u root -p < queries.sql

	Development Enviornment
The projecr uses MySQL on Ubuntu Linux. The SQL files are organized in this Week3 project folder which is submmitted through this github link.

	
	
CONCEPTUAL AND LOGICAL DESIGN QUESTIONS
1. What mini-world does your database represent?
The database represents a univerisity department that lends equipment to students.
It tracks students, equipment categories, equipment items, and checkout records.
2. What are your entity types?
The four entity types are Student, Category, Equipment, and Checkout
3. Give an example of an entity instance
One example is a student entity with Student ID 1, first name Aaliyah, last name Johnson, and email aaliyah.johnson@example.com
4. Which attributes are keys?
Primaty keys consist of student_id, category_id, equipment_id, and checkout_id. The email attribute will be the Student and serial_number in Equipment are also unique.
5. Which attributes are simple?
Each attribute stores its own individual value.
checkout_date, category_name, first_name, last_name, equipment_name, phone number, and serial_number.
6. Which attribute was modeled as composite?
Students name can be considered a composite attribute because it can be divided into first name and last name.
For logical deesign, it's stored as two separate attributes: first_name and last_name.
7. Which attribtue was modeled as multivalued?
A student could have multiple phone sumbers, so Phone Number could be modeled as a multivalued attribute in the conceptual design.
8. Which attribute was derived?
Late-return status can be derived by comparing return_date with due_date. Return date is later than the due date, the checkout is late.
9. Identify one 1:N relationship and explain it.
Relationship between student and checkout is 1:N. One student can have many checkout records over time, but each checkout record belongs to one students.
10. Identify one instance of total particiaption
Checkout has total participation in its relationship in its relationship with Student because every checkout record must be associated with an existing student. The student_id foreign key is required and cannot be NULL.
11. Identify one instance of partial participation
Student has partial participation in the checkout relationship becuase a student can be registered in the database without ever borrowing equipment
12. Describe one design decision you cheanged while moving from the conceptual model to the logical model
Conceptual design, a student's full name can be represented as one compostie attribute. 
When moving to the logical design, I separated if into first_name and last_name so that each part can be stored and searched independently.

	AI USAGE DISCLOSURE
ChatGPT was used to help understood the assignment requirements, organize the database design, and troubleshoot SQL statements.
The SQL and project files should be reviewed and tested by the students to confirm that they meet the assignment requirement.
