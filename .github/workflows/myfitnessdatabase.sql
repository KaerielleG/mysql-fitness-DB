USE fitnesscenter_db;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
    );
CREATE TABLE workout_sessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (id, name, age) 
VALUES 
(1, 'John Doe', 30),
(2, 'Jane Smith', 25),
(3, 'Alice Johnson', 40),
(4, 'Mark Brown', 35),
(5, 'Lisa White', 28);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(1, 101, '2024-08-15', '10:00 AM', 'Yoga Class'),
(2, 102, '2024-08-15', '11:30 AM', 'Spinning Class'),
(3, 103, '2024-08-16', '09:00 AM', 'Swimming'),
(4, 104, '2024-08-16', '02:00 PM', 'Pilates Class'),
(5, 105, '2024-08-17', '08:00 AM', 'Weightlifting'),
(6, 106, '2024-08-17', '12:00 PM', 'Cardio Workout'),
(7, 101, '2024-08-18', '06:00 PM', 'Dance Class'),
(8, 102, '2024-08-18', '07:30 PM', 'Zumba Class'),
(9, 103, '2024-08-19', '10:30 AM', 'Kickboxing'),
(10, 104, '2024-08-19', '01:00 PM', 'Aerobics');

ALTER TABLE members ADD COLUMN join_date DATE;

INSERT INTO members (id, name, join_date) VALUES
(101, 'John Doe', '2023-01-10'),
(102, 'Jane Smith', '2023-02-15'),
(103, 'David Johnson', '2023-03-20'),
(104, 'Emily Davis', '2023-04-25'),
(105, 'Michael Brown', '2023-05-30'),
(106, 'Sarah Wilson', '2023-06-05');


INSERT INTO workoutsessions (session_id, member_id, session_date, session_time, activity) VALUES
(1, 101, '2024-08-15', '10:00 AM', 'Yoga Class'),
(2, 102, '2024-08-15', '11:30 AM', 'Spinning Class'),
(3, 103, '2024-08-16', '09:00 AM', 'Swimming'),
(4, 104, '2024-08-16', '02:00 PM', 'Pilates Class'),
(5, 105, '2024-08-17', '08:00 AM', 'Weightlifting'),
(6, 106, '2024-08-17', '12:00 PM', 'Cardio Workout'),
(7, 101, '2024-08-18', '06:00 PM', 'Dance Class'),
(8, 102, '2024-08-18', '07:30 PM', 'Zumba Class'),
(9, 103, '2024-08-19', '10:30 AM', 'Kickboxing'),
(10, 104, '2024-08-19', '01:00 PM', 'Aerobics');

ALTER TABLE workout_sessions
ADD COLUMN start_time TIME;

ALTER TABLE workout_sessions
ADD COLUMN duration_minutes INT; 


UPDATE workout_sessions
SET start_time = '18:00:00' -- Update to 6:00 PM
WHERE member_id = 2 AND session_date = '2024-08-14';

USE fitnesscenter_db;
SHOW TABLES;



UPDATE workout_sessions
SET duration_minutes = duration_minutes + 10 -- Example of changing duration or time
WHERE member_id = 2 AND session_date = '2024-08-14'; -- Assuming this is the session to be updated

DELETE FROM workout_sessions WHERE id = 103;

SHOW TABLES; 
SELECT id FROM members;
SELECT * FROM WorkoutSessions;
SELECT * FROM Members; 



