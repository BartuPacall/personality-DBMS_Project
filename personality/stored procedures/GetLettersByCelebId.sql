CREATE DEFINER=`root`@`localhost` PROCEDURE `GetLettersByCelebId`(
    IN input_celeb_id INT,
    OUT row_count INT
)
BEGIN
    SELECT 
        letter1, 
        letter2, 
        letter3, 
        letter4, 
        letter5
    FROM letters
    WHERE celeb_id = input_celeb_id;

    SELECT COUNT(*) INTO row_count
    FROM letters
    WHERE celeb_id = input_celeb_id;
END