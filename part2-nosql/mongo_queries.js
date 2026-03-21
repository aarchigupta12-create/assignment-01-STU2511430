// OP1: insertMany() — insert all 3 documents from sample_documents.json
db.products.insertMany([
  {
    _id: "E1001",
    name: "Samsung Smart TV 55 inch",
    category: "Electronics",
    price: 45000,
    brand: "Samsung",
    specifications: {
      warranty_years: 2,
      voltage: "220V",
      screen_type: "LED"
    },
    features: ["Smart TV", "4K", "WiFi Enabled"]
  },
  {
    _id: "C2001",
    name: "Men's Denim Jacket",
    category: "Clothing",
    price: 2500,
    brand: "Levis",
    sizes_available: ["S", "M", "L", "XL"],
    material: "Denim",
    attributes: {
      color: "Blue",
      fit: "Regular"
    }
  },
  {
    _id: "G3001",
    name: "Organic Milk 1L",
    category: "Groceries",
    price: 120,
    brand: "Amul",
    expiry_date: new Date("2024-12-20"),
    nutritional_info: {
      calories: 150,
      fat: "8g",
      protein: "6g"
    },
    storage_instructions: "Keep refrigerated"
  }
]);


// OP2: find() — retrieve all Electronics products with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});


// OP3: find() — retrieve all Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});


// OP4: updateOne() — add a "discount_percent" field to a specific product
db.products.updateOne(
  { _id: "E1001" },
  { $set: { discount_percent: 10 } }
);


// OP5: createIndex() — create an index on category field and explain why
db.products.createIndex({ category: 1 });

// Explanation:
// Indexing the category field improves query performance when filtering products by category,
// such as retrieving all Electronics or Groceries. This reduces scan time on large collections.
