To fix this, either make the function deterministic or move the function's logic into the SELECT statement or a subquery.

```sql
-- Option 1: Make is_active() deterministic (if possible)
-- ... modify the is_active() function to be truly deterministic ...

-- Option 2: Move the logic to the SELECT statement
SELECT *, is_active() AS is_employee_active FROM employees WHERE is_employee_active = TRUE;

-- Option 3: Use a subquery
SELECT * FROM employees WHERE employee_id IN (SELECT employee_id FROM employee_status WHERE is_active = TRUE);
```
Choosing the best approach depends on the function's design, the database system, and the desired performance characteristics.