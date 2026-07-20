--CREATE THE DATABASE
CREATE DATABASE dbo_last_resort_prep_store;
GO

USE dbo_last_resort_prep_store;
GO

--CREATE THE CUSTOMERS TABLE
DROP TABLE IF EXISTS dim_customers;
CREATE TABLE dim_customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    address_line1 VARCHAR(100),
    city VARCHAR(50),
    county VARCHAR(50),
    postcode VARCHAR(10),
    country VARCHAR(50),
    signup_date DATE
);

--POPULATE THE CUSTOMERS TABLE
INSERT INTO dim_customers (customer_id, first_name, last_name, gender, address_line1, city, county, postcode, country, signup_date)
VALUES 
(1, 'James', 'Smith', 'Male', '12 High St', 'Wolverhampton', 'West Midlands', 'WV1 1AA', 'England', '2026-01-15'),
(2, 'Sarah', 'Jones', 'Female', '45 Oak Rd', 'Birmingham', 'West Midlands', 'B1 2EW', 'England', '2026-01-20'),
(3, 'David', 'Taylor', 'Male', '88 Market St', 'Manchester', 'Greater Manchester', 'M1 1AF', 'England', '2026-02-05'),
(4, 'Emily', 'Brown', 'Female', '21 Park Lane', 'Liverpool', 'Merseyside', 'L1 3BB', 'England', '2026-02-12'),
(5, 'Michael', 'Wilson', 'Male', '99 Victoria Rd', 'Bristol', 'Bristol', 'BS1 4AA', 'England', '2026-02-28'),
(6, 'Priya', 'Patel', 'Female', '77 London Rd', 'Leicester', 'Leicestershire', 'LE2 0PA', 'England', '2026-03-05'),
(7, 'Robert', 'Miller', 'Male', '102 High St', 'Wolverhampton', 'West Midlands', 'WV3 0NY', 'England', '2026-03-10'),
(8, 'Linda', 'Davis', 'Female', '5 Sunset Blvd', 'Solihull', 'West Midlands', 'B91 1AA', 'England', '2026-03-15'),
(9, 'William', 'Garcia', 'Male', '14 Green Lane', 'Leeds', 'West Yorkshire', 'LS1 1AA', 'England', '2026-03-22'),
(10, 'Elizabeth', 'Martinez', 'Female', '9 Bridge St', 'Sheffield', 'South Yorkshire', 'S1 1AA', 'England', '2026-04-01'),
(11, 'Richard', 'Anderson', 'Male', '22 Cedar Ave', 'Newcastle', 'Tyne and Wear', 'NE1 1AA', 'England', '2026-04-05'),
(12, 'Susan', 'Thomas', 'Female', '33 Pine Way', 'Nottingham', 'Nottinghamshire', 'NG1 1AA', 'England', '2026-04-12'),
(13, 'Joseph', 'Jackson', 'Male', '44 Maple Dr', 'Coventry', 'West Midlands', 'CV1 1AA', 'England', '2026-04-18'),
(14, 'Margaret', 'White', 'Female', '55 Birch Rd', 'Derby', 'Derbyshire', 'DE1 1AA', 'England', '2026-04-25'),
(15, 'Charles', 'Harris', 'Male', '66 Elm St', 'Stoke', 'Staffordshire', 'ST1 1AA', 'England', '2026-05-02'),
(16, 'Dorothy', 'Martin', 'Female', '77 Ash Dr', 'Dudley', 'West Midlands', 'DY1 1AA', 'England', '2026-05-10'),
(17, 'Thomas', 'Thompson', 'Male', '88 Oak St', 'Telford', 'Shropshire', 'TF1 1AA', 'England', '2026-05-15'),
(18, 'Karen', 'Moore', 'Female', '99 Willow Rd', 'Walsall', 'West Midlands', 'WS1 1AA', 'England', '2026-05-20'),
(19, 'Christopher', 'Young', 'Male', '10 Ivy Lane', 'Gloucester', 'Gloucestershire', 'GL1 1AA', 'England', '2026-05-28'),
(20, 'Nancy', 'Allen', 'Female', '11 Rose Ave', 'Oxford', 'Oxfordshire', 'OX1 1AA', 'England', '2026-06-01'),
(21, 'Gareth', 'Williams', 'Male', '44 Castle St', 'Cardiff', 'Cardiff', 'CF10 1AA', 'Wales', '2026-06-05'),
(22, 'Sian', 'Evans', 'Female', '12 Bay View', 'Swansea', 'Swansea', 'SA1 1AA', 'Wales', '2026-06-08'),
(23, 'Rhys', 'Jones', 'Male', '5 Mountain Rd', 'Bangor', 'Gwynedd', 'LL57 1AA', 'Wales', '2026-06-12'),
(24, 'Nia', 'Roberts', 'Female', '8 Valley Rd', 'Newport', 'Newport', 'NP10 8AA', 'Wales', '2026-06-15'),
(25, 'Dylan', 'Davies', 'Male', '2 River Walk', 'Wrexham', 'Wrexham', 'LL11 1AA', 'Wales', '2026-06-20'),
(26, 'Alistair', 'MacDonald', 'Male', '10 Royal Mile', 'Edinburgh', 'Midlothian', 'EH1 1AA', 'Scotland', '2026-06-22'),
(27, 'Fiona', 'Campbell', 'Female', '25 Clyde St', 'Glasgow', 'Glasgow City', 'G1 1AA', 'Scotland', '2026-06-25'),
(28, 'Hamish', 'Stewart', 'Male', '1 Highland Way', 'Inverness', 'Highland', 'IV1 1AA', 'Scotland', '2026-06-28'),
(29, 'Isla', 'Fraser', 'Female', '33 Granite Rd', 'Aberdeen', 'Aberdeen City', 'AB10 1AA', 'Scotland', '2026-07-01'),
(30, 'Callum', 'Murray', 'Male', '7 Shore Rd', 'Dundee', 'Dundee City', 'DD1 1AA', 'Scotland', '2026-07-05'),
(31, 'Patrick', 'OConnor', 'Male', '15 Falls Rd', 'Belfast', 'Antrim', 'BT12 4AA', 'N. Ireland', '2026-07-06'),
(32, 'Siobhan', 'Murphy', 'Female', '22 Lagan View', 'Belfast', 'Down', 'BT8 6AA', 'N. Ireland', '2026-07-08'),
(33, 'Connor', 'Kelly', 'Male', '40 Quay Rd', 'Derry', 'Londonderry', 'BT48 6AA', 'N. Ireland', '2026-07-10'),
(34, 'Maeve', 'Quinn', 'Female', '9 Orchard St', 'Armagh', 'Armagh', 'BT61 7AA', 'N. Ireland', '2026-07-12'),
(35, 'Evan', 'Davies', 'Male', '5 Oak St', 'Cardiff', 'Cardiff', 'CF24 1AA', 'Wales', '2026-07-13'),
(36, 'Catrin', 'Thomas', 'Female', '12 High St', 'Bangor', 'Gwynedd', 'LL57 2AA', 'Wales', '2026-07-13'),
(37, 'Dylan', 'Jones', 'Male', '8 Bridge Rd', 'Newport', 'Newport', 'NP20 1AA', 'Wales', '2026-07-14'),
(38, 'Mair', 'Williams', 'Female', '20 Hillside', 'Swansea', 'Swansea', 'SA1 2AA', 'Wales', '2026-07-14'),
(39, 'Alasdair', 'Ross', 'Male', '15 Glen Rd', 'Inverness', 'Highland', 'IV2 3AA', 'Scotland', '2026-07-15'),
(40, 'Morag', 'MacLeod', 'Female', '3 Ocean View', 'Oban', 'Argyll', 'PA34 4AA', 'Scotland', '2026-07-15'),
(41, 'Hamish', 'Innes', 'Male', '7 Castle St', 'Stirling', 'Stirling', 'FK8 1AA', 'Scotland', '2026-07-16'),
(42, 'Elspeth', 'Grant', 'Female', '22 Park Ave', 'Perth', 'Perth & Kinross', 'PH1 5AA', 'Scotland', '2026-07-16'),
(43, 'Seamus', 'OReilly', 'Male', '10 Main St', 'Cork', 'Cork', 'T12 1AA', 'Ireland', '2026-07-17'),
(44, 'Siobhan', 'Murphy', 'Female', '5 Church Rd', 'Galway', 'Galway', 'H91 1AA', 'Ireland', '2026-07-17'),
(45, 'Liam', 'Walsh', 'Male', '33 Quay St', 'Waterford', 'Waterford', 'X91 1AA', 'Ireland', '2026-07-18'),
(46, 'Ciara', 'Byrne', 'Female', '9 River View', 'Limerick', 'Limerick', 'V94 1AA', 'Ireland', '2026-07-18'),
(47, 'Sean', 'Doyle', 'Male', '4 School Ln', 'Kilkenny', 'Kilkenny', 'R95 1AA', 'Ireland', '2026-07-18'),
(48, 'Niamh', 'Ryan', 'Female', '14 Orchard Way', 'Athlone', 'Westmeath', 'N37 1AA', 'Ireland', '2026-07-19'),
(49, 'Declan', 'Kennedy', 'Male', '6 Meadow Dr', 'Tralee', 'Kerry', 'V92 1AA', 'Ireland', '2026-07-19'),
(50, 'Aoife', 'Lynch', 'Female', '2 Oakwood', 'Navan', 'Meath', 'C15 1AA', 'Ireland', '2026-07-19');

