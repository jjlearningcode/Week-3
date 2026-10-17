USE equipment_checkout;

/*Display all students*/
SELECT * FROM student;

/*Display all equipment*/
SELECT * FROM equipment;

/*Display equipment with category*/
SELECT equipment.equipment_name, category.category_name, equipment.status
FROM equipment
JOIN category ON equipment.category_id = category.category_id;

/*Display checkout history with equipment and student names*/
SELECT student.first_name, student.last_name, equipment.equipment_name, checkout.checkout_date, checkout.due_date, checkout.return_date
FROM checkout
JOIN student ON checkout.student_id = student.student_id
JOIN equipment ON checkout.equipment_id = equipment.equipment_id;

/*Find students who've borrowed equipment*/
SELECT DISTINCT student.student_id, student.first_name, student.last_name
FROM student
JOIN checkout ON student.student_id = checkout.student_id;

/*Find equipment currently checked out*/
SELECT equipment.equipment_name, checkout.checkout_date, checkout.due_date
FROM equipment
JOIN checkout ON equipment.equipment_id = checkout.equipment_id
WHERE checkout.return_date IS NULL;

/*Find students who have never checked out equipment*/
SELECT student.student_id, student.first_name, student.last_name
FROM student
WHERE NOT EXISTS (
SELECT * 
FROM checkout
WHERE checkout.student_id = student.student_id
);

/*Find equipment that has never been borrowed*/
SELECT equipment.equipment_id, equipment.equipment_name
FROM equipment
WHERE NOT EXISTS (
SELECT *
FROM checkout
WHERE checkout.equipment_id = equipment.equipment_id
);

/*Find equipment returned after its due date*/
SELECT checkout.checkout_id, student.first_name, student.last_name, equipment.equipment_name, checkout.due_date, checkout.return_date
FROM checkout
JOIN student ON checkout.student_id = student.student_id
JOIN equipment ON checkout.equipment_id = equipment.equipment_id
WHERE checkout.return_date > checkout.due_date;
