--ADDED TABLES
CREATE TABLE Departments
(
department_id INT PRIMARY KEY,
dep_name varchar(100),
location varchar(100),
phone_nop varchar(20),
head_doctor_id int
);

INSERT INTO Departments VALUES
('1','Cardiology','Block A','555-1001',101,'Floor 2'),
('2', 'Neurology','Block A','555-1002',102,'Floor 3'),
('3','Orthopedics','Block B','555-1003',103,'Floor 1'),
('4','Pediatrics','Block B','555-1004',104,'Floor 2'),
('5','Oncology','Block C','555-1005',105,'Floor 1'),
('6','Emergency','Block A','555-1006',106,'Floor 1'),
('7','Radiology','Block C','555-1007',107,'Floor 2'),
('8','General Surgery','Block D','555-1008',108,'Floor 1'),
('9','Dermatology','Block D','555-1009',109,'Floor 2'),
('10','Ophthalmology','Block E','555-1010',110,'Floor 1');

--added a column
ALTER TABLE Departments 
ADD floor_nop varchar (15) ;

CREATE TABLE Doctors 
(
doctor_id INT PRIMARY KEY,
first_name varchar(50),
last_name varchar(50),
gender char(1),
specialization varchar(100),
department_id int,
phone_no varchar(20),
email varchar (100),
hire_date date,
salary decimal(10,2),
years_exp int
);

INSERT INTO Doctors VALUES
(101,'James','Harrison','M','Cardiologist',1,'555-2001','j.harrison@hospital.com','2010-03-15','185000.00',16 ),
(102,'Sarah','Mitchell','F','Neurologist',2,'555-2002','s.mitchell@hospital.com','2012-01-23','175000.00',14 ),
(103,'David','Ngao','M','Orthopedic Surgeon',3,'555-2003','d.ngao@hospital.com','2008-06-21','195000.00',18 ),
(104,'Emily','Baraka','F','Pediatrician',4,'555-2004','e.baraka@hospital.com','2015-04-27','155000.00',11 ),
(105,'Robert','Mumo','M','Oncologist',5,'555-2005','r.mumo@hospital.com','2009-07-18','215000.00',17 ),
(106,'Linda','Achieng','F','Emergency Physician',6,'555-2006','l.achieng@hospital.com','2011-09-23','165000.00',15 ),
(107,'Kevin','Kioko','M','Radiologist',7,'555-2007','k.kioko@hospital.com','2013-07-29','175000.00',13 ),
(108,'Angela','Chibalonza','F','General Surgeon',8,'555-2008','a.Chibalonza@hospital.com','2007-04-22','200000.00',19 ),
(109,'Marcus','Mwiu','M','Dermatologist',9,'555-2009','m.mwiu@hospital.com','2016-08-20','145000.00',10 ),
(110,'Patricia','Chao','F','Ophthalmologist',10,'555-2010','p.chao@hospital.com','2014-09-16','155000.00',12 ),
(111,'Thomas','Mwachofi','M','Cardiologist',1,'555-2011','t.mwachofi@hospital.com','2017-03-08','175000.00',9 ),
(112,'Nancy','Rai','F','Neurologist',2,'555-2012','n.rai@hospital.com','2018-07-26','165000.00',8 ),
(113,'Stephen','Brown','M','Pediatrician',4,'555-2013','s.brown@hospital.com','2019-11-29','155000.00',7 ),
(114,'Mitchelle','Wanjiku','F','Oncologist',5,'555-2014','m.wanjiku@hospital.com','2020-04-01','205000.00',6 ),
(115,'Chris','Olesapat','M','Orthopedic Surgeon',3,'555-2015','c.olesapat@hospital.com','2016-05-18','185000.00',10 );


CREATE TABLE appointments (
    appointment_id  INT PRIMARY KEY,
    patient_id      INT,
    doctor_id       INT,
    department_id   INT,
    appointment_date DATE,
    appointment_time TIME,
    reason          VARCHAR(200),
    status          VARCHAR(20),  -- Scheduled, Completed, Cancelled, No-Show
    notes           VARCHAR(300)
);
 
