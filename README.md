# *Book Store Sales Analysis using MySQL*

This project explores and analyzes a fictional book store's sales data using SQL queries in *MySQL Workbench*. It covers data cleaning, relationship setup, and deep analysis of sales trends, customer behavior, and inventory insights.

---

## *📂 Database Structure*

The project is based on 3 primary tables:

- *books*: Contains information about each book (title, genre, price, stock, published year).
- *customers*: Stores customer details (name, country, customer ID).
- *orderss*: Holds transaction details (book ID, customer ID, quantity, order date, total amount).

---

## *🔧 Database Setup and Relationships*

- Created book_store database and selected it for use.
- Defined *primary keys* for books and customers.
- Created *foreign key relationships* in orderss:
  - book_id → references books(book_id)
  - customer_id → references customers(customer_id)

---

## *📊 Key SQL Analyses Performed*

### *1. Inventory & Product Insights*
- *Books by Genre: Filtered all books in the *Fiction genre.
- *Books Published After 1950*: Tracked modern publication trends.
- *Total Stock Available*: Summed up the stock of all books.
- *Most Expensive Book*: Retrieved the highest-priced title.
- *Lowest Stock Book*: Identified books needing restock.

### *2. Sales & Revenue Insights*
- *Orders in November 2023*: Monthly sales tracking.
- *High-Value Orders*: Fetched all transactions over $20.
- *Total Revenue Generated*: Summed total sales amount.
- *Books Sold by Genre*: Aggregated quantity sold by category.
- *Most Frequently Ordered Book*: Ranked top-selling titles.

### *3. Customer Behavior*
- *Customers from Canada*: Regional segmentation.
- *Repeat Buyers*: Listed customers with 2+ orders.
- *Bulk Buyers*: Highlighted orders with quantity > 1.

### *4. Genre & Pricing Trends*
- *Available Genres*: Listed unique book categories.
- *Avg. Price of Fantasy Books*: Pricing insight by genre.
- *Top 3 Expensive Fantasy Books*: High-end product focus.

---

## *💡 Tools Used*
- *MySQL Workbench* for writing and executing SQL queries
- *CSV data import* for populating tables

---

## *📌 Summary*
This project demonstrates strong SQL skills through database setup, key metric analysis, and storytelling using raw sales data. The insights can help a business drive marketing, inventory planning, and customer strategy.

---
