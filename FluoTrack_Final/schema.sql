CREATE DATABASE microplastic;

USE microplastic;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255)
);

CREATE TABLE samples (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    sample_id VARCHAR(50),
    location VARCHAR(100),
    operator VARCHAR(100),
    particle_count INT,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
