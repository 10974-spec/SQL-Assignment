
CREATE USER 'emmanuel_admin'@'%' IDENTIFIED BY 'Emmanuel@2025';
GRANT ALL PRIVILEGES ON BookStore.* TO 'emmanuel_admin'@'%';


CREATE USER 'dominik_user'@'%' IDENTIFIED BY 'Dominik@2025';
GRANT SELECT ON BookStore.* TO 'dominik_user'@'%';


CREATE USER 'sylvester_user'@'%' IDENTIFIED BY 'Sylvester@2025';
GRANT SELECT ON BookStore.* TO 'sylvester_user'@'%';


FLUSH PRIVILEGES;
