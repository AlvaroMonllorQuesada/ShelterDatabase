CREATE TABLE [dbo].[AnimalTreatment] (
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    [AnimalId] INT NOT NULL,
    [MedicationName] NVARCHAR(100) NOT NULL,  -- Medication name directly stored, because we should keep it simple for now (we cant have a separate table for medications and feed it with data)
    [Dosage] NVARCHAR(50) NOT NULL,           -- e.g., "250mg", "2 tablets"
    [Frequency] NVARCHAR(50) NOT NULL,        -- e.g., "Twice a day", "Every 3 days"
    [DurationDays] INT NOT NULL,
    [StartDate] DATETIME NOT NULL,            -- When the treatment starts
    [EndDate] AS DATEADD(DAY, DurationDays, StartDate) PERSISTED, -- Auto-calculated
    [Recommendations] NVARCHAR(500),          -- Additional recommendations
    [Notes] NVARCHAR(500),                    -- Extra notes

    CONSTRAINT FK_AnimalTreatment_Animal FOREIGN KEY (AnimalId) REFERENCES Animal(Id) ON DELETE CASCADE
);