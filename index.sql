1.Display all the data of customers:
SELECT * FROM Customer;

2.Display the product_name and category for products which their price is between 5000 and 10000:
SELECT product_name, category FROM Product WHERE Price BETWEEN 5000 AND 10000;

3.Display all the data of products sorted in descending order of price:
SELECT * FROM Product ORDER BY Price DESC;

4.Display the total number of orders, the average amount, the highest total amount, and the lowest total amount:
SELECTCOUNT(*) AS total_orders, AVG(total_amount) AS average_amount, MAX(total_amount) AS highest_total_amount, MIN(total_amount) AS lowest_total_amount FROM Order;

5.For each product_id, display the number of orders:
SELECT Product_id, COUNT(*) AS order_count FROM Order GROUP BY Product_id;

6.Display the customer_id which has more than 2 orders:
SELECT customer_id FROM Order GROUP BY customer_id HAVING COUNT(*) > 2;

7.For each month of the 2020 year, display the number of orders:
SELECTEXTRACT(MONTH FROM orderDate) AS month, COUNT(*) AS order_count FROM OrderWHERE EXTRACT(YEAR FROM orderDate) = 2020GROUP BY EXTRACT(MONTH FROM orderDate);

8.For each order, display the product_name, the customer_name, and the date of the order:
SELECT p.product_name, c.customer_Name, o.orderDate
FROM Order o
JOIN Product p ON o.Product_id = p.Product_id
JOIN Customer c ON o.customer_id = c.customer_id;

9.Display all the orders made three months ago:
SELECT * FROM Order WHERE orderDate >= DATE_SUB(CURRENT_DATE(), INTERVAL 3 MONTH);

10.Display customers (customer_id) who have never ordered a product:
SELECT customer_id FROM Customer WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM Order);





