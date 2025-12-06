SELECT category_name,DATE_PART('day',avg(return_date - rental_date)) AS avg_date FROM (
    SELECT category.name AS category_name,category.category_id,rental_id,rental_date,return_date FROM rental
        INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
        INNER JOIN film_category ON inventory.film_id = film_category.film_id
        INNER JOIN category ON film_category.category_id = category.category_id
        )AS merged
    GROUP BY category_name
    ORDER BY avg_date DESC;