--CREATE THE PRODUCTS TABLE
DROP TABLE IF EXISTS dim_stock;
CREATE TABLE dim_stock (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10, 2),
    unit_cost DECIMAL(10, 2),
    reorder_level INT
);

--POPULATE THE PRODUCTS TABLE
INSERT INTO dim_stock (product_id, product_name, category, unit_price, unit_cost, reorder_level)
VALUES 
-- Water & Purification (8)
(1, 'Water Purification Tablets', 'Water & Purification', 12.99, 8.50, 50),
(2, 'Portable Water Filter', 'Water & Purification', 45.00, 30.00, 20),
(3, '5L Collapsible Water Container', 'Water & Purification', 8.50, 5.50, 30),
(4, 'LifeStraw Personal Filter', 'Water & Purification', 25.00, 16.00, 40),
(5, 'Activated Charcoal Filter', 'Water & Purification', 15.00, 9.50, 25),
(6, 'Hand Pump Water Filter', 'Water & Purification', 65.00, 42.00, 10),
(7, 'Water Storage Drum 50L', 'Water & Purification', 85.00, 55.00, 5),
(8, 'Chlorine Dioxide Drops', 'Water & Purification', 18.00, 11.50, 15),

-- Food & Nutrition (10)
(9, 'Freeze Dried Beef Stew', 'Food & Nutrition', 14.99, 9.00, 60),
(10, 'Survival Ration Bars', 'Food & Nutrition', 9.99, 6.50, 100),
(11, 'Dehydrated Fruit Pack', 'Food & Nutrition', 7.50, 4.80, 40),
(12, 'Canned Beans Bulk', 'Food & Nutrition', 3.50, 2.20, 100),
(13, 'Powdered Milk 1kg', 'Food & Nutrition', 12.00, 7.50, 30),
(14, 'Honey 1kg', 'Food & Nutrition', 10.50, 6.50, 20),
(15, 'Oatmeal 2kg', 'Food & Nutrition', 6.00, 3.80, 50),
(16, 'Peanut Butter 500g', 'Food & Nutrition', 4.50, 2.90, 40),
(17, 'White Rice 5kg', 'Food & Nutrition', 15.00, 9.00, 20),
(18, 'Canned Vegetables Medley', 'Food & Nutrition', 2.99, 1.90, 80),

