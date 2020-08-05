SELECT p.* FROM products p 
JOIN cat_product cp ON (p.id = cp.prod_id) 
JOIN cat_tree ct ON (cp.cat_id = ct.child_id) 
WHERE ct.parent_id = ( 
	SELECT cat.id FROM categories cat 
	WHERE cat.title LIKE 'бытовая техника' 
) AND ct.parent_id != ct.child_id