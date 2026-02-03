SELECT * FROM store
    INNER JOIN address ON store.address_id = address.address_id;