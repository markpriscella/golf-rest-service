#Creates the user 'golfPriscella' with password 'golfPriscella'
CREATE USER 'golfPriscella'@'localhost' IDENTIFIED BY 'golfPriscella';

GRANT ALL PRIVILEGES ON *.* TO 'golfPriscella'@'localhost';

ALTER USER 'golfPriscella'@'localhost' IDENTIFIED WITH mysql_native_password BY 'golfPriscella';