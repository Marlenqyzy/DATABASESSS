create table Customer_address(
    Caddress_id integer primary key,
    Street varchar(255),
    City varchar(255),
    State varchar(255),
    Postal_code varchar(255),
    Country varchar(255)
);

create table Reg_Customers (
    rCustomer_id integer primary key,
    First_name varchar(255),
    Middle_name varchar(255),
    Last_name varchar(255),
    Caddress_id integer references Customer_address(Caddress_id),
    Phone_number varchar(255),
    Date_of_birth varchar(255),
    Add_info varchar(255)
);

create table Customers (
    Customer_id integer primary key,
    First_name varchar(255),
    Middle_name varchar(255),
    Last_name varchar(255),
    rCustomer_id integer references Reg_Customers(rCustomer_id)
);

create table Brand(
    Brand_id integer primary key,
    name varchar(255),
    company_name varchar(255)
);

create table products(
    UPC varchar(255) primary key,
    name varchar(255),
    Brand_id integer references Brand(Brand_id),
    Postal_code varchar(255),
    size varchar(255),
    weight varchar(255),
    type varchar(255)
);



create table Store_address(
    Saddress_id integer primary key,
    Street varchar(255),
    City varchar(255),
    State varchar(255),
    Postal_code varchar(255),
    Country varchar(255)
);

create table Online_shopping(
    Online_store_id integer primary key,
    Web_address varchar(255),
    card_info varchar(255),
    Customer_id integer references Customers(Customer_id)
);

create table Store(
    Store_id integer primary key,
    Online_store_id integer references Online_shopping(Online_store_id),
    name varchar(255),
    UPC varchar(255) references products(UPC),
    price numeric,
    Number_of_sales numeric,
    working_time varchar(255),
    Saddress_id integer references Store_address(Saddress_id)

);

create table orders(
    Order_id integer primary key,
    Customer_id integer references Customers(Customer_id),
    Store_id integer references Store(Store_id),
    UPC varchar(255) references products(UPC),
    Date_of_order varchar(255),
    amount numeric,
    price numeric,
    isPaid varchar(5),
    address varchar(255)
);


create table Delivery(
    Delivery_id integer primary key,
    name varchar(255),
    Order_id integer references orders(Order_id),
    date_of_delivery varchar(255),
    phone_number varchar(255)
);

insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (1, 'Sunbrook', 'Buzen', null, 'Non-binary', 'Japan');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (2, 'Kedzie', 'Nikki', null, 'Male', 'Benin');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (3, 'Brickson Park', 'Moche', null, 'Male', 'Peru');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (4, 'Derek', 'Libuganon', null, 'Polygender', 'Philippines');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (5, 'Spaight', 'Tampakan', null, 'Genderqueer', 'Philippines');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (6, 'Jenifer', 'Sumberarumkrajan', null, 'Agender', 'Indonesia');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (7, 'Burrows', 'Huangbizhuang', null, 'Polygender', 'China');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (8, 'Knutson', 'Prelog', null, 'Genderfluid', 'Croatia');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (9, 'Lerdahl', 'Upi', null, 'Male', 'Philippines');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (10, 'Hintze', 'Calibungan', null, 'Agender', 'Philippines');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (11, 'Northport', 'Yangxi', null, 'Genderfluid', 'China');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (12, 'Mallard', 'Krutinka', null, 'Female', 'Russia');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (13, 'Hoard', 'Fantino', null, 'Genderqueer', 'Dominican Republic');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (14, 'Carberry', 'Dobdoban', null, 'Agender', 'Philippines');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (15, 'Butternut', 'Denver', 'Colorado', 'Genderqueer', 'United States');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (16, 'Cordelia', 'Māmūnīyeh', null, 'Genderqueer', 'Iran');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (17, 'Tennessee', 'Gulong', null, 'Agender', 'China');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (18, 'Golf', 'Odintsovo', null, 'Male', 'Russia');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (19, 'Quincy', 'Zapala', null, 'Male', 'Argentina');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (20, 'Rockefeller', 'Eiriz', 'Porto', 'Non-binary', 'Portugal');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (21, 'Golf', 'Jasionów', null, 'Genderqueer', 'Poland');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (22, 'Merrick', 'Shinjō', null, 'Polygender', 'Japan');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (23, 'Packers', 'Beringinjaya', null, 'Male', 'Indonesia');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (24, 'Mandrake', 'Moshiyi', null, 'Male', 'China');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (25, 'Redwing', 'Żernica', null, 'Genderfluid', 'Poland');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (26, '2nd', 'Kibingo', null, 'Genderfluid', 'Uganda');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (27, 'Novick', 'Viana do Castelo', 'Viana do Castelo', 'Male', 'Portugal');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (28, 'Prairie Rose', 'Kecskemét', 'Bács-Kiskun', 'Male', 'Hungary');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (29, 'Commercial', 'Tournai', 'Wallonie', 'Genderfluid', 'Belgium');
insert into Customer_address (Caddress_id, Street, City, State, Postal_code, Country) values (30, 'Burning Wood', 'Varberg', 'Halland', 'Male', 'Sweden');


insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (1, 'Bliss', 'Cicily', 'Oxtoby', 2, '805-769-5727', '3/9/2021', 'Software Consultant');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (2, 'Korry', 'Wynny', 'Ridley', 1, '461-525-3844', '12/23/2020', 'Food Chemist');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (3, 'Bonnibelle', 'Nickolaus', 'Kepp', 3, '991-722-7608', '2/16/2021', 'Developer IV');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (4, 'Datha', 'Ryon', 'Rosenvasser', 4, '213-847-0509', '1/6/2021', 'Environmental Specialist');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (5, 'Xaviera', 'Abagail', 'Prince', 5, '763-752-9854', '11/8/2021', 'Junior Executive');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (6, 'Kym', 'Petunia', 'Gutman', 6, '967-179-9374', '6/17/2021', 'Administrative Officer');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (7, 'Esma', 'Claudell', 'Akrigg', 7, '997-214-9486', '6/2/2021', 'Professor');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (8, 'Susanna', 'Harman', 'Reinisch', 8, '619-245-5087', '3/21/2021', 'Engineer II');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (9, 'Viole', 'Norry', 'Lowensohn', 10, '302-953-9388', '7/19/2021', 'Information Systems Manager');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (10, 'Eimile', 'Alvinia', 'Hebblewhite', 9, '995-878-0474', '9/5/2021', 'Biostatistician I');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (11, 'Tessy', 'Caterina', 'Rahlof', 11, '455-278-1772', '10/1/2021', 'Safety Technician IV');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (12, 'Nobe', 'Welch', 'Vittore', 12, '619-468-1608', '3/22/2021', 'Executive Secretary');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (13, 'Staffard', 'Carlyn', 'Treanor', 14, '415-675-9031', '10/4/2021', 'Community Outreach Specialist');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (14, 'Gratiana', 'Esdras', 'Maystone', 15, '407-967-0412', '9/4/2021', 'Senior Quality Engineer');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (15, 'Joline', 'Maurits', 'MacCombe', 13, '981-748-4555', '12/5/2020', 'Pharmacist');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (16, 'Ricardo', 'Cahra', 'Issacson', 16, '361-699-4607', '8/9/2021', 'Programmer Analyst II');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (17, 'Madonna', 'Adiana', 'Hathorn', 17, '752-506-4145', '8/5/2021', 'Cost Accountant');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (18, 'Steffane', 'Hyacinth', 'Schultheiss', 18, '343-654-0434', '7/30/2021', 'Senior Cost Accountant');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (19, 'Eula', 'Juliane', 'Plumbley', 19, '108-753-0537', '9/22/2021', 'Environmental Specialist');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (20, 'Holden', 'Olin', 'Mitie', 25, '267-185-4886', '12/31/2020', 'Business Systems Development Analyst');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (21, 'Hanan', 'Cher', 'Allone', 21, '963-611-4048', '9/25/2021', 'Quality Control Specialist');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (22, 'Mathe', 'Lindon', 'Karet', 20, '179-957-3059', '2/17/2021', 'Engineer I');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (23, 'Izzy', 'Clarke', 'Credland', 22, '887-812-0193', '1/19/2021', 'Programmer Analyst III');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (24, 'Jennilee', 'Percy', 'Linstead', 24, '100-278-6296', '10/10/2021', 'Administrative Assistant IV');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (25, 'Fabien', 'Ambrose', 'Bortolini', 26, '234-648-2717', '6/17/2021', 'Senior Cost Accountant');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (26, 'Wald', 'Cindie', 'Burrell', 29, '717-458-7773', '4/10/2021', 'Administrative Officer');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (27, 'Curtis', 'Walliw', 'McCaw', 28, '390-673-2873', '11/8/2021', 'VP Product Management');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (28, 'Kally', 'Claudelle', 'Ranyelld', 30, '910-113-2464', '7/24/2021', 'Junior Executive');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (29, 'Luciana', 'Maryrose', 'Haley', 27, '977-674-5552', '5/26/2021', 'Internal Auditor');
insert into Reg_Customers (rCustomer_id, First_name, Middle_name, Last_name, Caddress_id, Phone_number, Date_of_birth, Add_info) values (30, 'Meade', 'Eugine', 'Pringuer', 23, '757-725-7799', '3/21/2021', 'Quality Engineer');


insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (1, 'Cherye', 'Kevin', 'Binion', 17);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (2, 'Abbe', 'Noami', 'Paramor', 2);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (3, 'Cristal', 'Lissy', 'Grishin', 17);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (4, 'Athena', 'Cesya', 'Simonard', 8);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (5, 'Darius', 'Jilleen', 'Eastam', 2);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (6, 'Richardo', 'Rubia', 'Elleyne', 13);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (7, 'Massimo', 'Auberta', 'Foli', 9);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (8, 'Nappie', 'Menard', 'Bramham', 9);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (9, 'Kingsly', 'Miller', 'Mesant', 7);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (10, 'Brandais', 'Kassey', 'Trazzi', 9);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (11, 'Lief', 'Kelcey', 'Ostridge', 4);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (12, 'Delmer', 'Rozanna', 'Skuse', 5);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (13, 'Chicky', 'Malia', 'Guye', 6);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (14, 'Henrik', 'Elwyn', 'Jindra', 27);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (15, 'Mariette', 'Mark', 'Meadley', 18);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (16, 'Jonell', 'Daron', 'Larmet', 11);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (17, 'Ciel', 'Lesli', 'Choat', 23);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (18, 'Napoleon', 'Wilhelmine', 'Munnis', 23);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (19, 'Bobby', 'Kary', 'McCarrell', 3);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (20, 'Katheryn', 'Lara', 'Maun', 7);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (21, 'Randy', 'Wylma', 'Swarbrigg', 1);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (22, 'Horton', 'Rosaline', 'Masey', 26);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (23, 'Estrella', 'Cthrine', 'O''Lenechan', 16);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (24, 'Hoyt', 'Ashlin', 'Beningfield', 6);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (25, 'Felice', 'Celka', 'Pariss', 8);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (26, 'Gordon', 'Vonny', 'Bland', 1);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (27, 'Artemis', 'Charmion', 'Courtois', 10);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (28, 'Davie', 'Nari', 'Casbourne', 7);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (29, 'Jessi', 'Shae', 'Bourdel', 6);
insert into Customers (Customer_id, First_name, Middle_name, Last_name, rCustomer_id) values (30, 'Lita', 'Fancie', 'Easby', 10);


