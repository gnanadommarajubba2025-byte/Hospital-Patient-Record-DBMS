**Hospital Database Project - README**

**Overview**
This project designs and implements a relational database for a hospital management system. It models strong entities such as Patients, Doctors, Departments, Appointments and weak entities such as Medical Records, and Billing.

**Database Design:**
1. Patient (Strong Entity)
  Attributes: Patient_ID (PrimaryKey), Name, Date_Of_Birth, Mobile_No.

2. Doctor (Strong Entity)
Attributes: Doctor_ID (PrimaryKey), Department_ID (ForeignKey), Name, Department, Mobile_no.

3. Department (Strong Entity)
Attributes: Department_ID (PrimaryKey), Name, Mobile_no.

4. Appointment (Strong Entity)
Attributes: Appointment_ID (PrimaryKey), Patient_ID (ForeignKey), Doctor_ID (FK), Date.

5. Medical_Record (Weak Entity)
Attributes: Record_ID (PrimaryKey), Patient_ID (ForeignKey), Doctor_ID (ForeignKey), Diagnosis.

6. Billing (Weak Entity)
Attributes: Bill_ID (PrimaryKey), Patient_ID (ForeignKey), Bill_Date, Amount.

The design uses primary keys for unique identification and foreign keys to maintain references between related tables.

**Relationships:**
Patient has Appointment
Doctor treats Appointment
Doctor belongs to Department
Patient has Medical_Record
Patient gets Billing

**Sample Queries:**
1. List all appointments of a specific patient

2. Find doctor of a department by department name

3. Get all medical records for a given patient

4. Show billing details for a specific patient

5. Find Patient details using Patient ID

**Technology used for Assignment:**

MySQL Command Line Client
