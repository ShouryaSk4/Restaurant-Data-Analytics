
CREATE TABLE `orders` (
    `rowID` int  NOT NULL ,
    `orderid` int  NOT NULL ,
    `created_at` datetime  NOT NULL ,
    `item_id` int  NOT NULL ,
    `quantity` int  NOT NULL ,
    `cust_id` int  NOT NULL ,
    `delhivery` boolean  NOT NULL ,
    `add_id` int  NOT NULL ,
    PRIMARY KEY (
        `rowID`
    )
);

CREATE TABLE `customers` (
    `cust_id` int  NOT NULL ,
    `cust_firstname` varchar(50)  NOT NULL ,
    `cust_lastname` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `cust_id`
    )
);

CREATE TABLE `address` (
    `add_id` int  NOT NULL ,
    `Address1` int  NOT NULL ,
    `Address2` int  NULL ,
    `Address3` int  NULL ,
    PRIMARY KEY (
        `add_id`
    )
);

CREATE TABLE `item` (
    `item_id` int  NOT NULL ,
    `sku` int  NOT NULL ,
    `item_name` varchar(50)  NOT NULL ,
    `item_cat` varchar(50)  NOT NULL ,
    `item_size` varchar(50)  NOT NULL ,
    `item_price` int  NOT NULL ,
    PRIMARY KEY (
        `item_id`
    )
);

CREATE TABLE `reciepie` (
    `row_id` int  NOT NULL ,
    `reciepi_id` int  NOT NULL ,
    `ingred_id` int  NOT NULL ,
    `quantity` int  NOT NULL ,
    PRIMARY KEY (
        `row_id`
    )
);

CREATE TABLE `ingreadiants` (
    `ingred_id` int  NOT NULL ,
    `ingred_name` varchar(50)  NOT NULL ,
    `ingred_weight` int  NOT NULL ,
    `ingred_meas` varchar(50)  NOT NULL ,
    `ingred_price` int  NOT NULL ,
    PRIMARY KEY (
        `ingred_id`
    )
);

CREATE TABLE `inventory` (
    `inv_id` int  NOT NULL ,
    `item_id` int  NOT NULL ,
    `quantity` int  NOT NULL ,
    PRIMARY KEY (
        `inv_id`
    )
);

CREATE TABLE `staff` (
    `staff_id` int  NOT NULL ,
    `first_name` varchar(50)  NOT NULL ,
    `last_name` varchar(50)  NOT NULL ,
    `position` varchar(50)  NOT NULL ,
    `hour_rate` int  NOT NULL ,
    PRIMARY KEY (
        `staff_id`
    )
);

CREATE TABLE `shift` (
    `shift_id` int  NOT NULL ,
    `day_of_the_week` varchar(50)  NOT NULL ,
    `star_time` datetime  NOT NULL ,
    `end_time` datetime  NOT NULL 
);

CREATE TABLE `rota` (
    `row_id` int  NOT NULL ,
    `rota_id` int  NOT NULL ,
    `date` int  NOT NULL ,
    `shift_id` int  NOT NULL ,
    `staff_id` int  NOT NULL ,
    PRIMARY KEY (
        `row_id`
    )
);

ALTER TABLE `customers` ADD CONSTRAINT `fk_customers_cust_id` FOREIGN KEY(`cust_id`)
REFERENCES `orders` (`cust_id`);

ALTER TABLE `address` ADD CONSTRAINT `fk_address_add_id` FOREIGN KEY(`add_id`)
REFERENCES `orders` (`add_id`);

ALTER TABLE `item` ADD CONSTRAINT `fk_item_item_id` FOREIGN KEY(`item_id`)
REFERENCES `orders` (`item_id`);

ALTER TABLE `reciepie` ADD CONSTRAINT `fk_reciepie_reciepi_id` FOREIGN KEY(`reciepi_id`)
REFERENCES `item` (`sku`);

ALTER TABLE `ingreadiants` ADD CONSTRAINT `fk_ingreadiants_ingred_id` FOREIGN KEY(`ingred_id`)
REFERENCES `reciepie` (`ingred_id`);

