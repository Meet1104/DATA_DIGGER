# 🗂️ Data Digger – SQL Relational Database Project

## 📌 Project Description

**Data Digger** is a SQL-based project built to simulate a basic e-commerce system using MySQL. It demonstrates the creation and management of a relational database with four interlinked tables: `Customers`, `Orders`, `Product`, and `OrderDetails`. Through this project, users can practice various SQL operations including **CRUD**, **joins**, **aggregate functions**, and **filtering**.

---

## 🎯 Objectives

- Design a normalized relational schema
- Insert, update, retrieve, and delete data
- Use aggregate functions such as `SUM()`, `AVG()`, `MAX()`, `MIN()`, `COUNT()`
- Filter and sort records based on conditions
- Apply date logic and foreign key relationships

---

## 🧱 Database Schema

### 1️⃣ Customers Table

```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL,
    EMAIL VARCHAR(30) NOT NULL,
    Address VARCHAR(20) NOT NULL
);
```

✅ Sample Data:
- Inserted 5 customers  
- Updated and deleted records  
- Filtered by customer name  

---

### 2️⃣ Orders Table

```sql
CREATE TABLE Orders (
    CustomerID INT NOT NULL,
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    OrderDate INT NOT NULL,
    TotalAmount INT NOT NULL
);
```

✅ Sample Data:
- Inserted 5 orders  
- Retrieved orders by `CustomerID`  
- Performed updates and deletions  
- Used `MAX()`, `MIN()`, `AVG()` for amount analysis  
- Retrieved orders placed after a specific day  

> ⚠️ **Note**: `OrderDate` is currently an `INT`. It's recommended to use `DATE` type for actual date handling.

---

### 3️⃣ Product Table

```sql
CREATE TABLE Product(
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(20) NOT NULL,
    Price INT NOT NULL,
    Stock INT NOT NULL
);
```

✅ Sample Data:
- Inserted 5 products  
- Sorted by price  
- Updated price and deleted out-of-stock items  
- Retrieved products between price range  
- Used `MAX()` and `MIN()` to find extremes

> ❌ You had a typo in one query: `SELECT * FROM Products ORDER BY Price DESC;` should be `SELECT * FROM Product ORDER BY Price DESC;`

---

### 4️⃣ OrderDetails Table

```sql
CREATE TABLE OrderDetails(
    ORDERDETAILID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    Subtotal INT NOT NULL
);
```

✅ Sample Data:
- Inserted 5 order detail records  
- Calculated `SUM(SubTotal)` for revenue  
- Retrieved top 3 ordered products  
- Counted orders per product using `COUNT()`  

---

## 📂 Files Included

```
data-digger-sql/
├── customers.sql
├── orders.sql
├── products.sql
├── orderdetails.sql
├── README.md
```

---

## 🧠 SQL Features Used

- `CREATE TABLE`, `INSERT`, `UPDATE`, `DELETE`
- `SELECT` with `WHERE`, `ORDER BY`, `BETWEEN`
- Aggregate functions: `SUM()`, `MAX()`, `MIN()`, `AVG()`, `COUNT()`
- `GROUP BY`, `LIMIT`

---

## 🚀 How to Run

1. Open MySQL CLI or MySQL Workbench.
2. Run the scripts in this order:
   - `customers.sql`
   - `orders.sql`
   - `products.sql`
   - `orderdetails.sql`
3. Run the `SELECT`, `UPDATE`, and `DELETE` queries for analysis.

---

## 🔍 Sample Query Output Highlights

- Total revenue from orders: `SUM(SubTotal)`
- Orders by customer Alice
- Most ordered products
- Highest and lowest priced product

---

## ⚠️ Known Issues / Suggestions

- `OrderDate` should be changed from `INT` to `DATE` for better date-based queries.
- Table name `Product` is correct, not `Products`.

---

## 👨‍💻 Author

**Meet Golakiya**  
📧 meetgolakiya1494@gmail.com  
📍 Surat, India

---

## 🏁 Final Notes

> ✔️ Project completed with all SQL operations  
> ✔️ All instructions from project brief followed  
> ✔️ Original code, no plagiarism  
> ✔️ Ready for GitHub upload and submission

---

🎉 **Bring on your coding attitude!**
