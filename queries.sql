-- produktet ne baze te cmimit te shitjes
SELECT * FROM shop.product ORDER BY sales_price DESC;

-- Porosite e renditura sipas totalit
SELECT * FROM orders
ORDER BY total DESC;

-- Produktet me me shume shitje ne total
SELECT product_id, sum(qty) FROM order_line
GROUP BY product_id
order by sum(qty) desc;

-- Produktet qe gjenden ne me shume porosi
SELECT product_id,count(*) FROM order_line
GROUP BY product_id
order by count(*) desc;

-- 3 klientet me blerje ne vlere me te madhe
SELECT user_id, round(sum(total), 2) as total
FROM orders
INNER JOIN users ON orders.user_id = users.id
GROUP BY user_id
ORDER BY sum(total) desc
limit 3;

