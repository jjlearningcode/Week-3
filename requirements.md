Equipment Checkout Database-Requirements 

	Mini-World Description
The equipment checkout database is designed for a university department that lends equipment to students.
This databse will replace spreadsheets and handwritten checkout forms with an organized system for tracking students, equipment, categories, and checkout transactions.
This specific department lends cameras, projectors, laptops, networking equipments, and laptops.

	Data the System Must Store 
	- Student information numbers, names, email addresses, phone numbers, and birth dates.
	- Information needed to determine whether equipment is currently checked out or has been returned late.
	- Category identification numbers, category names, and descriptions.
	- Equipment identification numbers, names, serial numbers, purchase dates, and current status.
	- Checkout identification numbers, the students borrowing the equipment, the equipment borrowed, checkout dates, due dates, return dates, and return conditions.

	Database Users
Students: Request equipment and check their borrowing information through authorized staff or a future student-facing system.
Department Staff: Register students and equipment, record cheackouts and returnes, and update equipment information.
Department adminsistrators: Review equipmetns inventory, overdue items, and borrowing activity.

	Business Rules
	1. Every student msut have a unique student ID
	2. Every piece of equipment must have a unique equipment ID and belongs to exactly one category
	3. A student may have zero, one, or many checkout transactions
	4. Every checkout transaction must be associated with exactly one student and one piece of equipment
	5. A piece of equipment may appear in multiple checkout transactions ove time
	6. A piece of equipment cannot be checked out to more than one student at the same time
	7. A student may exist in the database without ever borrowing equipment
	8. A return data must remain empty until the equipment is returned
	9. The return date cannot be earlier than the checkout date
	10.  Every checkout must have a checkout date and due date
	11. Equipment that has never been borrowed must remain in the inventory
	12. When equipment is returned, staff must record its condition

	Questions the Database Must Answer
1. Which students have borrowed equipment?
2. Which students are registered in the system?
3. Which student currently has aparticular piece of equipment?
4. What equipment does the department own?
5. What equipment belongs to each category?
6. What equipment is currently checked out?
7. What equipment has a particular student borrowed?
8. Which equipment has never been checked out?
9. Which checkouts are overdue and have not yet been returned?
10. What condition was the equipment in when it was returned?
11. Which items was returned after the due dates?
12. How many pieces of equipment belong to each category?

	Scope and Assumptions
This projects main focus is creating a databse for a university department that lends equipment to students. The databse will include four main entities: STUDENT,
CATEGORY, EQUIPMENT, and CHECKOUT. The database will keep checkout records after equipment is returned so the staff can review past borrowing activity. It will help staff identify equipment that is currently checked out, overdue items, and equipment that has been returned.

	Development Enviorment
Will be using Ubuntu Linux in VirtualBox to manage my project files. MySQL Workbench on my windows computer to write and execute the SQL statements
and view the database tables and query results. The projects files are organized in the Week 3 directory, and the completed assignment will be submitted through GitHub.

	AI USAGE DISCLOSURE
I used ChatGPT as an AI assistance to help me understand the project requirements, organize the databse design, and work through
the steps of creating the project files and SQL statements. I reviewed the guidence and used it to support my understanding of the database concepts. I am responsible for reviewing, testing, and understanding the final work I submit.
