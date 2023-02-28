Create Table User(
	ID int PRIMARY KEY,
    role Enum('Admin', 'Listener', 'Artist') not NULL,
	username varchar(20) not NULL CHECK (username REGEXP '^[a-zA-Z0-9]+$'),
    password varchar(20) not NULL CHECK (password REGEXP '^(?=.*[a-z])(?=.*[A-Z])(?!.*[^a-zA-Z0-9]).{8,}$'),
    created_at timestamp DEFAULT current_timestamp,
    modified_at timestamp ON UPDATE current_timestamp,
    last_login_at timestamp DEFAULT current_timestamp,
    is_archived bool DEFAULT false
);