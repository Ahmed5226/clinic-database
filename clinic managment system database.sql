create database clinic;
use clinic;
CREATE TABLE `clinic`.`patient` (
  `patientID` INT NOT NULL,
  `First_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`patientID`));
  
CREATE TABLE `clinic`.`treatments` (
  `treatmentID` INT NOT NULL,
  `treatType` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`treatmentID`));
  
  CREATE TABLE `clinic`.`checkup` (
  `checkID` INT NOT NULL,
  `patientId` INT NOT NULL,
  `findings` VARCHAR(45) NOT NULL,
  `complainsl` VARCHAR(45) NOT NULL,
  `treatId` INT NOT NULL,
  `medicineId` INT NOT NULL,
  `NumberOfItem` INT NOT NULL,
  `date` DATETIME NOT NULL,
  PRIMARY KEY (`checkID`));
  
  CREATE TABLE `clinic`.`medicines` (
  `medicinID` INT NOT NULL,
  `medicineName` VARCHAR(45) NOT NULL,
  `Number` INT NOT NULL,
  `Detailing` VARCHAR(45) NOT NULL,
  `available` INT NOT NULL,
  `expiry` DATETIME NOT NULL,
  PRIMARY KEY (`medicinID`));

CREATE TABLE `clinic`.`bill` (
  `BillID` INT NOT NULL,
  `total` FLOAT NOT NULL,
  `patientID` INT NOT NULL,
  PRIMARY KEY (`BillID`));






INSERT INTO `clinic`.`patient` (`patientID`, `First_name`, `last_name`, `type`, `age`, `address`) VALUES ('1', 'ahmed', 'mohamed', 'male', '20', 'alex');
INSERT INTO `clinic`.`patient` (`patientID`, `First_name`, `last_name`, `type`, `age`, `address`) VALUES ('2', 'ali', 'omar', 'male', '15', 'cairo');
INSERT INTO `clinic`.`patient` (`patientID`, `First_name`, `last_name`, `type`, `age`, `address`) VALUES ('3', 'ehab', 'mohamed', 'male', '17', 'aswan');
INSERT INTO `clinic`.`patient` (`patientID`, `First_name`, `last_name`, `type`, `age`, `address`) VALUES ('4', 'nour', 'mahmoud', 'male', '19', 'cairo');
INSERT INTO `clinic`.`patient` (`patientID`, `First_name`, `last_name`, `type`, `age`, `address`) VALUES ('5', 'basma', 'maher', 'fmale', '30', 'bhera');

SELECT * FROM clinic.patient;







INSERT INTO `clinic`.`checkup` (`checkID`, `patientId`, `findings`, `complainsl`, `treatId`, `medicineId`, `NumberOfItem`, `date`) VALUES ('1', '1', 'id300', 'breath', '5', '500', '4', '2019-5-1');
INSERT INTO `clinic`.`checkup` (`checkID`, `patientId`, `findings`, `complainsl`, `treatId`, `medicineId`, `NumberOfItem`, `date`) VALUES ('2', '2', 'id200', 'breath', '6', '300', '5', '2020-5-1');
INSERT INTO `clinic`.`checkup` (`checkID`, `patientId`, `findings`, `complainsl`, `treatId`, `medicineId`, `NumberOfItem`, `date`) VALUES ('3', '3', 'id250', 'breath', '8', '150', '7', '2020-1-4');
INSERT INTO `clinic`.`checkup` (`checkID`, `patientId`, `findings`, `complainsl`, `treatId`, `medicineId`, `NumberOfItem`, `date`) VALUES ('4', '4', 'id900', 'breath', '4', '200', '6', '2018-5-1');
INSERT INTO `clinic`.`checkup` (`checkID`, `patientId`, `findings`, `complainsl`, `treatId`, `medicineId`, `NumberOfItem`, `date`) VALUES ('5', '5', 'id170', 'breath', '6', '400', '3', '2015-1-4');

SELECT * FROM clinic.checkup;







INSERT INTO `clinic`.`bill` (`BillID`, `total`, `patientID`) VALUES ('1', '200', '1');
INSERT INTO `clinic`.`bill` (`BillID`, `total`, `patientID`) VALUES ('2', '450', '2');
INSERT INTO `clinic`.`bill` (`BillID`, `total`, `patientID`) VALUES ('3', '600', '3');
INSERT INTO `clinic`.`bill` (`BillID`, `total`, `patientID`) VALUES ('4', '150', '4');
INSERT INTO `clinic`.`bill` (`BillID`, `total`, `patientID`) VALUES ('5', '800', '5');

SELECT * FROM clinic.bill;





INSERT INTO `clinic`.`medicines` (`medicinID`, `medicineName`, `Number`, `Detailing`, `available`, `expiry`) VALUES ('1', 'panadol', '4', 'help us', '19', '2050-1-4');
INSERT INTO `clinic`.`medicines` (`medicinID`, `medicineName`, `Number`, `Detailing`, `available`, `expiry`) VALUES ('2', 'aspren', '5', 'help', '80', '2020-1-5');
INSERT INTO `clinic`.`medicines` (`medicinID`, `medicineName`, `Number`, `Detailing`, `available`, `expiry`) VALUES ('3', 'declofenac', '2', 'help', '60', '2030-1-9');
INSERT INTO `clinic`.`medicines` (`medicinID`, `medicineName`, `Number`, `Detailing`, `available`, `expiry`) VALUES ('4', 'catavast', '6', 'help', '70', '2040-5-9');
INSERT INTO `clinic`.`medicines` (`medicinID`, `medicineName`, `Number`, `Detailing`, `available`, `expiry`) VALUES ('5', 'omberazol', '5', 'help', '60', '2040-5-4');

SELECT * FROM clinic.medicines;




INSERT INTO `clinic`.`treatments` (`treatmentID`, `treatType`) VALUES ('1', 'cannot breath');
INSERT INTO `clinic`.`treatments` (`treatmentID`, `treatType`) VALUES ('2', 'hurt');
INSERT INTO `clinic`.`treatments` (`treatmentID`, `treatType`) VALUES ('3', 'leg');
INSERT INTO `clinic`.`treatments` (`treatmentID`, `treatType`) VALUES ('4', 'heart');
INSERT INTO `clinic`.`treatments` (`treatmentID`, `treatType`) VALUES ('5', 'arm');

SELECT * FROM clinic.treatments;
