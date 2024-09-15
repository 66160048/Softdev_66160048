--
-- File generated with SQLiteStudio v3.4.4 on อา. ก.ย. 15 19:12:11 2024
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: category
DROP TABLE IF EXISTS category;

CREATE TABLE category (
    category_id   INTEGER   PRIMARY KEY ASC AUTOINCREMENT,
    category_name TEXT (50) NOT NULL
);

INSERT INTO category (
                         category_id,
                         category_name
                     )
                     VALUES (
                         1,
                         'กาแฟ'
                     );

INSERT INTO category (
                         category_id,
                         category_name
                     )
                     VALUES (
                         2,
                         'ขนม'
                     );


-- Table: product
DROP TABLE IF EXISTS product;

CREATE TABLE product (
    product_id          INTEGER   PRIMARY KEY ASC AUTOINCREMENT,
    product_name        TEXT (50) UNIQUE,
    product_price       REAL      NOT NULL,
    product_size        TEXT (5)  DEFAULT SML
                                  NOT NULL,
    product_sweet_level TEXT (5)  DEFAULT (123) 
                                  NOT NULL,
    product_type        TEXT (5)  NOT NULL
                                  DEFAULT HCF,
    category_id         INTEGER   DEFAULT (1) 
                                  NOT NULL
                                  REFERENCES category (cat_id) ON DELETE RESTRICT
                                                               ON UPDATE RESTRICT
);

INSERT INTO product (
                        product_id,
                        product_name,
                        product_price,
                        product_size,
                        product_sweet_level,
                        product_type,
                        category_id
                    )
                    VALUES (
                        1,
                        'Espresso',
                        30.0,
                        'SML',
                        '0123',
                        'HCF',
                        1
                    );

INSERT INTO product (
                        product_id,
                        product_name,
                        product_price,
                        product_size,
                        product_sweet_level,
                        product_type,
                        category_id
                    )
                    VALUES (
                        2,
                        'Americano',
                        40.0,
                        'SML',
                        '012',
                        'HC',
                        1
                    );

INSERT INTO product (
                        product_id,
                        product_name,
                        product_price,
                        product_size,
                        product_sweet_level,
                        product_type,
                        category_id
                    )
                    VALUES (
                        3,
                        'เค้กชิฟฟ่อนช็อกโกแลต',
                        50.0,
                        '-',
                        '-',
                        '-',
                        2
                    );

INSERT INTO product (
                        product_id,
                        product_name,
                        product_price,
                        product_size,
                        product_sweet_level,
                        product_type,
                        category_id
                    )
                    VALUES (
                        4,
                        'บัตเตอร์เค้ก',
                        60.0,
                        '-',
                        '-',
                        '-',
                        2
                    );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
