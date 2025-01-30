The SQL query uses a function in the WHERE clause that is not deterministic.  This can lead to unpredictable results, especially when the query is optimized by the database system.

```sql
SELECT * FROM employees WHERE is_active();
```

The `is_active()` function might return different values for the same row on different executions, because it may depend on hidden factors like time or session state.