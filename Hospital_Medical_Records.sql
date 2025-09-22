CREATE TABLE Patient (
  Patient_ID INT PRIMARY KEY,
  Name VARCHAR(100),
  DOB DATE,
  Mobile_no VARCHAR(15)
);

CREATE TABLE Department (
  Department_ID INT PRIMARY KEY,
  Name VARCHAR(100),
  Contact_no VARCHAR(15)
);

CREATE TABLE Doctor (
  Doctor_ID INT PRIMARY KEY,
  Department_ID INT,
  Name VARCHAR(100),
  Department_Name VARCHAR(100),
  Mobile_no VARCHAR(15),
  FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

CREATE TABLE Appointment (
  Appointment_ID INT PRIMARY KEY,
  Patient_ID INT,
  Doctor_ID INT,
  Date DATE,
  FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
  FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

CREATE TABLE Medical_Record (
  Record_ID INT PRIMARY KEY,
  Patient_ID INT,
  Doctor_ID INT,
  Diagnosis VARCHAR(255),
  FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
  FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

CREATE TABLE Billing (
  Bill_ID INT PRIMARY KEY,
  Patient_ID INT,
  Bill_Date DATE,
  Amount DECIMAL(10,2),
  FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);

INSERT INTO Patient VALUES (10001, 'Aarav Sharma', '1990-05-12', '9876543210');
INSERT INTO Patient VALUES (10002, 'Priya Patel', '1985-03-23', '9876543211');
INSERT INTO Patient VALUES (10003, 'Rahul Gupta', '1978-11-05', '9876543212');
INSERT INTO Patient VALUES (10004, 'Sneha Reddy', '1995-08-17', '9876543213');
INSERT INTO Patient VALUES (10005, 'Karan Singh', '1988-12-30', '9876543214');
INSERT INTO Patient VALUES (10006, 'Anjali Mehta', '1992-01-10', '9876543215');
INSERT INTO Patient VALUES (10007, 'Vikram Joshi', '1983-07-29', '9876543216');
INSERT INTO Patient VALUES (10008, 'Deepika Rao', '1975-06-15', '9876543217');
INSERT INTO Patient VALUES (10009, 'Manish Kumar', '1998-02-20', '9876543218');
INSERT INTO Patient VALUES (10010, 'Anita Desai', '1980-04-25', '9876543219');
INSERT INTO Patient VALUES (10011, 'Rohit Nair', '1993-09-01', '9876543220');
INSERT INTO Patient VALUES (10012, 'Sunita Mukherjee', '1987-10-14', '9876543221');
INSERT INTO Patient VALUES (10013, 'Sanjay Chatterjee', '1979-05-03', '9876543222');
INSERT INTO Patient VALUES (10014, 'Neha Kapoor', '1994-03-12', '9876543223');
INSERT INTO Patient VALUES (10015, 'Arjun Verma', '1986-11-27', '9876543224');
INSERT INTO Patient VALUES (10016, 'Pooja Lal', '1991-07-08', '9876543225');
INSERT INTO Patient VALUES (10017, 'Kriti Sharma', '1982-12-19', '9876543226');
INSERT INTO Patient VALUES (10018, 'Suresh Iyer', '1977-10-07', '9876543227');
INSERT INTO Patient VALUES (10019, 'Divya Nair', '1989-06-21', '9876543228');
INSERT INTO Patient VALUES (10020, 'Ravi Joshi', '1996-04-15', '9876543229');

INSERT INTO Department VALUES (1, 'Cardiology', '01123456789');
INSERT INTO Department VALUES (2, 'Oncology', '02234567890');
INSERT INTO Department VALUES (3, 'Neurology', '03345678901');
INSERT INTO Department VALUES (4, 'Orthopedics', '04456789012');
INSERT INTO Department VALUES (5, 'Pediatrics', '05567890123');
INSERT INTO Department VALUES (6, 'General Surgery', '06678901234');
INSERT INTO Department VALUES (7, 'Radiology', '07789012345');
INSERT INTO Department VALUES (8, 'Emergency', '08890123456');
INSERT INTO Department VALUES (9, 'Dermatology', '09901234567');
INSERT INTO Department VALUES (10, 'Psychiatry', '01112345678');
INSERT INTO Department VALUES (11, 'Urology', '02223456789');
INSERT INTO Department VALUES (12, 'Nephrology', '03334567890');
INSERT INTO Department VALUES (13, 'Gastroenterology', '04445678901');
INSERT INTO Department VALUES (14, 'Endocrinology', '05556789012');
INSERT INTO Department VALUES (15, 'Pulmonology', '06667890123');
INSERT INTO Department VALUES (16, 'Ophthalmology', '07778901234');
INSERT INTO Department VALUES (17, 'Pathology', '08889012345');
INSERT INTO Department VALUES (18, 'Anesthesiology', '09990123456');
INSERT INTO Department VALUES (19, 'Plastic Surgery', '01101234567');
INSERT INTO Department VALUES (20, 'Pediatrics ICU', '02212345678');

INSERT INTO Doctor VALUES (1, 1, 'Dr. Amit Sharma', 'Cardiology', '9876500001');
INSERT INTO Doctor VALUES (2, 2, 'Dr. Neha Patel', 'Oncology', '9876500002');
INSERT INTO Doctor VALUES (3, 3, 'Dr. Rahul Desai', 'Neurology', '9876500003');
INSERT INTO Doctor VALUES (4, 4, 'Dr. Sneha Reddy', 'Orthopedics', '9876500004');
INSERT INTO Doctor VALUES (5, 5, 'Dr. Karan Singh', 'Pediatrics', '9876500005');
INSERT INTO Doctor VALUES (6, 6, 'Dr. Anjali Mehta', 'General Surgery', '9876500006');
INSERT INTO Doctor VALUES (7, 7, 'Dr. Vikram Joshi', 'Radiology', '9876500007');
INSERT INTO Doctor VALUES (8, 8, 'Dr. Deepika Rao', 'Emergency', '9876500008');
INSERT INTO Doctor VALUES (9, 9, 'Dr. Manish Kumar', 'Dermatology', '9876500009');
INSERT INTO Doctor VALUES (10, 10, 'Dr. Anita Desai', 'Psychiatry', '9876500010');
INSERT INTO Doctor VALUES (11, 11, 'Dr. Rohit Nair', 'Urology', '9876500011');
INSERT INTO Doctor VALUES (12, 12, 'Dr. Sunita Mukherjee', 'Nephrology', '9876500012');
INSERT INTO Doctor VALUES (13, 13, 'Dr. Sanjay Chatterjee', 'Gastroenterology', '9876500013');
INSERT INTO Doctor VALUES (14, 14, 'Dr. Neha Kapoor', 'Endocrinology', '9876500014');
INSERT INTO Doctor VALUES (15, 15, 'Dr. Arjun Verma', 'Pulmonology', '9876500015');
INSERT INTO Doctor VALUES (16, 16, 'Dr. Pooja Lal', 'Ophthalmology', '9876500016');
INSERT INTO Doctor VALUES (17, 17, 'Dr. Kriti Sharma', 'Pathology', '9876500017');
INSERT INTO Doctor VALUES (18, 18, 'Dr. Suresh Iyer', 'Anesthesiology', '9876500018');
INSERT INTO Doctor VALUES (19, 19, 'Dr. Divya Nair', 'Plastic Surgery', '9876500019');
INSERT INTO Doctor VALUES (20, 20, 'Dr. Ravi Joshi', 'Pediatrics ICU', '9876500020');

INSERT INTO Appointment VALUES (10001, 10007, 1, '2024-08-14');
INSERT INTO Appointment VALUES (10002, 10004, 5, '2022-01-15');
INSERT INTO Appointment VALUES (10003, 10013, 16, '2024-12-04');
INSERT INTO Appointment VALUES (10004, 10011, 2, '2023-09-13');
INSERT INTO Appointment VALUES (10005, 10020, 10, '2022-07-11');
INSERT INTO Appointment VALUES (10006, 10007, 1, '2021-02-23');
INSERT INTO Appointment VALUES (10007, 10012, 7, '2021-01-21');
INSERT INTO Appointment VALUES (10008, 10020, 18, '2022-11-03');
INSERT INTO Appointment VALUES (10009, 10001, 8, '2021-03-29');
INSERT INTO Appointment VALUES (10010, 10009, 17, '2024-02-19');
INSERT INTO Appointment VALUES (10011, 10010, 16, '2023-07-23');
INSERT INTO Appointment VALUES (10012, 10017, 20, '2023-09-07');
INSERT INTO Appointment VALUES (10013, 10017, 19, '2022-01-26');
INSERT INTO Appointment VALUES (10014, 10009, 2, '2021-10-18');
INSERT INTO Appointment VALUES (10015, 10012, 10, '2022-06-11');
INSERT INTO Appointment VALUES (10016, 10015, 17, '2024-06-13');
INSERT INTO Appointment VALUES (10017, 10016, 7, '2024-03-26');
INSERT INTO Appointment VALUES (10018, 10006, 3, '2021-11-02');
INSERT INTO Appointment VALUES (10019, 10009, 20, '2023-05-13');
INSERT INTO Appointment VALUES (10020, 10006, 15, '2022-04-24');

INSERT INTO Medical_Record VALUES (10001, 10007, 1, 'Diabetes Mellitus');
INSERT INTO Medical_Record VALUES (10002, 10004, 6, 'Hypertension');
INSERT INTO Medical_Record VALUES (10003, 10020, 16, 'Asthma');
INSERT INTO Medical_Record VALUES (10004, 10013, 18, 'Migraine');
INSERT INTO Medical_Record VALUES (10005, 10020, 11, 'Arthritis');
INSERT INTO Medical_Record VALUES (10006, 10008, 11, 'Skin Allergy');
INSERT INTO Medical_Record VALUES (10007, 10019, 2, 'Back Pain');
INSERT INTO Medical_Record VALUES (10008, 10006, 5, 'Pneumonia');
INSERT INTO Medical_Record VALUES (10009, 10002, 12, 'Thyroid Disorder');
INSERT INTO Medical_Record VALUES (10010, 10005, 13, 'Gastritis');
INSERT INTO Medical_Record VALUES (10011, 10014, 8, 'Epilepsy');
INSERT INTO Medical_Record VALUES (10012, 10010, 1, 'Anemia');
INSERT INTO Medical_Record VALUES (10013, 10019, 8, 'Bronchitis');
INSERT INTO Medical_Record VALUES (10014, 10009, 20, 'Depression');
INSERT INTO Medical_Record VALUES (10015, 10009, 19, 'Tuberculosis');
INSERT INTO Medical_Record VALUES (10016, 10012, 6, 'Heart Disease');
INSERT INTO Medical_Record VALUES (10017, 10003, 1, 'Kidney Stone');
INSERT INTO Medical_Record VALUES (10018, 10004, 14, 'Skin Infection');
INSERT INTO Medical_Record VALUES (10019, 10004, 17, 'Liver Cirrhosis');
INSERT INTO Medical_Record VALUES (10020, 10013, 4, 'Chronic Pain');

INSERT INTO Billing VALUES (10001, 10015, '2024-09-30', 1691.60);
INSERT INTO Billing VALUES (10002, 10016, '2022-08-18', 4591.42);
INSERT INTO Billing VALUES (10003, 10020, '2023-11-17', 3410.51);
INSERT INTO Billing VALUES (10004, 10005, '2024-06-11', 1229.59);
INSERT INTO Billing VALUES (10005, 10014, '2021-02-09', 2803.31);
INSERT INTO Billing VALUES (10006, 10019, '2020-08-09', 3600.81);
INSERT INTO Billing VALUES (10007, 10017, '2021-05-03', 2033.78);
INSERT INTO Billing VALUES (10008, 10013, '2022-07-16', 2126.84);
INSERT INTO Billing VALUES (10009, 10018, '2020-03-12', 4711.85);
INSERT INTO Billing VALUES (10010, 10002, '2023-09-21', 4802.22);
INSERT INTO Billing VALUES (10011, 10011, '2020-12-05', 4579.03);
INSERT INTO Billing VALUES (10012, 10018, '2021-04-04', 1991.87);
INSERT INTO Billing VALUES (10013, 10001, '2020-02-04', 3622.76);
INSERT INTO Billing VALUES (10014, 10020, '2024-06-23', 1586.01);
INSERT INTO Billing VALUES (10015, 10014, '2022-05-14', 3731.58);
INSERT INTO Billing VALUES (10016, 10015, '2021-09-10', 1064.72);
INSERT INTO Billing VALUES (10017, 10015, '2022-07-27', 3966.44);
INSERT INTO Billing VALUES (10018, 10007, '2023-08-11', 1329.74);
INSERT INTO Billing VALUES (10019, 10020, '2020-06-04', 4786.67);
INSERT INTO Billing VALUES (10020, 10002, '2023-04-04', 4108.75);

Select*from Appointment
    -> where patient_id = 10001;

select name, doctor_id from doctor
    -> where department = "emergency";

SELECT Record_ID, Diagnosis, Doctor_ID
    -> FROM Medical_Record
    -> where Patient_ID = 10005;

SELECT * FROM BILLING
    -> WHERE Patient_Id = 10011
  
select * FROM PATIENT
    -> Where patient_id = 10020;












