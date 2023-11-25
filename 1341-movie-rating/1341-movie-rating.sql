# Write your MySQL query statement below
SELECT user_name AS results
FROM (
    SELECT u.name AS user_name, COUNT(mr.rating) AS num_ratings
    FROM Users u
    LEFT JOIN MovieRating mr ON u.user_id = mr.user_id
    GROUP BY u.name
    ORDER BY num_ratings DESC, u.name
    LIMIT 1
) AS top_user
UNION ALL
SELECT movie_title AS results
FROM (
    SELECT m.title AS movie_title, AVG(mr.rating) AS avg_rating
    FROM Movies m
    LEFT JOIN MovieRating mr ON m.movie_id = mr.movie_id
    WHERE YEAR(mr.created_at) = 2020 AND MONTH(mr.created_at) = 2
    GROUP BY m.title
    ORDER BY avg_rating DESC, m.title
    LIMIT 1
) AS top_movie;