INSERT INTO appointments VALUES
(401, 1001, 101, 1,  '2024-01-08', '09:00:00', 'Chest pain evaluation',           'Completed',  'EKG ordered'),
(402, 1002, 102, 2,  '2024-01-09', '10:30:00', 'Recurring headaches',             'Completed',  'MRI scheduled'),
(403, 1003, 104, 4,  '2024-01-10', '11:00:00', 'Annual checkup',                  'Completed',  'All vitals normal'),
(404, 1004, 101, 1,  '2024-01-11', '14:00:00', 'Follow-up post heart attack',     'Completed',  'Medication adjusted'),
(405, 1005, 104, 4,  '2024-01-12', '08:30:00', 'Fever and sore throat',           'Completed',  'Strep test positive'),
(406, 1006, 103, 3,  '2024-01-15', '13:00:00', 'Knee pain',                       'Completed',  'X-ray ordered'),
(407, 1007, 109, 9,  '2024-01-16', '15:30:00', 'Skin rash evaluation',            'Completed',  'Prescribed cream'),
(408, 1008, 101, 1,  '2024-01-17', '09:30:00', 'Hypertension follow-up',          'Completed',  'BP still elevated'),
(409, 1009, 104, 4,  '2024-01-18', '10:00:00', 'Vaccination',                     'Completed',  'MMR given'),
(410, 1010, 108, 8,  '2024-01-19', '11:30:00', 'Appendix pain consultation',      'Completed',  'Surgery recommended'),
(411, 1011, 105, 5,  '2024-02-01', '09:00:00', 'Chemotherapy follow-up',          'Completed',  'Responding well'),
(412, 1012, 102, 2,  '2024-02-05', '14:30:00', 'Epilepsy monitoring',             'Completed',  'Medication increased'),
(413, 1013, 110, 10, '2024-02-07', '10:00:00', 'Vision blurriness',               'Completed',  'Glasses prescription updated'),
(414, 1014, 104, 4,  '2024-02-08', '08:30:00', 'Asthma checkup',                  'Completed',  'Inhaler technique corrected'),
(415, 1015, 103, 3,  '2024-02-12', '13:30:00', 'Hip replacement follow-up',       'Completed',  'Healing well'),
(416, 1016, 101, 1,  '2024-02-14', '15:00:00', 'Chest pain',                      'Completed',  'Referred to cardiologist'),
(417, 1017, 109, 9,  '2024-02-19', '09:00:00', 'Acne treatment',                  'Completed',  'Isotretinoin prescribed'),
(418, 1018, 108, 8,  '2024-02-20', '11:00:00', 'Hernia pre-op consultation',      'Completed',  'Surgery scheduled'),
(419, 1019, 104, 4,  '2024-02-21', '10:30:00', 'Growth and development check',    'Completed',  'Normal development'),
(420, 1020, 105, 5,  '2024-02-22', '14:00:00', 'Palliative care consultation',    'Completed',  'Pain management plan updated'),
(421, 1001, 111, 1,  '2024-03-05', '09:00:00', 'Echocardiogram review',           'Completed',  'Mild valve issue noted'),
(422, 1002, 112, 2,  '2024-03-07', '10:00:00', 'Nerve conduction study review',   'Completed',  'Neuropathy confirmed'),
(423, 1003, 113, 4,  '2024-03-10', '11:30:00', 'Child wellness visit',            'Completed',  'Healthy, on track'),
(424, 1004, 111, 1,  '2024-03-14', '09:30:00', 'Stress test results',             'Cancelled',  'Patient rescheduled'),
(425, 1005, 113, 4,  '2024-03-15', '08:00:00', 'Follow-up strep throat',          'Completed',  'Fully recovered'),
(426, 1006, 115, 3,  '2024-03-18', '13:00:00', 'Knee surgery post-op',            'Completed',  'Physical therapy started'),
(427, 1007, 109, 9,  '2024-03-20', '15:00:00', 'Eczema flare-up',                 'No-Show',    NULL),
(428, 1008, 111, 1,  '2024-03-22', '10:00:00', 'Cardiac stress test',             'Completed',  'Passed with concern'),
(429, 1010, 108, 8,  '2024-03-25', '09:00:00', 'Post appendectomy follow-up',     'Completed',  'Recovery on track'),
(430, 1012, 102, 2,  '2024-03-28', '14:00:00', 'Neurology re-evaluation',         'Scheduled',  NULL);


