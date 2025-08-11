# 🏥 Hospital Management – Task 5 (SQL Joins)

## Overview
This task demonstrates different types of SQL JOINs using the hospital database schema from Task 1.
The goal is to retrieve combined data from multiple related tables.
---

## JOIN Types Covered
1. **INNER JOIN** – Returns only rows with matching values in both tables.
2. **LEFT JOIN** – Returns all rows from the left table and matched rows from the right table.
3. **RIGHT JOIN** – Returns all rows from the right table and matched rows from the left table.
4. **FULL OUTER JOIN** – Returns all rows when there is a match in either table (MySQL uses `LEFT JOIN` + `UNION` + `RIGHT JOIN` to achieve this).
5. **CROSS JOIN** – Returns all possible combinations of rows from both tables (Cartesian product).
6. **SELF JOIN** – Joins a table to itself.
---

## How to Run
1. Ensure your hospital schema from Task 1 is available.
2. Open MySQL Workbench or DB Fiddle.
3. Copy and execute the queries in `task5.sql`.
---

## Files
- `Hospital_task_5.sql` – Contains the JOIN queries for Task 5.
- `README.md` – This explanation file for Task 5.
---

## Key Concepts
- **INNER JOIN** → Use when you only want matching records.
- **LEFT JOIN** → Keep all rows from the first table, even if there’s no match.
- **RIGHT JOIN** → Keep all rows from the second table, even if there’s no match.
- **FULL OUTER JOIN** → Keep all rows from both tables.
- **CROSS JOIN** → Use carefully; produces many rows.
- **SELF JOIN** → Useful for comparing rows within the same table.
---

## Author
- **Name:** Laki Gupta
- **GitHub:** https://github.com/LAKI-GUPTA-888
