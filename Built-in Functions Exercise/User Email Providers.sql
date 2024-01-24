SELECT user_name,substring(email, locate('@',email) +1) AS email_provider FROM users
ORDER BY email_provider,user_name;