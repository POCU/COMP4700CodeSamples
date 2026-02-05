--#region 1. Create Table
DROP TABLE IF EXISTS Waitlist;
GO

CREATE TABLE Waitlist (
    EmailAddress VARCHAR(255) NOT NULL,
    CourseNumber SMALLINT NOT NULL,
);
--#endregion

--#region 2. Insert Data
INSERT INTO Waitlist (EmailAddress, CourseNumber)
VALUES
    ('john.davis@hotmail.com', 4700),
    ('kpop-demon@hunters.com', 4700),
    ('karen_hernandez@aol.com', 4700),
    ('thomas_brown@icloud.com', 4700),
    ('susan_rodriguez@icloud.com', 4700);
--#endregion