insert into Brand (Brand_id, name, company_name) values (1, 'OSAGE ORANGE VAR BOIS DARC POLLEN', 'Ruecker-Jacobson');
insert into Brand (Brand_id, name, company_name) values (2, 'Permethrin', 'Reinger Group');
insert into Brand (Brand_id, name, company_name) values (3, 'childrens pain and fever', 'Lubowitz, Watsica and Bergnaum');
insert into Brand (Brand_id, name, company_name) values (4, 'AZITHROMYCIN', 'Runolfsdottir, Gaylord and Jaskolski');
insert into Brand (Brand_id, name, company_name) values (5, 'Diclofenac sodium and Misoprostol', 'Koch-Heaney');
insert into Brand (Brand_id, name, company_name) values (6, 'Mucor plumbeus', 'Herman Inc');
insert into Brand (Brand_id, name, company_name) values (7, 'Megestrol Acetate', 'Towne, Mraz and Hamill');
insert into Brand (Brand_id, name, company_name) values (8, 'LOVAZA', 'O''Connell, Wilderman and Kuhic');
insert into Brand (Brand_id, name, company_name) values (9, 'Cevimeline Hydrochloride', 'Baumbach, Harris and Huel');
insert into Brand (Brand_id, name, company_name) values (10, 'Timolol Maleate', 'Corwin and Sons');
insert into Brand (Brand_id, name, company_name) values (11, 'Ziprasidone Hydrochloride', 'Cartwright and Sons');
insert into Brand (Brand_id, name, company_name) values (12, 'Ceftriaxone Sodium', 'Muller, Boyer and Okuneva');
insert into Brand (Brand_id, name, company_name) values (13, 'Ocean Potion Quick Dry 15 Sunscreen', 'Ward LLC');
insert into Brand (Brand_id, name, company_name) values (14, 'Prevage Anti Aging Moisture Broad Spectrum Sunscreen SPF 30', 'Hegmann and Sons');
insert into Brand (Brand_id, name, company_name) values (15, 'Pollens - Weeds and Garden Plants, Ragweed, Giant Ambrosia trifida', 'Nienow Group');
insert into Brand (Brand_id, name, company_name) values (16, 'Harmon Face Values', 'Bergstrom-Rau');
insert into Brand (Brand_id, name, company_name) values (17, 'rexall miconazole 3', 'Adams Inc');
insert into Brand (Brand_id, name, company_name) values (18, 'Indomethacin', 'Powlowski-Koepp');
insert into Brand (Brand_id, name, company_name) values (19, 'FUCOIDAN ESSENCE', 'Kozey, Doyle and Rippin');
insert into Brand (Brand_id, name, company_name) values (20, 'NARS PURE RADIANT TINTED MOISTURIZER', 'Schoen, Jones and Collins');
insert into Brand (Brand_id, name, company_name) values (21, 'Sucralfate', 'Bernier, Koss and Kling');
insert into Brand (Brand_id, name, company_name) values (22, 'Vida Mia Hand Sanitizer Aloe Vera', 'McLaughlin, Glover and Nicolas');
insert into Brand (Brand_id, name, company_name) values (23, 'Polocaine', 'Von-Boehm');
insert into Brand (Brand_id, name, company_name) values (24, 'Lotrel', 'Kshlerin-Armstrong');
insert into Brand (Brand_id, name, company_name) values (25, 'Degree', 'Wiza, Olson and Stehr');
insert into Brand (Brand_id, name, company_name) values (26, 'TC EnrichedFoam', 'Stamm, Hickle and Lebsack');
insert into Brand (Brand_id, name, company_name) values (27, 'Mucinex', 'Koss Group');
insert into Brand (Brand_id, name, company_name) values (28, 'Leader Nicotine', 'Ruecker and Sons');
insert into Brand (Brand_id, name, company_name) values (29, 'AZO Urinary Tract Health', 'Legros, Bednar and Bartoletti');
insert into Brand (Brand_id, name, company_name) values (30, 'soCALM Pain Relieving', 'Daniel, Kuphal and Conn');


insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('52959-691', 'Juice - Happy Planet', 1, '66129-107', 1, 1, 'Carpenter, The');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('0054-4721', 'Flower - Potmums', 2, '76105-714', 2, 2, 'Marty');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('55154-5686', 'Pasta - Orzo, Dry', 3, '16590-089', 3, 3, 'This Film Is Not Yet Rated');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('50474-596', 'Bread - Olive', 4, '36987-3063', 4, 4, 'Thurgood');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('41250-057', 'Yogurt - Peach, 175 Gr', 5, '68306-106', 5, 5, 'Valmont');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('43742-0296', 'Ecolab - Lime - A - Way 4/4 L', 6, '54868-3526', 6, 6, 'Prisoner of the Mountains (Kavkazsky plennik)');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('43772-0005', 'Rice - Jasmine Sented', 7, '64896-692', 7, 7, 'American Virgin');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('50436-3182', 'Boogies', 8, '54157-104', 8, 8, 'World according to Ion B., The (Lumea vazuta de Ion B)');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('24385-413', 'Pimento - Canned', 9, '0023-0506', 9, 9, 'Cat''s Meow, The');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('65084-267', 'Lid Tray - 16in Dome', 10, '58411-142', 10, 10, 'Smiley''s People');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('60429-201', 'Barramundi', 11, '49999-455', 11, 11, 'Fast and the Furious: Tokyo Drift, The (Fast and the Furious 3, The)');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('53462-502', 'Tomatoes - Cherry, Yellow', 12, '67296-0537', 12, 12, 'Plutonium Circus');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('42254-087', 'Lentils - Green Le Puy', 13, '44119-005', 13, 13, 'Raising Helen');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('52959-298', 'Flour - Chickpea', 14, '0268-0645', 14, 14, 'Brother''s Keeper');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('55289-520', 'Pepper - Chilli Seeds Mild', 15, '55154-5370', 15, 15, 'Breaking the Rules');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('59262-240', 'Juice - Apple, 1.36l', 16, '52125-747', 16, 16, 'Hey, Happy!');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('64117-181', 'Oyster - In Shell', 17, '0093-5771', 17, 17, 'Going to Kansas City');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('0378-5613', 'Pepper - Cubanelle', 18, '11673-243', 18, 18, 'The Hornet''s Nest');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('43742-0021', 'Tray - 12in Rnd Blk', 19, '68084-044', 19, 19, 'Jules and Jim (Jules et Jim)');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('0409-7120', 'Brandy - Orange, Mc Guiness', 20, '43419-012', 20, 20, 'Josephine');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('0615-0332', 'Sole - Dover, Whole, Fresh', 21, '59427-728', 21, 21, 'Fantomas Unleashed');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('62011-0094', 'Rosemary - Dry', 22, '48878-3316', 22, 22, 'Han Gong-ju');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('42507-215', 'Artichokes - Jerusalem', 23, '37808-265', 23, 23, 'Dirty Movie');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('0037-0245', 'Chicken - Leg / Back Attach', 24, '67777-130', 24, 24, 'Bill Bailey: Tinselworm');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('63736-920', 'Beer - True North Strong Ale', 25, '0185-0174', 25, 25, 'Deliverance Creek');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('68788-0149', 'Evaporated Milk - Skim', 26, '66336-915', 26, 26, 'Ivan''s Childhood (a.k.a. My Name is Ivan) (Ivanovo detstvo)');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('60781-1001', 'Grapes - Green', 27, '15749-801', 27, 27, 'Mascara');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('52389-153', 'Ginger - Crystalized', 28, '50730-1020', 28, 28, 'Saturday the 14th');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('76439-125', 'Wine - Chateau Timberlay', 29, '53077-6001', 29, 29, 'Contractor, The');
insert into Products (UPC, name, Brand_id, Postal_code, size, weight, type) values ('43857-0136', 'Chips Potato Swt Chilli Sour', 30, '24236-123', 30, 30, 'Any Day Now');

insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (1, 'Sunbrook', 'Buzen', 'Viana do Castelo', 'Non-binary', 'Japan');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (2, 'Kedzie', 'Nikki', 'Viana do Castelo', 'Male', 'Benin');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (3, 'Brickson Park', 'Moche', 'Viana do Castelo', 'Male', 'Peru');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (4, 'Derek', 'Libuganon', 'Viana do Castelo', 'Polygender', 'Philippines');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (5, 'Spaight', 'Tampakan', 'Viana do Castelo', 'Genderqueer', 'Philippines');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (6, 'Jenifer', 'Sumberarumkrajan', 'Viana do Castelo', 'Agender', 'Indonesia');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (7, 'Burrows', 'Huangbizhuang', 'Viana do Castelo', 'Polygender', 'China');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (8, 'Knutson', 'Prelog', 'Viana do Castelo', 'Genderfluid', 'Croatia');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (9, 'Lerdahl', 'Upi', 'Viana do Castelo', 'Male', 'Philippines');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (10, 'Hintze', 'Calibungan', 'Viana do Castelo', 'Agender', 'Philippines');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (11, 'Northport', 'Yangxi', 'Viana do Castelo', 'Genderfluid', 'China');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (12, 'Mallard', 'Krutinka', 'Viana do Castelo', 'Female', 'Russia');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (13, 'Hoard', 'Fantino', 'Viana do Castelo', 'Genderqueer', 'Dominican Republic');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (14, 'Carberry', 'Dobdoban', 'Viana do Castelo', 'Agender', 'Philippines');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (15, 'Butternut', 'Denver', 'Colorado', 'Genderqueer', 'United States');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (16, 'Cordelia', 'Māmūnīyeh', 'Viana do Castelo', 'Genderqueer', 'Iran');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (17, 'Tennessee', 'Gulong', 'Viana do Castelo', 'Agender', 'China');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (18, 'Golf', 'Odintsovo', 'Viana do Castelo', 'Male', 'Russia');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (19, 'Quincy', 'Zapala', 'Viana do Castelo', 'Male', 'Argentina');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (20, 'Rockefeller', 'Eiriz', 'Porto', 'Non-binary', 'Portugal');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (21, 'Golf', 'Jasionów', 'Viana do Castelo', 'Genderqueer', 'Poland');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (22, 'Merrick', 'Shinjō', 'Viana do Castelo', 'Polygender', 'Japan');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (23, 'Packers', 'Beringinjaya', 'Viana do Castelo', 'Male', 'Indonesia');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (24, 'Mandrake', 'Moshiyi', 'Viana do Castelo', 'Male', 'China');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (25, 'Redwing', 'Żernica', 'Viana do Castelo', 'Genderfluid', 'Poland');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (26, '2nd', 'Kibingo', 'Viana do Castelo', 'Genderfluid', 'Uganda');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (27, 'Novick', 'Viana do Castelo', 'Viana do Castelo', 'Male', 'Portugal');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (28, 'Prairie Rose', 'Kecskemét', 'Bács-Kiskun', 'Male', 'Hungary');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (29, 'Commercial', 'Tournai', 'Wallonie', 'Genderfluid', 'Belgium');
insert into Store_address (Saddress_id, Street, City, State, Postal_code, Country) values (30, 'Burning Wood', 'Varberg', 'Halland', 'Male', 'Sweden');


insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (1, '18vjZQcR9ShpNKuoZY2TCjfNBe71uw3GxZ', '060487881864247092', 1);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (2, '1LXcpduR1psmJu2JNU17VVkRWCFZNhFzsx', '3558869875101543', 2);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (3, '19DnZGjCU61pz547eQ5Ham14d5pTE9pPqQ', '3572539924489734', 3);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (4, '1Fjh2w7DSQNmvBniqcA5rhFc2gdFL2UDYt', '3551294490488265', 4);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (5, '14uz4uwhx7jZp48XoREqMSa5pHY5igYQ8e', '3587017566906649', 5);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (6, '1PdMNtLvcdqn2a41a2Zrk7aTe6kbw22SSZ', '3580999353318731', 6);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (7, '15vj3FhxesV9MfcUy8fFEjnMVv3ybyDkwE', '4017957999474178', 7);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (8, '1899FEqe6T2gkQigGeQMQwWQhcYVh5c3aJ', '3544492172073732', 8);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (9, '13eK1ViCdXZcffxGaMYdCDFEEXZ48kHnJC', '30501000892001', 9);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (10, '1LqmFhNbdgQdt6nUYirJKHK8wvXwW6BgfX', '5602228333289633', 10);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (11, '1L7wnhumbQVzvDLCjhTcCircfjdf6Bjus1', '3582406550887185', 11);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (12, '1QCfY7S4NKL1tN6C8qavnCvSURwRT1sk9z', '36924843249649', 12);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (13, '18E8MFonGoofoGV2CoYGK9SrTiRr1D7DoY', '3570948609804954', 13);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (14, '1F6aAU9gNZ4LQwoSBbCCBkzRas69rthy7m', '3581308175885720', 14);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (15, '1AAJEPwPwMQ6WW65ZgsGwq6MTkV9EPdY9x', '5602249003673815', 15);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (16, '19CNQsA2hGmqz5muSXA51iRTnDALNpSaHE', '3575434473427466', 16);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (17, '17NcNQ7P4gRDoopzKN2yTXVGJ5gHNNxQWy', '6762249484269781973', 17);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (18, '1EK4rNiCB8GujmaCNXgipBiHq5xwC44smV', '3540641414263006', 18);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (19, '13Vyruo77U4G51scrjRqGwV4KUfmpbfBzG', '6389037420366825', 19);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (20, '1NfN1ZXjcXZRfe3jnYkXaJfS4ipk6XSWPd', '3539786080112699', 20);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (21, '12MdaHyPMm5GN98o9YthnDSFUqvH2NmxaT', '3541850733143166', 21);
insert into Online_shopping (Online_store_id, Web_address, card_info, Customer_id) values (22, '1ejVKZdZr8LCnfGgbf2N7By26n4CnTXqK', '3585821680536857', 22);


insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (1, 'Alin', '43857-0136', 2300, 231444, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (2, 'Malin', '43857-0136', 1000, 626662, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (3, 'Sadfvsn', '43857-0136', 2300, 6265565, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (4, 'SalssfbSffbin', '43857-0136', 2300, 132426, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (5, 'sfbsbSalin', '43857-0136', 2300, 85798, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (6, 'Sabsfblin', '43857-0136', 2300, 786800, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (7, 'Sasbblin', '43857-0136', 2300, 9876, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (8, 'Sukyalin', '43857-0136', 2300, 36798, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (9, 'yifSalin', '43857-0136', 2300, 575797, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (10, 'yfgSathlin', '43857-0136', 2300, 56468, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (11, 'Saliktyjn', '43857-0136', 2300, 2112, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (12, 'tthrySalin', '43857-0136', 2300, 453424, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (13, 'Satylin', '43857-0136', 2300, 11111, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (14, 'Srhjsalin', '43857-0136', 2300, 223123, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (15, 'qwaSalin', '43857-0136', 2300, 21231, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (16, 'arSaalin', '43857-0136', 2300, 364758, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (17, 'hhSalin', '43857-0136', 2300, 34263, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (18, 'Shsralin', '43857-0136', 2300, 123144, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (19, 'Saalin', '43857-0136', 2300, 463452, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (20, 'Sahalin', '43857-0136', 2300, 24555, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (21, 'jehdsg', '43857-0136', 2300, 8563563, '09:00 - 22:00', 1);
insert into Store(Store_id, name, UPC, price, Number_of_sales, working_time, Saddress_id) values (22, 'Salishsrn', '43857-0136', 2300, 4635452, '09:00 - 22:00', 1);


insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (1, 1, 1, '0409-7120', '4/1/2021', 1, 96, true, '058 Oxford Terrace');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (2, 2, 2, '0409-7120', '4/16/2021', 2, 48, true, '195 Messerschmidt Point');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (3, 3, 3, '0409-7120', '1/22/2021', 3, 44, true, '3 Fremont Point');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (4, 4, 4, '0409-7120', '6/16/2021', 4, 28, false, '604 Sutteridge Point');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (5, 5, 5, '0409-7120', '1/19/2021', 5, 17, true, '045 Sachtjen Park');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (6, 6, 6, '0409-7120', '12/16/2020', 6, 62, true, '99975 Maple Center');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (7, 7, 7, '0409-7120', '9/14/2021', 7, 67, false, '912 Chive Alley');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (8, 8, 8, '0409-7120', '9/27/2021', 8, 50, false, '69949 Walton Park');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (9, 9, 9, '0409-7120', '4/30/2021', 9, 79, false, '92 Packers Court');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (10, 10, 10, '0409-7120', '10/20/2021', 10, 14, false, '56938 Sachtjen Court');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (11, 11, 11, '0409-7120', '4/1/2021', 11, 8, false, '98 Del Sol Parkway');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (12, 12, 12, '0409-7120', '3/6/2021', 12, 55, true, '92 Manufacturers Road');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (13, 13, 13, '0409-7120', '2/13/2021', 13, 90, false, '64 6th Circle');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (14, 14, 14, '0409-7120', '3/20/2021', 14, 76, true, '30 Golf View Circle');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (15, 15, 15, '0409-7120', '2/26/2021', 15, 2, false, '03700 Clemons Lane');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (16, 16, 16, '0409-7120', '1/3/2021', 16, 6, false, '1988 Ohio Plaza');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (17, 17, 17, '0409-7120', '7/26/2021', 17, 67, true, '84412 Aberg Plaza');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (18, 18, 18, '0409-7120', '2/20/2021', 18, 89, true, '165 Dapin Crossing');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (19, 19, 19, '0409-7120', '1/24/2021', 19, 21, true, '5 Forster Terrace');
insert into orders (Order_id, Customer_id, Store_id, UPC, Date_of_order, amount, price, isPaid, address) values (20, 20, 20, '0409-7120', '8/10/2021', 20, 31, true, '083 Gerald Trail');


insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (1, 'Gracie Gormally', 1, '11/4/2021', '760-661-4562');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (2, 'Bruno Niven', 2, '12/4/2020', '159-210-7685');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (3, 'Wilmer Shackleford', 3, '4/2/2021', '594-765-8258');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (4, 'Barret Mosedale', 4, '6/29/2021', '616-669-7337');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (5, 'Rosemonde Almeida', 5, '6/6/2021', '296-928-6752');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (6, 'Korie Cheale', 6, '11/28/2021', '527-221-1601');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (7, 'Clarabelle Werndly', 7, '12/26/2020', '961-649-8109');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (8, 'Nessi Barkhouse', 8, '1/15/2021', '860-514-3834');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (9, 'Vannie Kummerlowe', 9, '11/15/2021', '135-876-8260');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (10, 'Dniren Ben-Aharon', 10, '11/23/2021', '849-243-9087');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (11, 'Jackie Defau', 11, '5/14/2021', '181-127-8068');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (12, 'Marya Jickells', 12, '6/5/2021', '842-442-1687');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (13, 'Gretta Trays', 13, '4/26/2021', '431-205-6436');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (14, 'Cyril McManamen', 14, '6/20/2021', '782-613-9455');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (15, 'Kristofer Rudloff', 15, '12/23/2020', '928-265-5348');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (16, 'Orelie Kelson', 16, '5/21/2021', '644-899-7032');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (17, 'Thibaud DelaField', 17, '2/4/2021', '647-195-0788');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (18, 'Baily Chaudret', 18, '11/24/2021', '395-999-5197');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (19, 'Rogerio Essam', 19, '12/13/2020', '211-633-8973');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (20, 'Lancelot Skillings', 20, '1/2/2021', '370-469-5115');
insert into Delivery (Delivery_id, name, Order_id, date_of_delivery, phone_number) values (21, 'Ardenia Thirlwell', 21, '12/17/2020', '901-257-0620');

select store.name, products.name from products, Store order by Store.Number_of_sales asc limit 20;
select Store_address.State, products.name from products, Store, Store_address order by Store.Number_of_sales asc limit 20;
select store.name from Store order by Store.Number_of_sales desc limit 5;
