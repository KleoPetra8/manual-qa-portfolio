# SQL Testing

This section demonstrates basic SQL knowledge used for database validation and QA investigation.

## Skills Demonstrated

- Retrieving data with SELECT
- Filtering records with WHERE
- Using AND and OR conditions
- Comparison operators
- Sorting results with ORDER BY
- Pattern matching with LIKE
- Counting records with COUNT()
- Filtering multiple values with IN
- Checking NULL values
- Joining related tables with JOIN
- Using SQL for bug investigation and data validation

## Example Database

The examples use two related tables:

### users

- id
- name
- email
- city
- age
- phone

### orders

- order_id
- user_id
- product
- total

The relationship between the tables is:

users.id = orders.user_id