CREATE TABLE admissions (
    admission_id    INT PRIMARY KEY,
    patient_id      INT,
    doctor_id       INT,
    room_id         INT,
    admission_date  DATE,
    discharge_date  DATE,          -- NULL if still admitted
    diagnosis       VARCHAR(200),
    condition       VARCHAR(20),   -- Stable, Critical, Fair, Good
    discharge_notes VARCHAR(300)
);
 
INSERT INTO admissions VALUES
(501, 1004, 101, 301, '2024-01-11', '2024-01-18', 'Acute Myocardial Infarction',    'Stable',   'Discharged on blood thinners'),
(502, 1006, 103, 303, '2024-01-15', '2024-01-22', 'Torn ACL - Post Surgery',        'Good',     'Physical therapy recommended'),
(503, 1010, 108, 309, '2024-01-19', '2024-01-21', 'Appendicitis - Appendectomy',    'Good',     'Full recovery expected'),
(504, 1011, 105, 306, '2024-02-01', '2024-02-10', 'Stage 3 Breast Cancer',          'Fair',     'Ongoing chemo scheduled'),
(505, 1016, 101, 314, '2024-02-14', '2024-02-19', 'Unstable Angina',               'Stable',   'Medication regimen updated'),
(506, 1018, 108, 309, '2024-02-20', '2024-02-23', 'Inguinal Hernia Repair',         'Good',     'No complications'),
(507, 1020, 105, 306, '2024-02-22', NULL,          'Stage 4 Ovarian Cancer',         'Critical', 'Palliative care initiated'),
(508, 1001, 111, 314, '2024-03-05', '2024-03-08', 'Atrial Fibrillation',            'Stable',   'Rate control achieved'),
(509, 1008, 101, 301, '2024-03-22', NULL,          'Hypertensive Crisis',            'Critical', NULL),
(510, 1002, 102, 311, '2024-03-28', NULL,          'Severe Migraine with Aura',      'Fair',     NULL);


CREATE TABLE medications (
    medication_id   INT PRIMARY KEY,
    name            VARCHAR(100),
    category        VARCHAR(100),
    unit            VARCHAR(20),
    stock_quantity  INT,
    unit_price      DECIMAL(8,2),
    manufacturer    VARCHAR(100)
);
 
INSERT INTO medications VALUES
(601, 'Aspirin',          'Analgesic / Antiplatelet', 'mg',  5000, 0.10,  'PharmaCo'),
(602, 'Metoprolol',       'Beta Blocker',             'mg',  3000, 0.45,  'CardioMed'),
(603, 'Lisinopril',       'ACE Inhibitor',            'mg',  4000, 0.30,  'HeartCare'),
(604, 'Atorvastatin',     'Statin',                   'mg',  4500, 0.55,  'LipidLab'),
(605, 'Amoxicillin',      'Antibiotic',               'mg',  2000, 0.25,  'PharmaCo'),
(606, 'Ibuprofen',        'NSAID',                    'mg',  6000, 0.08,  'GenMed'),
(607, 'Metformin',        'Antidiabetic',             'mg',  5500, 0.20,  'DiabCare'),
(608, 'Omeprazole',       'Proton Pump Inhibitor',    'mg',  3500, 0.35,  'GastroCo'),
(609, 'Isotretinoin',     'Retinoid',                 'mg',   800, 5.50,  'DermLabs'),
(610, 'Carboplatin',      'Chemotherapy',             'mg',   200, 75.00, 'OncoPharm'),
(611, 'Levetiracetam',    'Anticonvulsant',           'mg',  1500, 1.20,  'NeuroPharma'),
(612, 'Morphine',         'Opioid Analgesic',         'mg',   500, 2.50,  'PainCare'),
(613, 'Warfarin',         'Anticoagulant',            'mg',  3000, 0.40,  'CoagMed'),
(614, 'Albuterol',        'Bronchodilator',           'mcg', 2000, 1.80,  'RespiCo'),
(615, 'Salbutamol',       'Bronchodilator',           'mcg', 1800, 1.60,  'RespiCo');
 


    CREATE TABLE medical_records (
    record_id       INT PRIMARY KEY,
    patient_id      INT,
    doctor_id       INT,
    appointment_id  INT,
    record_date     DATE,
    chief_complaint VARCHAR(200),
    diagnosis       VARCHAR(200),
    treatment       VARCHAR(300),
    bp_systolic     INT,
    bp_diastolic    INT,
    heart_rate      INT,
    temperature     DECIMAL(4,1),
    weight_kg       DECIMAL(5,1),
    height_cm       DECIMAL(5,1),
    notes           VARCHAR(300)
);
 