-- Power & Lighting (8)
(19, 'Crank Flashlight', 'Power & Lighting', 22.00, 14.00, 20),
(20, 'LED Headlamp', 'Power & Lighting', 30.00, 19.50, 25),
(21, 'Solar Power Bank 20k', 'Power & Lighting', 55.00, 35.00, 15),
(22, 'AA Lithium Batteries 10pk', 'Power & Lighting', 15.00, 9.50, 50),
(23, 'Solar Lantern', 'Power & Lighting', 25.00, 16.00, 20),
(24, 'Portable Solar Panel', 'Power & Lighting', 120.00, 78.00, 8),
(25, 'Glow Sticks 10pk', 'Power & Lighting', 10.00, 6.00, 40),
(26, 'High-Output Camping Lamp', 'Power & Lighting', 40.00, 26.00, 12),

-- Medical (8)
(27, 'Trauma First Aid Kit', 'Medical', 60.00, 39.00, 10),
(28, 'Burn Gel Dressing', 'Medical', 8.00, 5.00, 30),
(29, 'Sterile Gauze Pads 50pk', 'Medical', 12.00, 7.50, 40),
(30, 'Antiseptic Solution', 'Medical', 6.50, 4.00, 35),
(31, 'Tourniquet', 'Medical', 22.00, 14.00, 20),
(32, 'Medical Scissors', 'Medical', 9.00, 5.50, 25),
(33, 'Instant Cold Pack', 'Medical', 4.50, 2.80, 50),
(34, 'Antibiotic Ointment', 'Medical', 11.00, 7.00, 30),

