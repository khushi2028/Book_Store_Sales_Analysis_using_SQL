create database book_store; -- create a database book_store
use book_store; -- use the database book_store

-- importing the csv files into sql
-- retrieve the data of all three tables
select * from books; 
select * from customers;
select * from orderss;

-- creating book_id in books table as primary key
SHOW CREATE TABLE books;
alter table books
modify column book_id int not null;  
alter table books
add primary key (book_id);

-- creating book_id as foreign key which references orders to books
alter table orderss
add constraint fk_orderss_books
foreign key (Book_ID) references books(Book_ID);

-- creating customer_id in customers table as primary key
SHOW CREATE TABLE customers;
alter table customers
modify column customer_id int not null;
alter table customers
add primary key (customer_id);

-- creating customer_id as foreign key which references orders to customers
alter table orderss
add constraint fk_orderss_customers
foreign key (customer_ID) references customers(customer_ID);

-- Retrieve all books in the "Fiction" genre
select * from books
where genre='fiction';

-- Find books published after the year 1950
select * from books 
where published_year>1950;

-- List all customers from the Canada
select * from customers
where country='canada';

-- Show orders placed in November 2023
select * from orderss
where order_date between '2023-11-01' and '2023-11-30';

-- Retrieve the total stock of books available
select sum(stock) as total_stock 
from books;

-- Find the details of the most expensive book
select * from books
order by price desc limit 1;

-- Show all customers who ordered more than 1 quantity of a book
select * from orderss
where quantity>1;

-- Retrieve all orders where the total amount exceeds $20
select * from orderss
where total_amount>20;

-- List all genres available in the Books table
select distinct genre 
from books;

-- Find the book with the lowest stock
select * from books
order by stock
limit 1;

-- Calculate the total revenue generated from all orders
select sum(total_amount) as total_revenue from orderss;

-- Retrieve the total number of books sold for each genre
select b.genre, sum(o.quantity) as total_books_sold
from orderss o
join books b 
on o.book_id = b.book_id
group by b.genre;

-- Find the average price of books in the "Fantasy" genre
select avg(price) as average_price
from books
where genre='fantasy';

-- List customers who have placed at least 2 orders
select o.customer_id, c.name, count(o.order_id) as total_orders_placed
from orderss o
join customers c
on o.customer_id = c.customer_id
group by o.customer_id, c.name
having count(o.order_id)>=2;

-- Find the most frequently ordered book
select o.book_id, b.title, count(o.order_id) as total_orders_placed
from orderss o
join books b
on b.book_id = o.book_id
group by o.book_id, b.title
order by total_orders_placed desc limit 10;

-- Show the top 3 most expensive books of 'Fantasy' Genre
select title, price from books
where genre='fantasy'
order by price desc limit 3;

-- Retrieve the total quantity of books sold by each author
select b.author, sum(o.quantity) as total_quantity_of_books_sold
from orderss o
join books b
on b.book_id = o.order_id
group by b.author;

-- List the cities where customers who spent over $30 are located
select distinct c.city, o.total_amount
from customers c
join orderss o
on o.customer_id = c.customer_id
where o.total_amount>30;

-- Find the customer who spent the most on orders
select o.customer_id, c.name, sum(o.total_amount) as total_money_spent
from orderss o
join customers c 
on c.customer_id = o.customer_id
group by o.customer_id, c.name
order by total_money_spent desc limit 1;

-- Calculate the stock remaining after fulfilling all orders
select b.book_id, b.title, b.stock, coalesce(sum(o.quantity),0) as total_quantity,
b.stock-coalesce(sum(o.quantity),0) as total_quantity_left
from books b
left join orderss o
on b.book_id = o.book_id
group by b.book_id;





