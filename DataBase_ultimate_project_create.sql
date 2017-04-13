-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-04-13 01:27:55.207

-- tables
-- Table: Aqueduct
CREATE TABLE Aqueduct (
    id_aqueduct varchar(30) NOT NULL COMMENT 'Aqueduct service that was borrowed.',
    cost_month varchar(30) NOT NULL COMMENT 'Cost of the aqueduct that specifically month.',
    benefit double(10,10) NOT NULL COMMENT 'Discount that the enterprise applies to the cost of the month.',
    consumption_M3 int NOT NULL COMMENT 'Quantity of m3 the Organization spent in that month.',
    unitary_cost double(10,10) NOT NULL COMMENT 'Cost per m3 in the current month.',
    Const_aqueduct_id_const_aqueduct varchar(30) NOT NULL COMMENT 'Identifier from cost_aqueduct where the Organization can realize fixed charge.',
    CONSTRAINT Aqueduct_pk PRIMARY KEY (id_aqueduct)
);

-- Table: Bill
CREATE TABLE Bill (
    id_payment varchar(30) NOT NULL COMMENT 'Identification to recognize what the Organization has to pay and how much.',
    bill_total_cost double(10,10) NOT NULL COMMENT 'Total cost of all services.',
    consumption_days int NOT NULL COMMENT 'Days that services have been borrowed since the last bill and have to be paid by the Organization.',
    month int NOT NULL DEFAULT 1 COMMENT '1- 12
Current bill''''s month.',
    Organization_contract varchar(10) NOT NULL COMMENT 'Organization where services are being borrowed.',
    Enterprise_id_enterprise varchar(20) NOT NULL COMMENT 'Enterprise that lends services.',
    Telephony_id_telephony varchar(30) NULL COMMENT 'Telephony service that was borrowed.',
    Television_id_tv varchar(30) NULL COMMENT 'TV service that was borrowed.',
    Internet_id_internet varchar(30) NULL COMMENT 'Internet service that was borrowed.',
    Energy_id_energy varchar(30) NULL COMMENT 'Energy service that was borrowed.',
    Aqueduct_id_aqueduct varchar(30) NULL COMMENT 'Aqueduct service that was borrowed.',
    Sewerage_id_sewerage varchar(30) NULL COMMENT 'Sewerage service that was borrowed.',
    Gas_id_gas varchar(30) NULL COMMENT 'Gas service that was borrowed.',
    CONSTRAINT Bill_pk PRIMARY KEY (id_payment)
) COMMENT 'Table that contains all services registers. ';

-- Table: Const_aqueduct
CREATE TABLE Const_aqueduct (
    id_const_aqueduct varchar(30) NOT NULL COMMENT 'Constant cost of the aqueduct service that was borrowed.',
    fixed_charge double(10,10) NOT NULL COMMENT 'Fixed cost of the aqueduct.',
    CONSTRAINT Const_aqueduct_pk PRIMARY KEY (id_const_aqueduct)
);

-- Table: Const_energy
CREATE TABLE Const_energy (
    id_const_energy varchar(30) NOT NULL COMMENT 'Constant cost of the energy service that was borrowed.',
    fixed_charge double(10,10) NOT NULL COMMENT 'Fixed cost of the energy.',
    CONSTRAINT Const_energy_pk PRIMARY KEY (id_const_energy)
);

-- Table: Const_gas
CREATE TABLE Const_gas (
    id_const_gas varchar(30) NOT NULL COMMENT 'Constant cost of the gas service that was borrowed.',
    fixed_charge double(10,10) NOT NULL COMMENT 'Fixed cost of the gas.',
    cosumption_factor double(10,10) NOT NULL COMMENT 'Constant factor of the gas consumption.',
    CONSTRAINT Const_gas_pk PRIMARY KEY (id_const_gas)
);

-- Table: Const_sewerage
CREATE TABLE Const_sewerage (
    id_const_sewerage varchar(30) NOT NULL COMMENT 'Constant cost of the sewerage service that was borrowed.',
    fixed_charge double(10,10) NOT NULL COMMENT 'Fixed cost of the sewerage.',
    CONSTRAINT Const_sewerage_pk PRIMARY KEY (id_const_sewerage)
);

-- Table: Energy
CREATE TABLE Energy (
    id_energy varchar(30) NOT NULL COMMENT 'Energy service that was borrowed.',
    cost_month varchar(30) NOT NULL COMMENT 'Cost of the energy that specifically month.',
    benefit double(10,10) NOT NULL COMMENT 'Discount that the enterprise applies to the cost of the month.',
    consumption_KWH int NOT NULL COMMENT 'Quantity of KWH the Organization spent in that month.',
    unitary_cost double(10,10) NOT NULL COMMENT 'Cost per KWH in the current month.',
    Const_energy_id_const_energy varchar(30) NOT NULL COMMENT 'Identifier from cost_energy where the Organization can realize fixed charge.',
    CONSTRAINT Energy_pk PRIMARY KEY (id_energy)
);

-- Table: Enterprise
CREATE TABLE Enterprise (
    id_enterprise varchar(20) NOT NULL COMMENT 'Identification of the Enterprise.',
    name varchar(30) NULL COMMENT 'An enterprise that borrows services could have or not a name. Anyhow, it can be identified by its id.',
    colldate date NOT NULL COMMENT 'Collection date is when the service provider enterprise gathers the money that Organizations have to pay for all the services they have lent.',
    CONSTRAINT Enterprise_pk PRIMARY KEY (id_enterprise)
) COMMENT 'Enterprise that borrows services.';

-- Table: Gas
CREATE TABLE Gas (
    id_gas varchar(30) NOT NULL COMMENT 'Gas service that was borrowed.',
    cost_month varchar(30) NOT NULL COMMENT 'Cost of the gas that specifically month.',
    benefit double(10,10) NOT NULL COMMENT 'Discount that the enterprise applies to the cost of the month.',
    equivalence_KWH int NOT NULL COMMENT 'Equivalence of spent gas in m3 to KWH.',
    consumption_M3 double(10,10) NOT NULL COMMENT 'Quantity of m3 the Organization spent in that month.',
    diference_M3 int NOT NULL COMMENT 'Difference of spent gas between actual and last month.',
    unitary_cost double(10,10) NOT NULL COMMENT 'Cost per m3 in the current month.',
    Const_gas_id_const_gas varchar(30) NOT NULL COMMENT 'Identifier from cost_gas where the Organization can realize fixed charge.',
    CONSTRAINT Gas_pk PRIMARY KEY (id_gas)
);

-- Table: Internet
CREATE TABLE Internet (
    id_internet varchar(30) NOT NULL COMMENT 'Internet service that was borrowed.',
    speed_MBS int NOT NULL COMMENT 'Speed of the internet in MB per second.',
    cost_month int NOT NULL COMMENT 'Cost of the internet that specifically month.',
    CONSTRAINT Internet_pk PRIMARY KEY (id_internet)
);

-- Table: Organization
CREATE TABLE Organization (
    contract varchar(10) NOT NULL COMMENT 'Contract which that organization has with the service provider enterprise. Enterprise and Organization are related by the bill.',
    address varchar(30) NOT NULL COMMENT 'Address is the Organization localization, where services are being borrowed. ',
    activity varchar(30) NULL COMMENT 'What the Organization does. It means that an Organization can be an enterprise or a house. That''''s why it can be null. ',
    CONSTRAINT Organization_pk PRIMARY KEY (contract)
) COMMENT 'Organization or House that lends services.';

