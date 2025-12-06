SELECT * FROM (SELECT city,address_id FROM city
    LEFT OUTER JOIN address ON city.city_id = address.city_id
    ORDER BY address_id ASC)AS merged
    WHERE address_id IS NULL;
