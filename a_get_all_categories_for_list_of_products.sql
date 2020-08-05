SELECT DISTINCT (c.title) FROM categories c 
JOIN cat_tree ct ON (c.id = ct.parent_id) 
WHERE ct.child_id = ( 
	SELECT ct1.child_id FROM cat_tree ct1 
	WHERE ct1.id = ( 
		SELECT cp.cat_id FROM cat_product cp 
		WHERE cp.prod_id = ( 
			SELECT p.id FROM products p 
			WHERE p.title LIKE 'Стиральная машина узкая SAMSUNG' 
			) 
		) 
	) OR ct.child_id = ( 
	SELECT ct1.child_id FROM cat_tree ct1 
	WHERE ct1.id = ( 
		SELECT cp.cat_id FROM cat_product cp 
		WHERE cp.prod_id = ( 
			SELECT p.id FROM products p 
			WHERE p.title LIKE 'Холодильник BOSCH KGN36XI35' 
			) 
		) 
	) OR ct.child_id = ( 
	SELECT ct1.child_id FROM cat_tree ct1 
	WHERE ct1.id = ( 
		SELECT cp.cat_id FROM cat_product cp 
		WHERE cp.prod_id = ( 
			SELECT p.id FROM products p 
			WHERE p.title LIKE 'Мобильный телефон Assistant AS-204 Black' 
			) 
		) 
	) ORDER by ct.parent_id ASC