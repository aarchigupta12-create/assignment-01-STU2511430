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
