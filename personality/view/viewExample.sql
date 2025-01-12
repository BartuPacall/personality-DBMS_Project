CREATE VIEW CelebPersonalityView AS
SELECT c.name AS CelebName, l.four_letter AS PersonalityType
FROM celebs c
JOIN letter l ON c.id = l.celebs_id;

SELECT * FROM CelebPersonalityView;