ALTER TABLE `inventory` ADD CONSTRAINT `fk_inventory_item_id` FOREIGN KEY(`item_id`)
REFERENCES `reciepie` (`ingred_id`);

ALTER TABLE `shift` ADD CONSTRAINT `fk_shift_shift_id` FOREIGN KEY(`shift_id`)
REFERENCES `rota` (`shift_id`);


ALTER TABLE `rota` ADD CONSTRAINT `fk_rota_date` FOREIGN KEY(`date`)
REFERENCES `orders` (`created_at`);

ALTER TABLE `rota` ADD CONSTRAINT `fk_rota_staff_id` FOREIGN KEY(`staff_id`)
REFERENCES `staff` (`staff_id`);


INSERT INTO address (add_id, Address1, Address2, Address3)
VALUES (11
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137, 100, 200, 300),
       (2, 101, 201, 301),
       (3, 102, 202, 302),
       (4, 103, 203, 303),
       (5, 104, 204, 304),
       (6, 105, 205, 305),
       (7, 106, 206, 306),
       (8, 107, 207, 307),
       (9, 108, 208, 308),
       (10, 109, 209, 309),
       (11, 110, 210, 310),
       (12, 111, 211, 311),
       (13, 112, 212, 312),
       (14, 113, 213, 313),
       (15, 114, 214, 314),
       (16, 115, 215, 315),
       (17, 116, 216, 316),
       (18, 117, 217, 317),
       (19, 118, 218, 318),
       (20, 119, 219, 319);


INSERT INTO address (add_id, Address1, Address2, Address3)
VALUES
(101, 1234, 5678, 91011),
(102, 9876, 5432, 10110),
(103, 1111, 2222, 3333),
(104, 4444, 5555, 6666),
(105, 7777, 8888, 9999),
(106, 111, 222, 333),
(107, 444, 555, 666),
(108, 777, 888, 999),
(109, 123, 456, 789),
(110, 1111, 2222, 3333),
(111, 4444, 5555, 6666),
(112, 7777, 8888, 9999),
(113, 111, 222, 333),
(114, 444, 555, 666),
(115, 777, 888, 999),
(116, 123, 456, 789),
(118, 1111, 2222, 3333),
(119, 4444, 5555, 6666),
(120, 7777, 8888, 9999),
(121, 111, 222, 333);

INSERT INTO customers (cust_id, cust_firstname, cust_lastname)
VALUES
(1, 'John', 'Doe'),
(10002, 'Jane', 'Smith'),
(10003, 'Mike', 'Johnson'),
(10004, 'Sarah', 'Williams'),
(10005, 'David', 'Brown'),
(10006, 'Emily', 'Jones'),
(10007, 'Robert', 'Davis'),
(10008, 'Linda', 'Miller'),
(10009, 'Paul', 'Wilson'),
(10010, 'Karen', 'Moore'),
(10011, 'Tom', 'Jackson'),
(10012, 'Mary', 'Lee'),
(10013, 'Richard', 'Taylor'),
(10014, 'Susan', 'Anderson'),
(10015, 'Chris', 'Thomas'),
(10016, 'Jenny', 'Scott'),
(10017, 'Peter', 'Clark'),
(10019, 'Cathy', 'Green'),
(10020, 'Mark', 'Hall'),
(10021, 'Lisa', 'Baker'),
(10022, 'Andrew', 'Johnson'),
(10023, 'Rebecca', 'Allen'),
(10024, 'Jacob', 'Young'),
(10025, 'Christine', 'Hill'),
(10026, 'Tyler', 'Wright'),
(10027, 'Tara', 'Garcia'),
(10028, 'Derek', 'Mitchell'),
(10029, 'Jennifer', 'King'),
(10030, 'Nathan', 'Turner'),
(10031, 'Samantha', 'Phillips'),
(10032, 'Timothy', 'Campbell'),
(10033, 'Lauren', 'Parker'),
(10034, 'Megan', 'Evans'),
(10035, 'Daniel', 'Collins'),
(10036, 'Hannah', 'Stewart'),
(10037, 'Nicholas', 'Sanchez'),
(10038, 'Alyssa', 'Morris');

