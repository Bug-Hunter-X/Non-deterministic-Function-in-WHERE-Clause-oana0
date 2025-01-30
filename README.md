This example demonstrates a common, yet subtle, error in SQL: the use of a non-deterministic function in a WHERE clause. This can lead to unexpected and inconsistent results, especially in optimized database systems.

The `bug.sql` file contains the problematic SQL query, while `bugSolution.sql` provides a corrected version that demonstrates good practices for deterministic function usage.