-- Table: Sewerage
CREATE TABLE Sewerage (
    id_sewerage varchar(30) NOT NULL COMMENT 'Sewerage service that was borrowed.',
    cost_month varchar(30) NOT NULL COMMENT 'Cost of the sewerage that specifically month.',
    benefit double(10,10) NOT NULL COMMENT 'Discount that the enterprise applies to the cost of the month.',
    consumption_M3 int NOT NULL COMMENT 'Quantity of m3 the Organization spent in that month.',
    unitary_cost double(10,10) NOT NULL COMMENT 'Cost per m3 in the current month.',
    Const_sewerage_id_const_sewerage varchar(30) NOT NULL COMMENT 'Identifier from cost_sewerage where the Organization can realize fixed charge.',
    CONSTRAINT Sewerage_pk PRIMARY KEY (id_sewerage)
);

-- Table: Telephony
CREATE TABLE Telephony (
    id_telephony varchar(30) NOT NULL COMMENT 'Telephony service that was borrowed.',
    minutes int NOT NULL COMMENT 'Spent minutes in the month. ',
    cost_month int NOT NULL COMMENT 'Cost of the telephony that specifically month.',
    CONSTRAINT Telephony_pk PRIMARY KEY (id_telephony)
);

-- Table: Television
CREATE TABLE Television (
    id_tv varchar(30) NOT NULL COMMENT 'TV service that was borrowed.',
    chanels int NOT NULL COMMENT 'Required channels by the Organization.',
    cost_month int NOT NULL COMMENT 'Cost of the TV that specifically month.',
    CONSTRAINT Television_pk PRIMARY KEY (id_tv)
);

