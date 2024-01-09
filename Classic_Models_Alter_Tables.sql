USE classicmodels1;

ALTER TABLE `customers`
ADD
(
	 `created`  DATETIME
	,`updated` DATETIME
);
ALTER TABLE `employees`
ADD
(
	 `created` DATETIME
	,`updated` DATETIME
);
ALTER TABLE `offices`
ADD
(
	 `created` DATETIME
	,`updated` DATETIME
);
ALTER TABLE `products`
ADD
(
	 `created` DATETIME
	,`updated` DATETIME
);

-- UPDATE TABLES
UPDATE `customers`
SET
`created` = '1970-01-01 00:00:01'
	    ,`updated` = '1970-01-01 00:00:01';
UPDATE `employees`
SET
`created` = '1970-01-01 00:00:01'
	    ,`updated` = '1970-01-01 00:00:01';
UPDATE `offices`
SET
`created` = '1970-01-01 00:00:01'
	    ,`updated` = '1970-01-01 00:00:01';
UPDATE `products`
SET
`created` = '1970-01-01 00:00:01'
	    ,`updated` = '1970-01-01 00:00:01';
