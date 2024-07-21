INSERT INTO user_login (user_id, user_password, first_name, last_name, sign_up_on, email_id)
VALUES ('USR001', 'password123', 'John', 'Doe', CURDATE(), 'john.doe@hospital.com');
INSERT INTO user_login (user_id, user_password, first_name, last_name, sign_up_on, email_id)
VALUES ('USR002', 'password456', 'Jane', 'Smith', CURDATE(), 'jane.smith@hospital.com');
INSERT INTO user_login (user_id, user_password, first_name, last_name, sign_up_on, email_id)
VALUES ('USR003', 'password789', 'Michael', 'Lee', CURDATE(), 'michael.lee@hospital.com');

INSERT INTO patient (email, password, name, address, gender)
VALUES ('patient1@hospital.com', 'patient_pwd1', 'Alice Johnson', '123 Main St', 'Female');
INSERT INTO patient (email, password, name, address, gender)
VALUES ('patient2@hospital.com', 'patient_pwd2', 'Bob Williams', '456 Elm St', 'Male');
INSERT INTO patient (email, password, name, address, gender)
VALUES ('patient3@hospital.com', 'patient_pwd3', 'Charlie Brown', '789 Oak Ave', 'Male');

INSERT INTO medical_history (medical_history_id, date, conditions, surgeries, medication)
VALUES (1,'2023-01-01', 'Diabetes', 'None', 'Metformin');
INSERT INTO medical_history (medical_history_id, date, conditions, surgeries, medication)
VALUES (2,'2022-05-10', 'Asthma', 'None', 'Albuterol inhaler');
INSERT INTO medical_history (medical_history_id, date, conditions, surgeries, medication)
VALUES (3,'2024-02-15', 'High Blood Pressure', 'None', 'Lisinopril');

INSERT INTO doctor (email, gender, password, name)
VALUES ('doctor1@hospital.com', 'Male', 'doctor_pwd1', 'Dr. Thomas Garcia (Cardiology)'),
       ('doctor2@hospital.com', 'Female', 'doctor_pwd2', 'Dr. Sarah Miller (Pulmonology)'),
       ('doctor3@hospital.com', 'Male', 'doctor_pwd3', 'Dr. David Kim (General Practice)');

INSERT INTO appointment (appointment_id, date, start_time, end_time, status)
VALUES (1,'2024-07-26', '10:00:00', '10:30:00', 'Pending'),
       (2,'2024-07-27', '11:00:00', '11:45:00', 'Confirmed'),
       (3,'2024-07-28', '09:00:00', '09:30:00', 'Completed');

INSERT INTO patient_visits (patient, appt, concerns, symptoms)
VALUES ('patient1@hospital.com', 1, 'High Blood Sugar', 'Headache, Fatigue'),
       ('patient2@hospital.com', 2, 'Shortness of Breath', 'Wheezing'),
       ('patient3@hospital.com', 3, 'General Checkup', 'None');

INSERT INTO schedule (start_time, end_time, break_time, day)
VALUES ('09:00:00', '12:00:00', '10:00:00', 'Monday'),
       ('13:00:00', '17:00:00', '14:00:00', 'Monday'),
       ('09:00:00', '12:00:00', '10:30:00', 'Tuesday'),
       ('13:00:00', '16:00:00', '14:00:00', 'Tuesday');