INSERT INTO medical_records VALUES
(801, 1001, 101, 401, '2024-01-08', 'Chest tightness',       'Atrial Fibrillation',        'EKG, Metoprolol prescribed',            130, 85, 92, 37.0, 68.5, 165.0, 'Referred for echocardiogram'),
(802, 1002, 102, 402, '2024-01-09', 'Severe headache',       'Migraine with aura',         'MRI ordered, Levetiracetam increased',  120, 78, 74, 36.8, 82.0, 178.0, 'Reduce screen time'),
(803, 1003, 104, 403, '2024-01-10', 'Annual checkup',        'Healthy - No findings',      'Routine blood work',                    118, 76, 68, 36.5, 58.0, 162.0, 'All normal'),
(804, 1004, 101, 404, '2024-01-11', 'Follow-up post MI',     'Post-MI monitoring',         'Aspirin + Warfarin continued',          145, 90, 88, 37.1, 92.0, 175.0, 'Diet counselling given'),
(805, 1005, 104, 405, '2024-01-12', 'Sore throat & fever',  'Streptococcal Pharyngitis',  'Amoxicillin 10-day course',             110, 70, 98, 38.7, 54.0, 160.0, 'Rest advised'),
(806, 1006, 103, 406, '2024-01-15', 'Right knee pain',       'ACL Tear',                   'Surgery scheduled, Ibuprofen for pain', 125, 80, 72, 36.9, 88.0, 180.0, 'MRI confirmed tear'),
(807, 1007, 109, 407, '2024-01-16', 'Itchy skin patches',   'Contact Dermatitis',         'Topical corticosteroid cream',          115, 75, 70, 36.6, 62.0, 163.0, 'Avoid allergen'),
(808, 1008, 101, 408, '2024-01-17', 'High BP reading',       'Essential Hypertension',     'Lisinopril increased to 10mg',          155, 98, 82, 36.7, 95.0, 182.0, 'Salt restriction advised'),
(809, 1009, 104, 409, '2024-01-18', 'Vaccination visit',    'Healthy child',              'MMR vaccine administered',              100, 65, 88, 36.8, 28.0, 135.0, 'Next vaccine in 1 year'),
(810, 1010, 108, 410, '2024-01-19', 'Abdominal pain RLQ',   'Acute Appendicitis',         'Laparoscopic appendectomy',             118, 76, 90, 38.2, 78.0, 177.0, 'Surgery successful'),
(811, 1011, 105, 411, '2024-02-01', 'Fatigue, nausea',      'Stage 3 Breast Cancer',      'Carboplatin chemotherapy cycle 3',      112, 72, 78, 37.3, 55.0, 160.0, 'Tolerating treatment'),
(812, 1012, 102, 412, '2024-02-05', 'Seizure episode',      'Epilepsy',                   'Levetiracetam dose adjusted',           118, 75, 76, 36.9, 72.0, 170.0, 'No driving advised'),
(813, 1013, 110, 413, '2024-02-07', 'Blurry vision',        'Myopia progression',         'Updated prescription lenses',           116, 74, 72, 36.7, 65.0, 167.0, 'Annual checkup advised'),
(814, 1014, 104, 414, '2024-02-08', 'Breathing difficulty', 'Asthma - Moderate',         'Salbutamol inhaler, technique corrected',108, 68, 96, 37.0, 32.0, 122.0, 'Trigger avoidance education'),
(815, 1015, 103, 415, '2024-02-12', 'Hip pain, stiffness',  'Post hip replacement',       'Physical therapy plan created',         122, 79, 70, 36.8, 73.0, 165.0, 'Progressing well'),
(816, 1016, 101, 416, '2024-02-14', 'Chest pressure',       'Unstable Angina',           'Admitted, Metoprolol, Nitrate therapy', 148, 94, 88, 37.2, 96.0, 172.0, 'Urgent care'),
(817, 1017, 109, 417, '2024-02-19', 'Acne breakout',        'Nodular Acne',              'Isotretinoin 40mg prescribed',           114, 73, 69, 36.6, 60.0, 166.0, 'Monthly follow-up required'),
(818, 1018, 108, 418, '2024-02-20', 'Groin bulge & pain',   'Inguinal Hernia',           'Laparoscopic hernia repair scheduled',   120, 78, 74, 36.9, 84.0, 176.0, 'Pre-op bloodwork done'),
(819, 1019, 104, 419, '2024-02-21', 'Routine teen checkup', 'Healthy adolescent',        'Flu vaccine administered',               108, 68, 76, 36.5, 52.0, 158.0, 'No concerns'),
(820, 1020, 105, 420, '2024-02-22', 'Severe abdominal pain','Stage 4 Ovarian Cancer',    'Morphine for pain, palliative plan',     105, 65, 88, 37.5, 48.0, 155.0, 'Family counselled');
 

 CREATE TABLE staff (
    staff_id        INT PRIMARY KEY,
    first_name      VARCHAR(50),
    last_name       VARCHAR(50),
    role            VARCHAR(100),
    department_id   INT,
    phone           VARCHAR(20),
    email           VARCHAR(100),
    hire_date       DATE,
    salary          DECIMAL(10,2),
    shift           VARCHAR(10)
);
 
