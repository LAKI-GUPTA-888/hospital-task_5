-- # Task 5 SQL Script
-- Task 5: SQL Joins for Hospital Database

use Hospital;

-- 1. INNER JOIN: List patients and their assigned doctors for appointments
SELECT p.patient_id, p.first_name AS patient_name, d.doctor_id, d.first_name AS doctor_name, a.status
FROM Patients p
INNER JOIN Appointments a ON p.patient_id = a.patient_id
INNER JOIN Doctors d ON a.doctor_id = d.doctor_id;


-- 2. LEFT JOIN: Show all patients and their appointment details (if any)
SELECT p.patient_id, p.first_name AS patient_name, a.appointment_id, a.status
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id;


-- 3. RIGHT JOIN: Show all appointments and patient details (if any patient record exists)
SELECT p.patient_id, p.first_name AS patient_name, a.appointment_id, a.status
FROM Patients p
RIGHT JOIN Appointments a ON p.patient_id = a.patient_id;


-- 4. FULL OUTER JOIN (MySQL workaround): All patients and appointments, matched where possible
SELECT p.patient_id, p.first_name AS patient_name, a.appointment_id, a.status
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id
UNION
SELECT p.patient_id, p.first_name AS patient_name, a.appointment_id, a.status
FROM Patients p
RIGHT JOIN Appointments a ON p.patient_id = a.patient_id;


-- 5. CROSS JOIN: All possible doctor-patient combinations (for scheduling simulation)
SELECT p.first_name AS patient_name, d.first_name AS doctor_name
FROM Patients p
CROSS JOIN Doctors d;

select * from Patients;
-- 6. SELF JOIN: Patients on the same date (excluding themselves)
SELECT p1.first_name AS patient1, p2.first_name AS patient2, p1.created_at
FROM Patients p1
JOIN Patients p2 ON date(p1.created_at) = date(p2.created_at) AND p1.patient_id <> p2.patient_id;