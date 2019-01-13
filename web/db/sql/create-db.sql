CREATE TABLE User (
  userID INT PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(50),
  gender VARCHAR(6),
  password VARCHAR(100),
  salt VARCHAR(100),
  history VARCHAR(100000),
  favorites VARCHAR(100000)
);