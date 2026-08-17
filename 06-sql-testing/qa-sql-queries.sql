-- =====================================================
-- Manual QA Portfolio - SQL Testing Examples
-- =====================================================
-- Purpose:
-- Example SQL queries used for data validation
-- and QA investigation in an e-commerce application.
-- =====================================================


-- 1. Retrieve all users
SELECT *
FROM users;


-- 2. Retrieve selected user information
SELECT name, email, city
FROM users;


-- 3. Find a specific user by email
-- QA scenario:
-- Verify the database information for a reported account.
SELECT name, email, city
FROM users
WHERE email = 'maria@test.com';


-- 4. Find users from a specific city
SELECT name, email, age
FROM users
WHERE city = 'Sofia';


-- 5. Find users older than 30
SELECT *
FROM users
WHERE age > 30;


-- 6. Use multiple conditions
SELECT name, email
FROM users
WHERE city = 'Pleven'
AND age > 30;


-- 7. Find users from multiple cities
SELECT *
FROM users
WHERE city IN ('Sofia', 'Pleven');


-- 8. Sort users from oldest to youngest
SELECT name, city, age
FROM users
ORDER BY age DESC;


-- 9. Search by email domain
SELECT *
FROM users
WHERE email LIKE '%@test.com';


-- 10. Count users older than 30
SELECT COUNT(*)
FROM users
WHERE age > 30;


-- 11. Find users without a stored phone number
SELECT name, email
FROM users
WHERE phone IS NULL;


-- 12. Retrieve users together with their orders
SELECT users.name,
       users.email,
       orders.order_id,
       orders.product,
       orders.total
FROM users
JOIN orders
ON users.id = orders.user_id;


-- 13. Investigate a specific order
-- QA scenario:
-- Verify the database values when the total displayed
-- in the UI differs from the checkout total.
SELECT users.name,
       users.email,
       orders.product,
       orders.total
FROM users
JOIN orders
ON users.id = orders.user_id
WHERE orders.order_id = 103;


-- 14. Find expensive orders
SELECT users.name,
       orders.product,
       orders.total
FROM users
JOIN orders
ON users.id = orders.user_id
WHERE orders.total >= 100
ORDER BY orders.total DESC;


-- 15. Retrieve all orders belonging to a specific user
-- QA scenario:
-- Investigate incorrect information in a user's Order History.
SELECT users.name,
       users.email,
       orders.order_id,
       orders.product,
       orders.total
FROM users
JOIN orders
ON users.id = orders.user_id
WHERE users.name = 'Petra';