-- Shelter & Warmth (8)
(35, 'Emergency Thermal Blanket', 'Shelter & Warmth', 5.00, 3.00, 100),
(36, 'Survival Bivvy Sack', 'Shelter & Warmth', 28.00, 18.00, 20),
(37, 'Wool Base Layer Top', 'Shelter & Warmth', 45.00, 29.00, 15),
(38, 'Heavy Duty Tarp 3x3m', 'Shelter & Warmth', 20.00, 12.50, 25),
(39, 'Hand Warmers 20pk', 'Shelter & Warmth', 15.00, 9.50, 40),
(40, 'Winter Sleeping Bag', 'Shelter & Warmth', 95.00, 62.00, 5),
(41, 'Thermal Socks 3pk', 'Shelter & Warmth', 18.00, 11.00, 30),
(42, 'Emergency Poncho', 'Shelter & Warmth', 6.00, 3.50, 50),

-- Tools & Hardware (8)
(43, 'Multi-Tool 15-in-1', 'Tools & Hardware', 55.00, 36.00, 15),
(44, 'Folding Saw', 'Tools & Hardware', 25.00, 16.00, 20),
(45, 'Paracord 50m', 'Tools & Hardware', 12.00, 7.50, 40),
(46, 'Duct Tape Industrial', 'Tools & Hardware', 8.00, 5.00, 60),
(47, 'Fire Starter Ferro Rod', 'Tools & Hardware', 14.00, 9.00, 30),
(48, 'Heavy Duty Work Gloves', 'Tools & Hardware', 18.00, 11.50, 25),
(49, 'Camping Hatchet', 'Tools & Hardware', 35.00, 22.00, 12),
(50, 'Whistle Emergency', 'Tools & Hardware', 5.00, 3.00, 50);

--CREATE THE SALES TABLE
DROP TABLE IF EXISTS fact_sales;
CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    transaction_date DATE,
    product_id INT,
    customer_id INT,
    quantity_sold INT,
    total_price DECIMAL(10, 2),
    -- Relationships
    FOREIGN KEY (product_id) REFERENCES dim_stock(product_id),
    FOREIGN KEY (customer_id) REFERENCES dim_customers(customer_id)
);