INSERT INTO staff VALUES
(1201, 'George',   'Hall',     'Hospital Administrator',  NULL, '555-6001', 'g.hall@hospital.com',     '2005-01-10', 110000.00, 'Morning'),
(1202, 'Helen',    'Young',    'Receptionist',            NULL, '555-6002', 'h.young@hospital.com',    '2015-04-15',  42000.00, 'Morning'),
(1203, 'Ivan',     'Allen',    'Receptionist',            NULL, '555-6003', 'i.allen@hospital.com',    '2018-08-20',  40000.00, 'Evening'),
(1204, 'Julia',    'Carter',   'Lab Technician',          7,    '555-6004', 'j.carter@hospital.com',   '2016-11-01',  55000.00, 'Morning'),
(1205, 'Karl',     'Morris',   'Lab Technician',          7,    '555-6005', 'k.morris@hospital.com',   '2017-05-23',  54000.00, 'Evening'),
(1206, 'Laura',    'Rogers',   'Pharmacist',              NULL, '555-6006', 'l.rogers@hospital.com',   '2013-09-09',  85000.00, 'Morning'),
(1207, 'Mike',     'Reed',     'Pharmacist',              NULL, '555-6007', 'm.reed@hospital.com',     '2014-02-14',  83000.00, 'Evening'),
(1208, 'Nina',     'Cook',     'Medical Coder',           NULL, '555-6008', 'n.cook@hospital.com',     '2019-06-30',  60000.00, 'Morning'),
(1209, 'Oscar',    'Morgan',   'Security Officer',        NULL, '555-6009', 'o.morgan@hospital.com',   '2020-10-12',  38000.00, 'Night'),
(1210, 'Paula',    'Bell',     'Janitor Supervisor',      NULL, '555-6010', 'p.bell@hospital.com',     '2012-03-28',  35000.00, 'Morning');


CREATE TABLE billing (
    bill_id         INT PRIMARY KEY,
    patient_id      INT,
    admission_id    INT,
    appointment_id  INT,
    bill_date       DATE,
    consultation_fee DECIMAL(10,2),
    room_charges    DECIMAL(10,2),
    medication_cost DECIMAL(10,2),
    lab_test_cost   DECIMAL(10,2),
    surgery_cost    DECIMAL(10,2),
    total_amount    DECIMAL(10,2),
    insurance_covered DECIMAL(10,2),
    amount_paid     DECIMAL(10,2),
    balance_due     DECIMAL(10,2),
    payment_status  VARCHAR(20),  -- Paid, Partial, Insurance Pending
    payment_method  VARCHAR(50)
);
 
