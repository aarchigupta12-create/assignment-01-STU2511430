## Storage Systems

The system uses multiple storage solutions tailored to different use cases. A relational database (MySQL) is used for patient records and transactional data because it ensures strong consistency and supports ACID properties, which are critical for healthcare applications. A data warehouse is used for analytical reporting, such as monthly hospital reports on bed occupancy and department-wise costs. This enables efficient aggregation and business intelligence queries.

A data lake is used to store raw and unstructured data, such as doctor notes, logs, and medical images. This allows flexible storage of large volumes of diverse data formats. Additionally, a vector database is used to support semantic search for doctor queries. Patient records and notes are converted into embeddings, allowing doctors to query patient history in natural language and retrieve contextually relevant information.

For real-time ICU vitals, a streaming pipeline is used to ingest and store time-series data efficiently, enabling real-time monitoring and alerts.

---

## OLTP vs OLAP Boundary

The OLTP system consists of the relational database that handles real-time patient transactions, such as admissions, updates to medical records, and billing. This system prioritizes consistency, low latency, and transactional integrity.

The OLAP system begins at the data warehouse, where data from the OLTP system and other sources is periodically loaded and transformed. The data warehouse is optimized for analytical queries, reporting, and trend analysis, such as monthly performance metrics and cost analysis.

Thus, the boundary lies between the operational database (MySQL) and the analytical data warehouse. Data flows from OLTP to OLAP through ETL pipelines, ensuring that reporting does not impact transactional performance.

---

## Trade-offs

One significant trade-off in this architecture is increased system complexity due to the use of multiple storage systems. Managing a relational database, data warehouse, data lake, and vector database requires more infrastructure, integration, and maintenance effort.

To mitigate this, the system can use a unified data platform or cloud-based services that integrate these components seamlessly. Additionally, clear data pipelines and governance policies can ensure consistency and reduce operational overhead.

Another trade-off is data latency between OLTP and OLAP systems, as analytical data is not always real-time. This can be mitigated by implementing near real-time data pipelines using streaming technologies where necessary.

Overall, while the architecture introduces complexity, it provides flexibility, scalability, and performance needed for advanced healthcare analytics and AI capabilities.
