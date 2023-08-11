select AMOUNT as amount, 
"CHECK DATE" AS check_date,
CASE 
  WHEN LENGTH(check_date) = 10 THEN SUBSTRING(check_date, 7, 4)
  WHEN LENGTH(check_date) = 4 THEN check_date
ELSE null
END AS check_year,
cast(strptime (check_year, '%Y') as DATE) as check_year_new, 
"VOUCHER NUMBER" as voucher_number,
 "VENDOR NAME" AS vendor_name, 
"DEPARTMENT NAME" as department_name, 
CASHED AS cashed
from Payments