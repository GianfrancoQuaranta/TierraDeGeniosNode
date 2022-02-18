DROP DATABASE IF EXISTS tdg;
CREATE DATABASE tdg;
USE tdg;

CREATE TABLE applicants (
    id INT AUTO_INCREMENT NOT NULL,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    dni INT(10) NOT NULL,
    birthDate DATE NOT NULL,
    birthCity VARCHAR(100) NOT NULL,
    liveCity VARCHAR(100) NOT NULL,
    locality VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    formation VARCHAR(100) NOT NULL,
    career VARCHAR(100) NOT NULL,
    academy VARCHAR(100) NOT NULL,
    motivation VARCHAR(100) NOT NULL,
    computer INT(1) NOT NULL,
    internet INT(1) NOT NULL,
    profile TEXT NOT NULL,
    youtubeLink VARCHAR(250) NOT NULL,
    programmation VARCHAR(250) NOT NULL,
    avatar VARCHAR(200) NOT NULL,
    password VARCHAR(100) NOT NULL,
    phoneNumber INT(20) NOT NULL,
    phoneNumber2 INT(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
);

CREATE TABLE donors (
    id INT(1) NOT NULL,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    nickname VARCHAR(100) NOT NULL,
    genre VARCHAR(100) NOT NULL,
    profession VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    avatar VARCHAR(100) NOT NULL,
    birthDate DATE NOT NULL,
    adress VARCHAR(100) NOT NULL,
    phoneNumber INT(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
);

CREATE TABLE admin (
    id INT(10) NOT NULL,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    avatar VARCHAR(200) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
);

CREATE TABLE donations (
    id INT(10) NOT NULL,
    applicant_id INT(10) NOT NULL,
    donor_id INT(10) NOT NULL,
    quantity_donate INT(10) NOT NULL,
    amountFees INT(100) NOT NULL,
    numberFee INT(100) NOT NULL,
    date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id),
    
    FOREIGN KEY (applicant_id) REFERENCES applicants (id),
    FOREIGN KEY (donor_id) REFERENCES donors (id)
);

