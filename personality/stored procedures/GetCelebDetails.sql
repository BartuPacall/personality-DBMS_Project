CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCelebDetailsById`(IN c_id INT)
BEGIN
	SELECT c.id AS celeb_id, c.name AS celeb_name, cs.category AS category_name, sc.subcategory AS subcategory_name
	FROM celeb c
	JOIN category cs ON c.cat_id = cs.category_id
	JOIN sub_category sc ON c.sub_cat_id = sc.sub_cat_id
	WHERE c.id = c_id;
END