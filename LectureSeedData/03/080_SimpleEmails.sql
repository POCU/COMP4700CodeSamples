--#region 1. Create Table
DROP TABLE IF EXISTS Emails;
GO

CREATE TABLE Emails (
    Subject VARCHAR(100) NOT NULL,
    Body VARCHAR(2048)
);
--#endregion

--#region 2. Insert Data
INSERT INTO Emails (Subject, Body)
VALUES
    ('Welcome to our company', 'As a new member, we are excited to have you on board!'),
    ('Company party at noon today', 'Join us for fun and food at the annual company party this Friday at noon.'),
    ('Meeting rescheduled to 3 PM today (EOM)', NULL);
--#endregion