-- foreign keys
-- Reference: Aqueduct_Const_aqueduct (table: Aqueduct)
ALTER TABLE Aqueduct ADD CONSTRAINT Aqueduct_Const_aqueduct FOREIGN KEY Aqueduct_Const_aqueduct (Const_aqueduct_id_const_aqueduct)
    REFERENCES Const_aqueduct (id_const_aqueduct);

-- Reference: Bill_Aqueduct (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Aqueduct FOREIGN KEY Bill_Aqueduct (Aqueduct_id_aqueduct)
    REFERENCES Aqueduct (id_aqueduct);

-- Reference: Bill_Energy (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Energy FOREIGN KEY Bill_Energy (Energy_id_energy)
    REFERENCES Energy (id_energy);

-- Reference: Bill_Enterprise (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Enterprise FOREIGN KEY Bill_Enterprise (Enterprise_id_enterprise)
    REFERENCES Enterprise (id_enterprise);

-- Reference: Bill_Gas (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Gas FOREIGN KEY Bill_Gas (Gas_id_gas)
    REFERENCES Gas (id_gas);

-- Reference: Bill_Internet (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Internet FOREIGN KEY Bill_Internet (Internet_id_internet)
    REFERENCES Internet (id_internet);

-- Reference: Bill_Organization (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Organization FOREIGN KEY Bill_Organization (Organization_contract)
    REFERENCES Organization (contract);

-- Reference: Bill_Sewerage (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Sewerage FOREIGN KEY Bill_Sewerage (Sewerage_id_sewerage)
    REFERENCES Sewerage (id_sewerage);

-- Reference: Bill_Telephony (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Telephony FOREIGN KEY Bill_Telephony (Telephony_id_telephony)
    REFERENCES Telephony (id_telephony);

-- Reference: Bill_Television (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Television FOREIGN KEY Bill_Television (Television_id_tv)
    REFERENCES Television (id_tv);

-- Reference: Energy_Const_energy (table: Energy)
ALTER TABLE Energy ADD CONSTRAINT Energy_Const_energy FOREIGN KEY Energy_Const_energy (Const_energy_id_const_energy)
    REFERENCES Const_energy (id_const_energy);

-- Reference: Gas_Const_gas (table: Gas)
ALTER TABLE Gas ADD CONSTRAINT Gas_Const_gas FOREIGN KEY Gas_Const_gas (Const_gas_id_const_gas)
    REFERENCES Const_gas (id_const_gas);

-- Reference: Sewerage_Const_sewerage (table: Sewerage)
ALTER TABLE Sewerage ADD CONSTRAINT Sewerage_Const_sewerage FOREIGN KEY Sewerage_Const_sewerage (Const_sewerage_id_const_sewerage)
    REFERENCES Const_sewerage (id_const_sewerage);

-- End of file.

