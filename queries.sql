---Checking if I uploaded the correct table
SELECT * 
FROM we_buy_cars_sales_dataset_modified
LIMIT 100;

---Which brand generates the most revenue?
SELECT Brand, SUM(Selling_Price) AS Revenue
FROM we_buy_cars_sales_dataset_modified
GROUP BY Brand
ORDER BY Revenue DESC;

---Which branch sells the most cars?
SELECT Branch,
       COUNT(Car_ID) AS Cars_Sold
FROM we_buy_cars_sales_dataset_modified
GROUP BY Branch
ORDER BY Cars_Sold DESC;

---Which branch generates the most revenue?
SELECT Branch,
       SUM(Selling_Price) AS Revenue
FROM we_buy_cars_sales_dataset_modified
GROUP BY Branch
ORDER BY Revenue DESC;

---Which cars have the highest profit?
SELECT Brand,
       Model,
       AVG(Selling_Price - Purchase_Price) AS Avg_Profit
FROM we_buy_cars_sales_dataset_modified
GROUP BY Brand, Model
ORDER BY Avg_Profit DESC;

---The average days cars stay in stock.
SELECT AVG(DATEDIFF(Date_Sold, Date_Acquired)) AS Avg_Days_In_Stock
FROM we_buy_cars_sales_dataset_modified;

---Which are the fastest selling cars?
SELECT Brand,
       Model,
       AVG(DATEDIFF(Date_Sold, Date_Acquired)) AS Avg_Days
FROM we_buy_cars_sales_dataset_modified
GROUP BY Brand, Model
ORDER BY Avg_Days ASC;
