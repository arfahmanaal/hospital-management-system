create database hospital_management;

use hospital_management;

CREATE TABLE user_login (
 user_id VARCHAR(10) PRIMARY KEY,
    user_password VARCHAR(15),
    first_name VARCHAR(15),
    last_name VARCHAR(15),
    sign_up_on DATE,
    email_id VARCHAR(30)
);

CREATE TABLE patient (
    email VARCHAR(50) PRIMARY KEY,
    password varchar(30) NOT NULL,
    name VARCHAR(50) NOT NULL,
    address varchar(60) NOT NULL,
    gender VARCHAR(20) NOT NULL
);

CREATE TABLE medical_history (
    medical_history_id INT PRIMARY KEY,
    date DATE NOT NULL,
    conditions VARCHAR(100) NOT NULL,
    surgeries VARCHAR(100) NOT NULL,
    medication VARCHAR(100) NOT NULL
);

CREATE TABLE doctor (
    email VARCHAR(50) PRIMARY KEY,
    gender VARCHAR(20) NOT NULL,
    password VARCHAR(30) NOT NULL,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE appointment (
    appointment_id INT PRIMARY KEY,
    date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    status varchar(15) NOT NULL
);

CREATE TABLE patient_visits (
    patient VARCHAR(50) NOT NULL,
    appt INT,
    concerns VARCHAR(40) NOT NULL,
    symptoms VARCHAR(40) NOT NULL,
    FOREIGN KEY (patient) REFERENCES hospital_management.patient (email),
    FOREIGN KEY (appt) REFERENCES hospital_management.appointment (appointment_id),
    PRIMARY KEY (patient, appt)
);

CREATE TABLE schedule (
    schedule_id SERIAL UNIQUE,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    break_time TIME NOT NULL,
    day varchar(20) NOT NULL,
    PRIMARY KEY (schedule_id, start_time, end_time, break_time, day)
);

CREATE TABLE patients_history (
    patient VARCHAR(50) NOT NULL,
    history INT PRIMARY KEY,
    FOREIGN KEY (patient) REFERENCES hospital_management.patient (email),
    FOREIGN KEY (history) REFERENCES hospital_management.medical_history (medical_history_id)
);

CREATE TABLE diagnose (
    appt INT,
    doctor VARCHAR(50) NOT NULL,
    diagnosis varchar(40) NOT NULL,
    prescription VARCHAR(50) NOT NULL,
    FOREIGN KEY (appt) REFERENCES hospital_management.appointment (appointment_id),
    FOREIGN KEY (doctor) REFERENCES hospital_management.doctor (email),
    PRIMARY KEY (appt, doctor)
);

CREATE TABLE doctor_schedules (
    sched SERIAL,
    doctor VARCHAR(50) NOT NULL,
    FOREIGN KEY (sched) REFERENCES hospital_management.schedule (schedule_id),
    FOREIGN KEY (doctor) REFERENCES hospital_management.doctor (email),
    PRIMARY KEY (sched, doctor)
);

CREATE TABLE doctor_view_history (
    history INT,
    doctor VARCHAR(50) NOT NULL,
    FOREIGN KEY (doctor) REFERENCES hospital_management.doctor (email),
    FOREIGN KEY (history) REFERENCES hospital_management.medical_history (medical_history_id),
    PRIMARY KEY (history, doctor)
);