--POPULATE THE SALES TABLE
INSERT INTO fact_sales (sales_id, transaction_date, product_id, customer_id, quantity_sold, total_price)
VALUES 
(1, '2026-06-10', 1, 5, 2, 25.98), (2, '2026-06-10', 12, 12, 5, 17.50), (3, '2026-06-11', 24, 20, 1, 120.00),
(4, '2026-06-11', 35, 33, 10, 50.00), (5, '2026-06-12', 45, 2, 2, 24.00), (6, '2026-06-12', 9, 45, 3, 44.97),
(7, '2026-06-13', 20, 15, 1, 30.00), (8, '2026-06-13', 40, 22, 1, 95.00), (9, '2026-06-14', 10, 8, 4, 39.96),
(10, '2026-06-14', 27, 49, 1, 60.00), (11, '2026-06-15', 31, 3, 1, 22.00), (12, '2026-06-15', 47, 18, 2, 28.00),
(13, '2026-06-16', 2, 40, 1, 45.00), (14, '2026-06-16', 16, 25, 3, 13.50), (15, '2026-06-17', 21, 30, 2, 110.00),
(16, '2026-06-17', 43, 7, 1, 55.00), (17, '2026-06-18', 33, 14, 2, 9.00), (18, '2026-06-18', 5, 41, 1, 15.00),
(19, '2026-06-19', 37, 29, 1, 45.00), (20, '2026-06-19', 11, 36, 2, 15.00), (21, '2026-06-20', 49, 11, 1, 35.00),
(22, '2026-06-20', 4, 44, 2, 50.00), (23, '2026-06-21', 8, 21, 1, 18.00), (24, '2026-06-21', 13, 39, 1, 12.00),
(25, '2026-06-22', 26, 4, 1, 40.00), (26, '2026-06-22', 46, 28, 5, 40.00), (27, '2026-06-23', 3, 10, 2, 17.00),
(28, '2026-06-23', 25, 47, 3, 30.00), (29, '2026-06-24', 38, 19, 1, 20.00), (30, '2026-06-24', 19, 32, 2, 44.00),
(31, '2026-06-25', 42, 6, 2, 12.00), (32, '2026-06-25', 15, 23, 1, 6.00), (33, '2026-06-26', 22, 35, 1, 15.00),
(34, '2026-06-26', 30, 48, 2, 13.00), (35, '2026-06-27', 44, 13, 1, 25.00), (36, '2026-06-27', 7, 26, 1, 85.00),
(37, '2026-06-28', 17, 31, 1, 15.00), (38, '2026-06-28', 50, 42, 4, 20.00), (39, '2026-06-29', 29, 9, 2, 24.00),
(40, '2026-06-29', 1, 37, 3, 38.97), (41, '2026-06-30', 23, 1, 1, 25.00), (42, '2026-06-30', 34, 16, 1, 11.00),
(43, '2026-07-01', 6, 34, 1, 65.00), (44, '2026-07-01', 18, 43, 3, 8.97), (45, '2026-07-02', 28, 27, 2, 16.00),
(46, '2026-07-02', 32, 50, 1, 9.00), (47, '2026-07-03', 14, 17, 1, 10.50), (48, '2026-07-03', 48, 38, 1, 18.00),
(49, '2026-07-04', 39, 24, 2, 30.00), (50, '2026-07-04', 41, 15, 1, 18.00), (51, '2026-07-05', 10, 33, 5, 49.95),
(52, '2026-07-05', 20, 2, 2, 60.00), (53, '2026-07-06', 45, 45, 1, 12.00), (54, '2026-07-06', 36, 49, 1, 28.00),
(55, '2026-07-07', 24, 3, 1, 120.00), (56, '2026-07-07', 12, 18, 10, 35.00), (57, '2026-07-08', 3, 40, 3, 25.50),
(58, '2026-07-08', 35, 25, 20, 100.00), (59, '2026-07-09', 46, 30, 2, 16.00), (60, '2026-07-09', 27, 7, 1, 60.00),
(61, '2026-07-10', 9, 14, 2, 29.98), (62, '2026-07-10', 44, 41, 2, 50.00), (63, '2026-07-11', 16, 29, 1, 4.50),
(64, '2026-07-11', 37, 36, 2, 90.00), (65, '2026-07-12', 5, 11, 3, 45.00), (66, '2026-07-12', 30, 44, 1, 6.50),
(67, '2026-07-13', 21, 21, 1, 55.00), (68, '2026-07-13', 13, 39, 2, 24.00), (69, '2026-07-14', 49, 4, 1, 35.00),
(70, '2026-07-14', 8, 28, 2, 36.00), (71, '2026-07-15', 26, 10, 1, 40.00), (72, '2026-07-15', 42, 47, 1, 6.00),
(73, '2026-07-16', 38, 19, 2, 40.00), (74, '2026-07-16', 22, 32, 2, 30.00), (75, '2026-07-17', 25, 6, 4, 40.00),
(76, '2026-07-17', 15, 23, 2, 12.00), (77, '2026-07-18', 47, 35, 1, 14.00), (78, '2026-07-18', 34, 48, 2, 22.00),
(79, '2026-07-19', 1, 13, 1, 12.99), (80, '2026-07-19', 7, 26, 1, 85.00), (81, '2026-07-19', 43, 31, 2, 110.00),
(82, '2026-07-19', 31, 42, 1, 22.00), (83, '2026-07-19', 19, 9, 3, 66.00), (84, '2026-07-19', 11, 37, 1, 7.50),
(85, '2026-07-19', 50, 1, 2, 10.00), (86, '2026-07-19', 29, 16, 1, 12.00), (87, '2026-07-19', 33, 34, 3, 13.50),
(88, '2026-07-19', 18, 43, 1, 2.99), (89, '2026-07-19', 28, 27, 1, 8.00), (90, '2026-07-19', 32, 50, 2, 18.00),
(91, '2026-07-19', 14, 17, 2, 21.00), (92, '2026-07-19', 48, 38, 2, 36.00), (93, '2026-07-19', 39, 24, 1, 15.00),
(94, '2026-07-19', 41, 15, 2, 36.00), (95, '2026-07-19', 23, 33, 1, 25.00), (96, '2026-07-19', 2, 2, 1, 45.00),
(97, '2026-07-19', 4, 45, 1, 25.00), (98, '2026-07-19', 40, 49, 1, 95.00), (99, '2026-07-19', 12, 3, 5, 17.50),
(100, '2026-07-19', 24, 18, 1, 120.00);

