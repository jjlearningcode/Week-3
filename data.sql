USE equipment_checkout;;

INSERT INTO category (category_id, category_name, description)
VALUES
(1. 'Laptops', 'Laptop computers for student use'),
(2, 'Cameras', 'Digital cameras and photography equipment'),
(3, 'Tablets', 'Tablets for classroom activities'),
(4, 'Audio Equipment', 'Microphones and audio recording devices'),
(5, 'Projectors', 'Projectors for presentations');

INSERT INTO student (student_id, first_name, last_name, email, phone_number, birth_date)
VALUES
(1, 'Aaliyah', 'Johnson', 'aaliyah.johnson@example.com', '2025550101', '2005-03-12'),
(2, 'Malik', 'Williams', 'malik.williams@example.com', '2025550102', '2004-07-22'),
(3, 'Jordan', 'Brown', 'jordan.brown@example.com', '2025550103', '2005-01-15'),
(4, 'Iman', 'Davis', 'imani.davis@example.com', '2025550104', '2004-11-08') 
(5, 'Devin', 'Miller', 'devin.miller@example.com', '2025550105', '2005-05-19'),
(6, 'Nia', 'Wilson', 'nia.wilson@example.com', '2025550106', '2004-09-30''),
(7, 'Kai', 'Moore', 'kai.moore@example.com', '2025550107', '2005-02-25'),
(8, 'Zora', 'Taylor', 'zora.taylor@example.com', '2025550108', '2004-12-03'),
(9, 'Amari', 'Thomas', 'amari.thomas@example.com', '2025550109','2005-06-14'), 
(10, 'Skye', 'Jackson', 'skye.jackson@example.com', '2025550110', '2004-04-27');

INSERT INTO equipment
(equipment_id, category_id, equipment_name, serial_number, purchase_date, status)
VALUES
(1, 1, 'Dell Laptop 1', 'LAP1001', '2025-01-10', 'Available'),
(2, 1, 'Dell Laptop 2','LAP1002', '2025-01-10', 'Available'), 
(3, 1, 'HP Laptop 1', 'LAP1003', '2025-05-15', 'Available'),
(4, 1, 'HP Laptop 2', 'LAP1004', '2025-02-15', 'Available'),
(5, 1, 'Lenovo Laptop 1', 'LAP1005', '2025-03-20', 'Available'),
(6, 2, 'Canon Camera 1', 'CAM2001', '2025-01-12', 'Available'),
(7, 2, 'Canan Camera 2', 'CAM2002', '2025-01-12', 'Available'),
(8, 2, 'Nikon Camera 1', 'CAM2003', '2025-04-05', 'Available'),
(9, 3, 'Samsung Tablet', 'TAB3001', '2025-02-01', 'Available'),
(10, 3, 'Samsung Tablet', 'TAB3002', '2025-02-01', 'Available'),
(11. 3, 'iPad 1', 'TAB3003', '2025-03-11', 'Available'),
(12, 4, 'USB Microphone 1', 'AUD4001', '2025-01-18', 'Available'),
(13, 4, 'USB Microphone 2', 'AUD4001', '2025-01-18', 'Available'),
(14, 5, 'Epson Projector 1', 'PRO5001', '2025-02-22', 'Available'), 
(15, 5, 'Epson Projector 2', 'PRO5002', '2025-02-22', 'Available'),
(16, 5, 'Epson Projector 3', 'PRO5003', '2025-03-01', 'Available');

INSERT INTO checkout
(checkout_id, student_id, equipment_id, checkout_date, due_date, return_date, return_condition)
VALUES
(1, 1, 1, '2026-09-01', '2026-09-08', '2026-09-07', 'Good'),
(2, 2, 2, '2026-09-02', '2026-09-09', '2026-09-09', 'Good'),
(3, 3, 6, '2026-09-03', '2026-09-10', '2026-09-10', 'Good'),
(4, 4, 9, '2026-09-04', '2026-09-11', '2026-09-10', 'Good'),
(5, 5, 12, '2026-09-05', '2026-09-12', '2026-09-12', 'Good'),
(6, 6, 3, '2026-09-08', '2026-09-15','2026-09-17', 'Good - Late Return'),
(7, 7, 7, '2026-09-09', '2026-09-16', '2026-09-15', 'Good'),
(8, 8, 10, '2026-09-10', '2026-09-17', '2026-09-16', 'Good'),
(9, 1, 4, '2026-09-12', '2026-09-19', '2026-09-18', 'Good'),
(10, 2, 8, '2026-09-13', '2026-09-20', '2026-09-20', 'Good'),
(11, 3, 11, '2026-09-15', '2026-09-22', '2026-09-21', 'Good'),
(12, 4, 13, '2026-09-16', '2026-09-23', '2026-09-22', 'Good'),
(13, 5, 14, '2026-09-18', '2026-09-25', '2026-09-24', 'Good'),
(14, 6, 5, '2026-09-20', '2026-09-27', NULL, NULL),
(15, 7, 2, '2026-10-01', '2026-10-18', NULL, NULL),
(16, 8, 6, '2026-10-03', '2026-10-10', NULL, NULL),
(17, 9, 9, '2026-10-05', '2026-10-12', NULL, NULL),
(18, 1, 12, '2026-10-08', '2026-10-15', NULL, NULL),
(19, 2, 15, '2026-10-10', '2026-10-17', NULL, NULL),
(20, 3, 3, '2026-10-12', '2026-10-19', NULL, NULL);

