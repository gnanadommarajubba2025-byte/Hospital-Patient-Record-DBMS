### Hospital Database Project - README



**Overview**

This project designs and implements a relational database for a hospital management system. It models strong entities such as Patients, Doctors, Departments, Appointments and weak entities such as Medical Records, and Billing.



**Database Design:**

1. Patient (Strong Entity)

&nbsp;     Attributes: Patient\_ID (PrimaryKey), Name, Date\_Of\_Birth, Mobile\_No.

2\. Doctor (Strong Entity)

&nbsp;     Attributes: Doctor\_ID (PrimaryKey), Department\_ID (ForeignKey), Name, Department, Mobile\_no.

3\. Department (Strong Entity)

&nbsp;     Attributes: Department\_ID (PrimaryKey), Name, Mobile\_no.

4\. Appointment (Strong Entity)

&nbsp;     Attributes: Appointment\_ID (PrimaryKey), Patient\_ID (ForeignKey), Doctor\_ID (FK), Date.

5\. Medical\_Record (Weak Entity)

&nbsp;     Attributes: Record\_ID (PrimaryKey), Patient\_ID (ForeignKey), Doctor\_ID (ForeignKey), Diagnosis.

6\. Billing (Weak Entity)

&nbsp;     Attributes: Bill\_ID (PrimaryKey), Patient\_ID (ForeignKey), Bill\_Date, Amount.



The design uses primary keys for unique identification and foreign keys to maintain references between related tables.



**Relationships:**

* Patient  has  Appointment
* Doctor  treats  Appointment
* Doctor  belongs to  Department
* Patient  has  Medical\_Record
* Patient  gets  Billing





**Sample Queries:**

1\. List all appointments of a specific patient

2\. Find doctor of a department by department name

3\. Get all medical records for a given patient

4\. Show billing details for a specific patient

5\. Find Patient details using Patient ID





**Technology used for Assignment:**

MySQL Command Line Client