INSERT INTO ingreadiants (ingred_id, ingred_name, ingred_weight, ingred_meas, ingred_price)
VALUES
(1, 'Salt', 500, 'grams', 20),
(2, 'Pepper', 200, 'grams', 30),
(3, 'Garlic Powder', 100, 'grams', 25),
(4, 'Onion Powder', 100, 'grams', 25),
(5, 'Paprika', 50, 'grams', 15),
(6, 'Cumin', 50, 'grams', 15),
(7, 'Chili Powder', 25, 'grams', 10),
(8, 'Oregano', 25, 'grams', 10),
(9, 'Basil', 25, 'grams', 10),
(10, 'Thyme', 25, 'grams', 10),
(11, 'Rosemary', 25, 'grams', 10),
(12, 'Bay Leaves', 10, 'pieces', 5),
(13, 'Parsley', 50, 'grams', 15),
(14, 'Cilantro', 50, 'grams', 15),
(15, 'Lemon Juice', 250, 'milliliters', 40),
(16, 'Lime Juice', 250, 'milliliters', 40),
(17, 'White Wine Vinegar', 500, 'milliliters', 50),
(18, 'Apple Cider Vinegar', 500, 'milliliters', 50),
(19, 'Soy Sauce', 250, 'milliliters', 30),
(20, 'Fish Sauce', 250, 'milliliters', 30);

INSERT INTO reciepie(row_id, reciepi_id, ingred_id, quantity)
VALUES
(1, 1001, 1, 2),
(2, 1001, 2, 1),
(3, 1001, 3, 1),
(4, 1001, 4, 1),
(5, 1001, 5, 1),
(6, 1002, 6, 2),
(7, 1002, 7, 1),
(8, 1002, 8, 1),
(9, 1002, 9, 1),
(10, 1002, 10, 1),
(11, 1003, 11, 2),
(12, 1003, 12, 1),
(13, 1003, 13, 1),
(14, 1003, 14, 1),
(15, 1003, 15, 1),
(16, 1004, 16, 2),
(17, 1004, 17, 1),
(18, 1004, 18, 1),
(19, 1004, 19, 1),
(20, 1004, 20, 1);


INSERT INTO item (item_id, sku, item_name, item_cat, item_size, item_price) VALUES
(1, 1001, 'Margherita', 'Pizza', 'Medium', 10),
(102, 1002, 'Pepperoni', 'Pizza', 'Large', 15),
(103, 1003, 'Vegetarian', 'Pizza', 'Small', 8),
(104, 1004, 'Meat Lovers', 'Pizza', 'Medium', 12),
(105, 1005, 'Hawaiian', 'Pizza', 'Large', 18),
(106, 1006, 'Mushroom', 'Pizza', 'Small', 7),
(107, 1007, 'BBQ Chicken', 'Pizza', 'Medium', 13),
(108, 1008, 'Sausage', 'Pizza', 'Large', 16),
(109, 1009, 'Buffalo Chicken', 'Pizza', 'Small', 9),
(110, 1010, 'Supreme', 'Pizza', 'Medium', 14),
(111, 1011, 'Veggie Lovers', 'Pizza', 'Large', 20),
(112, 1012, 'White Pizza', 'Pizza', 'Small', 8),
(113, 1013, 'Spinach & Feta', 'Pizza', 'Medium', 13),
(114, 1014, 'BBQ Pork', 'Pizza', 'Large', 16),
(115, 1015, 'Pesto', 'Pizza', 'Small', 9),
(116, 1016, 'Chicken Alfredo', 'Pizza', 'Medium', 15),
(117, 1017, 'Four Cheese', 'Pizza', 'Large', 19),
(119, 1018, 'Vegan', 'Pizza', 'Small', 10),
(120, 1019, 'Taco', 'Pizza', 'Medium', 14),
(121, 1020, 'Artichoke', 'Pizza', 'Large', 17);


