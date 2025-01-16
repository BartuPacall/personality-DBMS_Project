CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateCelebName`(
    IN celeb_id INT,
    INOUT newName VARCHAR(255)
)
BEGIN
    UPDATE celeb
    SET name = newName
    WHERE id = celeb_id;

    SELECT name INTO newName
    FROM celeb
    WHERE id = celeb_id;
END