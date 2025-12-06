SELECT category_name,count(*)AS rental_count,sum(amount)AS rental_amount FROM (
    SELECT category.name AS category_name,category.category_id,rental.rental_id,payment.amount FROM rental
        INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
        INNER JOIN film_category ON inventory.film_id = film_category.film_id
        INNER JOIN category ON film_category.category_id = category.category_id
        INNER JOIN payment ON rental.rental_id = payment.rental_id
        )AS merged
    GROUP BY category_name
    ORDER BY rental_amount DESC;