INSERT INTO rota (row_id, rota_id, shift_id, staff_id, date) VALUES
(1, 1, 1, 1, '2023-03-23 00:00:00'),
(2, 1, 2, 2, '2022-01-02 11:00:00'),
(3, 1, 3, 3, '2022-01-03 12:00:00'),
(4, 1, 4, 4, '2022-01-04 13:00:00'),
(5, 1, 5, 5, '2022-01-05 14:00:00'),
(6, 1, 6, 6, '2022-01-06 15:00:00'),
(7, 1, 7, 7, '2022-01-07 16:00:00'),
(8, 1, 8, 8, '2022-01-08 17:00:00'),
(9, 1, 9, 9, '2022-01-09 18:00:00'),
(10, 1, 10, 10, '2022-01-10 19:00:00'),
(11, 1, 11, 11, '2022-01-11 20:00:00'),
(12, 1, 12, 12, '2022-01-12 21:00:00'),
(13, 1, 13, 13, '2022-01-13 22:00:00'),
(14, 1, 14, 14, '2022-01-14 23:00:00'),
(15, 1, 15, 15, '2022-01-15 00:00:00'),
(16, 1, 16, 16, '2022-01-16 01:00:00'),
(17, 1, 17, 17, '2022-01-17 02:00:00'),
(18, 1, 19, 19, '2022-01-19 04:00:00'),
(19, 1, 20, 20, '2022-01-20 05:00:00');

INSERT INTO staff (staff_id, first_name, last_name, position, hour_rate)
VALUES 
  (1, 'John', 'Smith', 'Manager', 50),
  (2, 'Sarah', 'Johnson', 'Assistant Manager', 40),
  (3, 'Michael', 'Davis', 'Head Chef', 45),
  (4, 'Emily', 'Wilson', 'Sous Chef', 35),
  (5, 'David', 'Brown', 'Line Cook', 25),
  (6, 'Jennifer', 'Lee', 'Line Cook', 25),
  (7, 'Steven', 'Miller', 'Dishwasher', 15),
  (8, 'Jessica', 'Garcia', 'Server', 20),
  (9, 'William', 'Taylor', 'Server', 20),
  (10, 'Emma', 'Anderson', 'Bartender', 22),
  (11, 'Daniel', 'Wilson', 'Bartender', 22),
  (12, 'Sophia', 'Clark', 'Host/Hostess', 18),
  (13, 'Oliver', 'Hernandez', 'Busser', 15),
  (14, 'Mia', 'Young', 'Busser', 15),
  (15, 'Ethan', 'Allen', 'Delivery Driver', 17),
  (16, 'Avery', 'Green', 'Delivery Driver', 17),
  (17, 'Lucas', 'Scott', 'Cashier', 18),
  (18, 'Chloe', 'Baker', 'Cashier', 18),
  (19, 'Logan', 'Adams', 'Janitor', 15),
  (20, 'Harper', 'Evans', 'Janitor', 15);
  
  
  -- Query 1
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (1, 1, 100);

-- Query 2
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (2, 102, 50);

-- Query 3
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (3, 103, 75);

-- Query 4
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (4, 104, 60);

-- Query 5
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (5, 105, 90);

-- Query 6
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (6, 106, 70);

-- Query 7
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (7, 107, 80);

-- Query 8
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (8, 108, 40);

-- Query 9
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (9, 109, 55);

-- Query 10
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (10, 110, 65);

-- Query 11
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (11, 111, 85);

-- Query 12
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (12, 112, 95);

-- Query 13
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (13, 113, 120);

-- Query 14
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (14, 114, 80);

-- Query 15
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (15, 115, 100);

-- Query 16
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (16, 116, 50);

-- Query 17
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (17, 117, 70);

-- Query 18
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (18, 119, 90);

-- Query 19
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (19, 120, 55);

-- Query 20
INSERT INTO inventory (inv_id, item_id, quantity) VALUES (20, 121, 45);

