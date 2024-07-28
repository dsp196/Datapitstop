
ALTER TABLE Circuits
ADD CONSTRAINT PK_Circuits
PRIMARY KEY (circuitId);



ALTER TABLE Status
ADD CONSTRAINT PK_Status
PRIMARY KEY (StatusId);

-- Add primary key to the Drivers table
ALTER TABLE Drivers
ADD CONSTRAINT PK_Drivers
PRIMARY KEY (driverId);

-- Add primary key to the Races table
ALTER TABLE Races
ADD CONSTRAINT PK_Races
PRIMARY KEY (raceId);


ALTER TABLE Constructors
ADD CONSTRAINT PK_Constructors
PRIMARY KEY ([constructorId])


ALTER TABLE Races
ADD CONSTRAINT FK_Races_Circuits
FOREIGN KEY (circuitId) REFERENCES Circuits(circuitId);


ALTER TABLE Results
ADD CONSTRAINT FK_Results_Races
FOREIGN KEY (raceId) REFERENCES Races(raceId);

ALTER TABLE Results
ADD CONSTRAINT FK_Results_Drivers
FOREIGN KEY (driverId) REFERENCES Drivers(driverId);

ALTER TABLE Results
ADD CONSTRAINT FK_Results_Constructors
FOREIGN KEY (constructorId) REFERENCES Constructors(constructorId);



ALTER TABLE Driver_Standings
ADD CONSTRAINT FK_DriverStandings_Drivers
FOREIGN KEY (driverId) REFERENCES Drivers(driverId);


ALTER TABLE Driver_Standings
ADD CONSTRAINT FK_DriverStandings_Races
FOREIGN KEY (raceId) REFERENCES Races(raceId);


ALTER TABLE Constructor_Standings
ADD CONSTRAINT FK_ConstructorStandings_Constructors
FOREIGN KEY (constructorId) REFERENCES Constructors(constructorId);

ALTER TABLE Constructor_Standings
ADD CONSTRAINT FK_ConstructorStandings_Races
FOREIGN KEY (raceId) REFERENCES Races(raceId);



ALTER TABLE lap_times
ADD CONSTRAINT FK_LapTimes_Races
FOREIGN KEY (raceId) REFERENCES Races(raceId);

ALTER TABLE lap_times
ADD CONSTRAINT FK_LapTimes_Drivers
FOREIGN KEY (driverId) REFERENCES Drivers(driverId);


ALTER TABLE pit_stops
ADD CONSTRAINT FK_PitStops_Races
FOREIGN KEY (raceId) REFERENCES Races(raceId);

ALTER TABLE pit_stops
ADD CONSTRAINT FK_PitStops_Drivers
FOREIGN KEY (driverId) REFERENCES Drivers(driverId);


ALTER TABLE Sprint_Results
ADD CONSTRAINT FK_SprintResults_Races
FOREIGN KEY (raceId) REFERENCES Races(raceId);

ALTER TABLE Sprint_Results
ADD CONSTRAINT FK_SprintResults_Drivers
FOREIGN KEY (driverId) REFERENCES Drivers(driverId);

-- Link Sprint_Results to Constructors
ALTER TABLE Sprint_Results
ADD CONSTRAINT FK_SprintResults_Constructors
FOREIGN KEY (constructorId) REFERENCES Constructors(constructorId);



-- Link Qualifying to Races
ALTER TABLE Qualifying
ADD CONSTRAINT FK_Qualifying_Races
FOREIGN KEY (raceId) REFERENCES Races(raceId);

-- Link Qualifying to Drivers
ALTER TABLE Qualifying
ADD CONSTRAINT FK_Qualifying_Drivers
FOREIGN KEY (driverId) REFERENCES Drivers(driverId);

-- Link Qualifying to Constructors
ALTER TABLE Qualifying
ADD CONSTRAINT FK_Qualifying_Constructors
FOREIGN KEY (constructorId) REFERENCES Constructors(constructorId);



-- Link Constructor_Results to Races
ALTER TABLE Constructor_Results
ADD CONSTRAINT FK_ConstructorResults_Races
FOREIGN KEY (raceId) REFERENCES Races(raceId);

-- Link Constructor_Results to Constructors
ALTER TABLE Constructor_Results
ADD CONSTRAINT FK_ConstructorResults_Constructors
FOREIGN KEY (constructorId) REFERENCES Constructors(constructorId);



ALTER TABLE Sprint_Results
ALTER COLUMN statusId INT

ALTER TABLE Results
ADD CONSTRAINT FK_Results_Status
FOREIGN KEY (statusId) REFERENCES Status(StatusId);

ALTER TABLE Sprint_Results
ADD CONSTRAINT FK_SprintResults_Status
FOREIGN KEY (statusId) REFERENCES Status(StatusId);