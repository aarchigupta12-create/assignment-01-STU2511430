## Anomaly Analysis

### Insert Anomaly
Explanation: New entities such as products or sales representatives cannot be added unless an order exists.

Example: If a new product with product_id does not yet have any orders, it cannot be inserted into the table without creating a fake order record.

### Update Anomaly
Explanation: Customer and sales representative details are repeated across multiple rows, leading to inconsistency.

Example:If a customer's email or city changes, it must be updated in multiple rows. If one row is missed, inconsistent data will exist for the same customer_id.

### Delete Anomaly
Explanation: Deleting an order may remove important related data.

Example:If the only order associated with a product_id is deleted, all information about that product (such as product_name and category) is lost.


## Normalization Justification

Keeping all data in a single table may appear simple, but it introduces redundancy and data integrity issues. In the given dataset, customer, product, and sales representative information is repeated across multiple rows. For example, a customer’s email and city appear in every order they place, and a product’s category and price are repeated for each transaction.

This redundancy increases storage requirements and creates update anomalies. For instance, if a customer’s email changes, it must be updated in multiple rows. Missing even one row leads to inconsistent data.

By normalizing the data into separate tables such as Customers, Products, SalesReps, Orders, and OrderDetails, redundancy is minimized. Each entity is stored only once, and relationships are maintained using foreign keys.

Additionally, normalization prevents insert and delete anomalies. New products or customers can be added without requiring an order, and deleting an order does not remove essential product or customer information.

Therefore, normalization improves data consistency, integrity, and scalability, making it a more robust design despite slightly increased complexity.
