SELECT p.title FROM products p 
JOIN cat_product cp ON (p.id = cp.prod_id)
WHERE cp.cat_id = (
    SELECT MAX(cat.id) FROM categories cat 
    JOIN cat_tree ct ON (cat.id = ct.child_id)
    WHERE ct.parent_id = (
        SELECT cat1.id FROM categories cat1
        WHERE cat1.title LIKE 'бытовая техника'
        )
    )