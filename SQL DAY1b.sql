CREATE TABLE EmergencyContacts (
    ContactID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    ContactName VARCHAR(100) NOT NULL,
    Relationship VARCHAR(50),
    -- Using VARBINARY to store encrypted data
    EncryptedPhone VARBINARY(255), 
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);