INSERT INTO billing VALUES
(1101, 1001, 508, 401, '2024-03-08', 500.00,  2400.00,  135.00,  450.00,    0.00,  3485.00, 2788.00,  697.00,    0.00, 'Paid',             'Insurance + Card'),
(1102, 1002, 510, 402, '2024-03-28', 450.00,     0.00,  360.00,  800.00,    0.00,  1610.00, 1200.00,  410.00,    0.00, 'Paid',             'Insurance + Cash'),
(1103, 1003, NULL,403, '2024-01-10', 200.00,     0.00,    0.00,  150.00,    0.00,   350.00,  280.00,   70.00,    0.00, 'Paid',             'Insurance'),
(1104, 1004, 501, 404, '2024-01-18', 500.00, 17500.00,  275.00,  600.00,    0.00, 18875.00,15100.00, 3775.00,    0.00, 'Paid',             'Insurance + Check'),
(1105, 1005, NULL,405, '2024-01-12', 200.00,     0.00,   50.00,  120.00,    0.00,   370.00,  296.00,   74.00,    0.00, 'Paid',             'Insurance'),
(1106, 1006, 502, 406, '2024-01-22', 450.00,  5600.00,  392.00,  900.00, 8500.00, 15842.00,12673.60, 3168.40,    0.00, 'Paid',             'Insurance + Card'),
(1107, 1007, NULL,407, '2024-01-16', 200.00,     0.00,  660.00,  200.00,    0.00,  1060.00,  848.00,  212.00,    0.00, 'Paid',             'Insurance'),
(1108, 1008, 509, 408, '2024-03-22', 500.00,     0.00,  180.00,  700.00,    0.00,  1380.00,  690.00,    0.00,  690.00, 'Partial',          'Insurance Pending'),
(1109, 1009, NULL,409, '2024-01-18', 150.00,     0.00,    0.00,   80.00,    0.00,   230.00,  184.00,   46.00,    0.00, 'Paid',             'Insurance'),
(1110, 1010, 503, 410, '2024-01-21', 500.00,  2100.00,  500.00,  450.00, 6000.00,  9550.00, 7640.00, 1910.00,    0.00, 'Paid',             'Insurance + Card'),
(1111, 1011, 504, 411, '2024-02-10', 500.00,  3150.00, 3000.00,  600.00,    0.00,  7250.00, 5800.00, 1450.00,    0.00, 'Paid',             'Insurance + Card'),
(1112, 1012, NULL,412, '2024-02-05', 450.00,     0.00,  432.00,  500.00,    0.00,  1382.00, 1105.60,  276.40,    0.00, 'Paid',             'Insurance'),
(1113, 1013, NULL,413, '2024-02-07', 300.00,     0.00,   48.00,  200.00,    0.00,   548.00,  438.40,  109.60,    0.00, 'Paid',             'Insurance'),
(1114, 1014, NULL,414, '2024-02-08', 200.00,     0.00,  108.00,  150.00,    0.00,   458.00,  366.40,   91.60,    0.00, 'Paid',             'Insurance'),
(1115, 1015, NULL,415, '2024-02-12', 450.00,     0.00,    0.00,   200.00,   0.00,   650.00,  520.00,  130.00,    0.00, 'Paid',             'Insurance'),
(1116, 1016, 505, 416, '2024-02-19', 500.00,  3750.00,  360.00,  600.00,    0.00,  5210.00, 4168.00, 1042.00,    0.00, 'Paid',             'Medicare + Card'),
(1117, 1017, NULL,417, '2024-02-19', 200.00,     0.00,  825.00,  300.00,    0.00,  1325.00,    0.00,  600.00,  725.00, 'Partial',          'Cash'),
(1118, 1018, 506, 418, '2024-02-23', 500.00,  2400.00,  500.00,  400.00, 7000.00, 10800.00, 8640.00, 2160.00,    0.00, 'Paid',             'Insurance + Card'),
(1119, 1019, NULL,419, '2024-02-21', 150.00,     0.00,    0.00,   80.00,    0.00,   230.00,  184.00,   46.00,    0.00, 'Paid',             'Insurance'),
(1120, 1020, 507, 420, '2024-02-22', 500.00,     0.00,  150.00,  600.00,    0.00,  1250.00,  875.00,  375.00,    0.00, 'Insurance Pending', 'Medicare');
 
 
 CREATE TABLE lab_tests (
    test_id         INT PRIMARY KEY,
    patient_id      INT,
    doctor_id       INT,
    test_name       VARCHAR(100),
    test_date       DATE,
    result          VARCHAR(200),
    normal_range    VARCHAR(100),
    status          VARCHAR(20),  -- Pending, Completed, Abnormal
    lab_technician  VARCHAR(100),
    notes           VARCHAR(200)
);
 
