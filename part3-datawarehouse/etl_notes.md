## ETL Decisions

### Decision 1 — Standardizing Date Formats
Problem:
The raw dataset contained inconsistent date formats such as DD-MM-YYYY and MM/DD/YYYY, making it difficult to aggregate data by time.

Resolution:
All dates were converted into a standardized YYYY-MM-DD format before loading into the dim_date table. This ensured consistency and enabled accurate time-based analysis.

---

### Decision 2 — Handling NULL Values
Problem:
Some records had missing values for fields such as product category or store information, which could lead to incomplete joins and inaccurate reporting.

Resolution:
Missing values were either filled using default placeholders (e.g., "Unknown") or removed if the record was unusable. This ensured data integrity in the warehouse.

---

### Decision 3 — Normalizing Category Casing
Problem:
Product categories appeared in inconsistent formats such as "electronics", "ELECTRONICS", and "Electronics".

Resolution:
All category values were standardized to a consistent format (e.g., "Electronics") before loading into the dim_product table, ensuring accurate grouping and aggregation.
