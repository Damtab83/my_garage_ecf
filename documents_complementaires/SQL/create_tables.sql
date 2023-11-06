CREATE database IF NOT EXIST my_garage_ecf
CHARACTER SET utf8 COLLATE utf8_general_ci;


CREATE TABLE notice (
  id INT(11) NOT NULL AUTO_INCREMENT primary key,
  brand VARCHAR(50) NOT NULL,
  model VARCHAR(50) NOT NULL,
  description TEXT NOT NULL,
  kilometer INT(500000) NOT NULL,
  price INT(100000) NOT NULL,
  release_date DATE NOT NULL,
  created_at DATETIME NOT NULL
) ENGINE = InnoDB;

CREATE TABLE noticeImage (
  id INT(11) NOT NULL AUTO_INCREMENT primary key,
  name VARCHAR(255) NOT NULL,
  size INT NOT NULL,
  notice_id INT(11) NOT NULL,
  FOREIGN KEY (notice_id) REFERENCE notice (id)
  ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE contact (
  id INT(11) NOT NULL AUTO_INCREMENT primary key,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  message TEXT NOT NULL,
  phoneNumber INT(100) NOT NULL,
  subject INT NOT NULL,
  created_at DATETIME NOT NULL
) ENGINE = InnoDB;

CREATE TABLE opening_hours (
  id INT(11) NOT NULL AUTO_INCREMENT primary key,
  day_of_week DATETIME NOT NULL,
  open_time DATETIME NOT NULL,
  close_time DATETIME NOT NULL,
  open_time_afternoon DATETIME NOT NULL,
  close_time_afternoon DATETIME NOT NULL
) ENGINE = InnoDB;

CREATE TABLE opinion (
  id INT(11) NOT NULL AUTO_INCREMENT primary key,
  fullname VARCHAR(255) NOT NULL,
  comment TEXT NOT NULL,
  is_valid BOOLEAN NOT NULL,
  subject INT NOT NULL,
  created_at DATETIME NOT NULL
) ENGINE = InnoDB;

CREATE TABLE service (
  id INT(11) NOT NULL AUTO_INCREMENT primary key,
  title VARCHAR(50) NOT NULL,
  description TEXT NOT NULL
) ENGINE = InnoDB;

CREATE TABLE serviceImage (
  id INT(11) NOT NULL AUTO_INCREMENT primary key,
  name VARCHAR(255) NOT NULL,
  size INT NOT NULL,
  service_id INT(11),
  FOREIGN KEY (service_id) REFERENCE service (id)
  ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE user (
  id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL,
  fullname VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
  role_type VARCHAR(255) NOT NULL
) ENGINE = InnoDB;
