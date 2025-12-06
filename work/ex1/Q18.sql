SELECT country,count(customer_id)AS customer_count,sum(amount)AS amount FROM (
    SELECT country,customer.customer_id,amount FROM country
        INNER JOIN city ON country.country_id = city.country_id
        INNER JOIN address ON city.city_id = address.city_id
        INNER JOIN customer ON address.address_id = customer.address_id
        INNER JOIN payment ON customer.customer_id = payment.customer_id
        )AS merged
    GROUP BY country
    ORDER BY amount DESC;