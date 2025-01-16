CREATE DEFINER=`root`@`localhost` PROCEDURE `AddCeleb`(
    IN cel_id INT, 
    IN cel_name VARCHAR(255), 
    IN cel_cat_id INT, 
    IN cel_sub_cat_id INT
)
BEGIN
    INSERT INTO celeb (id, name, cat_id, sub_cat_id) 
    VALUES (cel_id, cel_name, cel_cat_id, cel_sub_cat_id);
END