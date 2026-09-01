-- Finds the Most recent Customers in case of duplicated customers.
SELECT
cst_id,
cst_key,
TRIM(cst_firstname) as cst_firstname,
TRIM(cst_lastname) as cst_lastname,
CASE
	WHEN cst_marital_status = 'M' THEN 'Married'
	WHEN cst_marital_status = 'S' THEN 'Single'
	ELSE 'Unknown'
END AS cst_marital_status, -- Normalize marital_status values to readable format.
CASE 
	WHEN cst_gndr = 'M' THEN 'Male'
	WHEN cst_gndr = 'F' THEN 'Female'
	ELSE 'Unknown'
END AS cst_gndr, -- Normalize cst_gndr values to readable format.
cst_create_date
FROM (
	SELECT 
		*,
		ROW_NUMBER() OVER(PARTITION BY cst_id ORDER BY cst_create_date DESC) as flag_last
	FROM bronze.crm_cust_info
	WHERE cst_id IS NOT NULL
) as t
WHERE flag_last = 1; -- Select the most recent record per customer