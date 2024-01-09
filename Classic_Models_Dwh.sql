create DATABASE classicmodels_dwh;
USE classicmodels_dwh;

DROP TABLE IF EXISTS `dim_employee`;
CREATE TABLE `dim_employee` (
	 `sk`                 INT NOT NULL AUTO_INCREMENT
	,`employee_number`    INT
	,`employee_name`      VARCHAR(100)
	,`extension`          VARCHAR(10)
	,`email`              VARCHAR(100)
	,`job_title`          VARCHAR(50)
	,`office_code`        VARCHAR(10)
	,`office_address`     VARCHAR(100)
	,`office_city`        VARCHAR(50)
	,`office_country`     VARCHAR(50)
	,`office_postal_code` VARCHAR(15)
	,`office_territory`   VARCHAR(10)
	,`last_update`        DATETIME
	,PRIMARY KEY (`sk`)
	,KEY `employee_number_key` (`employee_number`)
	,KEY `employee_name_key` (`employee_name`)
	,KEY `office_city_key` (`office_city`)
	,KEY `office_country_key` (`office_country`)
);

DROP TABLE IF EXISTS `dim_customer`;
CREATE TABLE `dim_customer` (
	 `sk`                        INT NOT NULL AUTO_INCREMENT
	,`customer_number`           INT
	,`customer_name`             VARCHAR(50)
	,`address`                   VARCHAR(100)
	,`phone`                     VARCHAR(50)
	,`city`                      VARCHAR(50)
	,`state`                     VARCHAR(50)
	,`postal_code`               VARCHAR(15)
	,`country`                   VARCHAR(50)
	,`sales_rep_employee_number` INT
	,`sales_rep_employee_name`   VARCHAR(50)
	,`credit_limit`              DOUBLE
	,`last_update`               DATETIME
	,PRIMARY KEY (`sk`)
	,KEY `customer_number_key` (`customer_number`)
	,KEY `sales_rep_employee_name_key` (`sales_rep_employee_name`)
	,KEY `city_key` (`city`)
	,KEY `country_key` (`country`)
);

DROP TABLE IF EXISTS `dim_date`;
CREATE TABLE `dim_date` (
	 `sk`                INT NOT NULL AUTO_INCREMENT
	,`date`              DATE
	,`year`              INT
	,`quarter`           CHAR(2)
	,`month`             INT
	,`month_name`        VARCHAR(50)
	,`day`               INT
	,PRIMARY KEY (`sk`)
	,KEY `year_key` (`year`)
	,KEY `quarter_key` (`quarter`)
	,KEY `month_key` (`month`)
	,KEY `month_name_key` (`month_name`)
);

DROP TABLE IF EXISTS `dim_product`;
CREATE TABLE `dim_product` (
	 `sk`                INT NOT NULL AUTO_INCREMENT
	,`product_code`      VARCHAR(15)
	,`product_name`      VARCHAR(70)
	,`product_vendor`    VARCHAR(50)
	,`product_line`      VARCHAR(50)
	,`last_update`       DATETIME
	,PRIMARY KEY (sk)
	,KEY `product_code_key` (`product_code`)
	,KEY `product_name_key` (`product_name`)
	,KEY `product_vendor_key` (`product_vendor`)
	,KEY `product_line_key` (`product_line`)
);

DROP TABLE IF EXISTS `fact_order`;
CREATE TABLE `fact_order` (
	 `id`                 VARCHAR(20)
	,`order_line_number`  INT
	,`order_number`       INT
	,`product_sk`         INT
	,`quantity_ordered`   INT
	,`price_each`         DOUBLE
	,`price_total`        DOUBLE
	,`order_date_sk`      INT
	,`required_date_sk`   INT
	,`shipped_date_sk`    INT
	,`employee_sk`        INT
	,`customer_sk`        INT
	,`last_update`        DATETIME
	,PRIMARY KEY (id)
	,KEY `order_number_key` (`order_number`)
	,KEY `order_date_sk_key` (`order_date_sk`)
	,KEY `required_date_sk_key` (`required_date_sk`)
	,KEY `shipped_date_sk_key` (`shipped_date_sk`)
	,KEY `employee_sk_key` (`employee_sk`)
	,KEY `customer_sk_key` (`customer_sk`)
);
