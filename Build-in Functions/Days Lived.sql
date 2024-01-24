SELECT concat_ws(' ',first_name,middle_name,last_name) AS 'Full Name' ,
ABS(TIMESTAMPDIFF(DAY, died,born)) AS 'Days Lived'
FROM authors;
 