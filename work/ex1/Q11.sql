SELECT * FROM (
        SELECT country_id,count(*) AS country_num FROM city
        GROUP BY country_id
        ORDER BY country_num DESC,country_id ASC
        ) AS counted
    WHERE counted.country_num > 20;