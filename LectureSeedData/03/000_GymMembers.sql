-- Gym Users

--#region 1. Create Table
DROP TABLE IF EXISTS GymMembers;
GO

CREATE TABLE GymMembers (
    FullName VARCHAR(40) NOT NULL,
    Email VARCHAR(254) NOT NULL,
    BirthDate DATE NOT NULL,
    Height DECIMAL(4,1) NOT NULL,
    Hours SMALLINT NOT NULL,
    CreatedDateTime DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);
--#endregion

--#region 2. Insert Data
INSERT INTO GymMembers (FullName, Email, BirthDate, Height, Hours)
VALUES
    ('Pope Kim', 'Pope@googlemail.com ', '2000-01-01', 180.5, 1532),
    ('Mike Smith', 'msmith@gmail.com', '2020-05-15', 155.2, 30);

INSERT INTO GymMembers (FullName, Email, BirthDate, Height, Hours, CreatedDateTime)
VALUES ('Georgiy Ivanov', 'whoami@me.com', '1995-12-31', 170.3, 1, '2026-10-28T10:00:00Z');
--#endregion