INSERT INTO lab_tests VALUES
(901, 1001, 101, 'EKG',                    '2024-01-08', 'Irregular rhythm, AF pattern',    'Regular sinus rhythm',      'Abnormal',  'Tech A. Ray',    'Atrial fibrillation confirmed'),
(902, 1001, 101, 'Lipid Panel',            '2024-01-08', 'LDL: 142, HDL: 38, TG: 210',     'LDL<100, HDL>40, TG<150',   'Abnormal',  'Tech A. Ray',    'High LDL and triglycerides'),
(903, 1002, 102, 'Brain MRI',              '2024-01-09', 'No lesions, mild cortical thinning','Normal structure',         'Completed', 'Tech B. Scan',   'Migraine-consistent findings'),
(904, 1004, 101, 'CBC',                    '2024-01-11', 'WBC:7.2, RBC:4.5, HGB:13.8',     'WBC:4-11, RBC:4.2-5.9',     'Completed', 'Tech C. Lab',    'Within normal limits post-MI'),
(905, 1005, 104, 'Rapid Strep Test',       '2024-01-12', 'Positive',                        'Negative',                  'Abnormal',  'Tech D. Quick',  'Streptococcal infection confirmed'),
(906, 1006, 103, 'Knee MRI',               '2024-01-15', 'Complete ACL tear, no meniscus damage','Intact ligaments',     'Abnormal',  'Tech B. Scan',   'Surgery indicated'),
(907, 1008, 101, 'Metabolic Panel',        '2024-01-17', 'Na:138, K:4.1, Cr:1.1, BUN:18',  'Na:135-145, K:3.5-5',       'Completed', 'Tech C. Lab',    'Kidneys functioning normally'),
(908, 1009, 104, 'Blood Culture',          '2024-01-18', 'No growth after 48 hours',        'No growth',                 'Completed', 'Tech E. Micro',  'No infection'),
(909, 1010, 108, 'Abdominal Ultrasound',   '2024-01-19', 'Enlarged appendix, 9mm, no perforation','Appendix <6mm',       'Abnormal',  'Tech B. Scan',   'Appendicitis confirmed'),
(910, 1011, 105, 'CA-125 Tumor Marker',    '2024-02-01', '512 U/mL',                        '<35 U/mL',                  'Abnormal',  'Tech F. Onco',   'Elevated, consistent with active cancer'),
(911, 1012, 102, 'EEG',                    '2024-02-05', 'Epileptiform discharges in temporal lobe','Normal brain waves', 'Abnormal',  'Tech G. Neuro',  'Confirms seizure disorder'),
(912, 1013, 110, 'Visual Acuity Test',     '2024-02-07', '20/80 left eye, 20/60 right eye', '20/20',                     'Abnormal',  'Tech H. Eye',    'Significant myopia'),
(913, 1014, 104, 'Spirometry',             '2024-02-08', 'FEV1: 72% predicted',             'FEV1 >80% predicted',       'Abnormal',  'Tech I. Lung',   'Moderate airflow obstruction'),
(914, 1016, 101, 'Troponin I',             '2024-02-14', '0.04 ng/mL',                      '<0.04 ng/mL',               'Abnormal',  'Tech C. Lab',    'Borderline elevated, monitoring'),
(915, 1018, 108, 'Pre-op Blood Work',      '2024-02-20', 'All values normal',               'Within ranges',             'Completed', 'Tech C. Lab',    'Cleared for surgery'),
(916, 1020, 105, 'CA-125 Tumor Marker',    '2024-02-22', '1840 U/mL',                       '<35 U/mL',                  'Abnormal',  'Tech F. Onco',   'Significantly elevated, stage 4'),
(917, 1004, 101, 'INR/PT',                 '2024-02-28', 'INR: 2.4',                        '2.0 – 3.0 therapeutic',     'Completed', 'Tech C. Lab',    'Within therapeutic range on Warfarin'),
(918, 1007, 109, 'Patch Test',             '2024-01-16', 'Positive: Nickel, Fragrance mix', 'Negative',                  'Abnormal',  'Tech J. Derm',   'Allergens identified'),
(919, 1017, 109, 'Liver Function Test',    '2024-02-19', 'ALT:32, AST:28, ALP:75',         'ALT<40, AST<40',            'Completed', 'Tech C. Lab',    'Normal, safe to start Isotretinoin'),
(920, 1008, 101, 'Echocardiogram',         '2024-03-22', 'EF: 45%, mild LV dysfunction',   'EF >55%',                   'Abnormal',  'Tech B. Scan',   'Hypertensive cardiomyopathy suspected');
 
 
 

 


 
		  
		  


