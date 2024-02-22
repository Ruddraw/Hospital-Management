USE hospital;

CREATE TABLE IF NOT EXISTS patients(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS doctors(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    department VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS appointments(
	id INT AUTO_INCREMENT PRIMARY KEY,
    patient_ID INT NOT NULL,
    doctor_ID INT NOT NULL,
    appointment_date DATE NOT NULL,
    FOREIGN KEY (patient_ID) REFERENCES patients(id),
    FOREIGN KEY (doctor_ID) REFERENCES doctors(id)
);
INSERT INTO doctors(name, department) 
	VALUES
		('Dr. Olivia Martinez', 'Cardiologist'),
		('Dr. Benjamin Chang', 'Orthopedic Surgeon'),
		('Dr. Emily Wilson', 'Pediatrician'),
		('Dr. Adrian Carter', 'Neurologist'),
		('Dr. Jasmine Lee', 'Dermatologist'),
		('Dr. Robert Turner', 'Gastroenterologist'),
		('Dr. Maya Patel', 'Ophthalmologist'),
		('Dr. Samuel Mitchell', 'Oncologist'),
		('Dr. Victoria Reynolds', 'Obstetrician/Gynecologist'),
		('Dr. Isaac Rodriguez', 'Pulmonologist');

SELECT *
FROM
	doctors