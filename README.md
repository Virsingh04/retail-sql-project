# Retail Sales SQL Project

A relational database project simulating a small retail business (customers, products, orders, and order items), built to practice real-world SQL analysis: filtering, joins, aggregation, and trend analysis.

## Problem / Questions This Answers

- Which orders are completed, cancelled, or refunded?
- How many orders has each customer placed?
- Which products generate the most revenue?
- Which customers are the most valuable?
- How does revenue trend over time?

## Tools Used

- MySQL
- DBeaver

## Schema

Four tables, connected with foreign keys:

- **customers** (customer_id, name, email)
- **products** (product_id, product_name, price)
- **orders** (order_id, customer_id → customers, order_date, status)
- **order_items** (order_item_id, order_id → orders, product_id → products, quantity, unit_price)

`unit_price` is stored on `order_items` (not just pulled from `products`) so that revenue calculations reflect the price actually charged at the time of purchase, even if a product's price changes later.

## Example Queries & Results

**Top 5 products by revenue:**

| Product | Revenue |
|---|---|
| Bluetooth Headphones | $136.50 |
| Mechanical Keyboard | $130.00 |
| Webcam HD | $69.98 |
| Wireless Mouse | $63.96 |
| Laptop Stand | $59.98 |

**Top customers by revenue:**

| Customer | Total Spent |
|---|---|
| Ayesha Khan | $206.96 |
| John Smith | $145.96 |
| Fatima Ali | $103.23 |

**Monthly revenue trend:**

| Month | Revenue |
|---|---|
| 2026-08 | $626.58 |

## Files

- `schema.sql` — table definitions
- `sample_data.sql` — sample records
- `queries.sql` — all analysis queries

## What I Learned

- Designing a normalized schema with proper primary/foreign keys
- The GROUP BY rule: non-aggregated SELECT columns must match the GROUP BY column
- Chaining multiple JOINs to pull data spread across related tables
- Calculating aggregates (SUM, COUNT) combined with ORDER BY / LIMIT for "top N" business questions
- Using DATE_FORMAT to group time-series data by month

## Next Steps

- Extend this project with a Power BI dashboard built on top of this data
