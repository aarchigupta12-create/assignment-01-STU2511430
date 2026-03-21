## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for searching large legal contracts using natural language queries. Keyword search relies on exact word matches, which can fail when different terminology or phrasing is used. For example, a query like "termination clauses" may not match relevant sections if the document uses alternative wording such as "contract ending conditions."

Vector databases address this limitation by enabling semantic search. Instead of matching exact keywords, text is converted into embeddings that capture meaning and context. This allows the system to retrieve relevant sections even when the wording differs.

In this system, each section of the contract would be converted into embeddings and stored in a vector database. When a lawyer submits a query in plain English, it is also converted into an embedding. The system then retrieves the most semantically similar sections based on cosine similarity.

This approach significantly improves search accuracy and user experience, especially for large and complex documents like legal contracts. Therefore, a vector database plays a critical role in enabling intelligent, context-aware search that goes beyond simple keyword matching.
