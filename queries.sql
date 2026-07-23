-- ============================================
-- Análisis de Ventas - Superstore Dataset
-- Autor: Adrián
-- Herramienta: MySQL Workbench
-- Dataset: https://www.kaggle.com/datasets/vivek468/superstore-dataset-final
-- ============================================

-- Configuración inicial de la base de datos
CREATE DATABASE superstore;
USE superstore;

-- Verificación de que los datos se importaron correctamente
SELECT * FROM `sample - superstore` LIMIT 10;


-- Pregunta 1: ¿Qué categoría vende más?
SELECT Category, SUM(Sales)
FROM `sample - superstore`
GROUP BY Category
ORDER BY SUM(Sales) DESC
LIMIT 5;


-- Pregunta 2: ¿Qué región genera más ganancia?
SELECT Region, SUM(Profit)
FROM `sample - superstore`
GROUP BY Region
ORDER BY SUM(Profit) DESC
LIMIT 5;


-- Pregunta 3: ¿Qué clientes gastan más?
SELECT `Customer Name`, SUM(Sales)
FROM `sample - superstore`
GROUP BY `Customer Name`
ORDER BY SUM(Sales) DESC
LIMIT 10;


-- Pregunta 4: ¿Cuántas órdenes hay en cada región?
SELECT Region, COUNT(`Order ID`)
FROM `sample - superstore`
GROUP BY Region
ORDER BY COUNT(`Order ID`) DESC
LIMIT 10;


-- Pregunta 5: ¿Qué productos tienen ventas altas pero ganancia negativa?
SELECT `Product Name`, Sales, Profit
FROM `sample - superstore`
WHERE Profit < 0
ORDER BY Sales DESC;


-- Pregunta 6: ¿Cuántas órdenes únicas hay por estado?
SELECT State, COUNT(DISTINCT `Order ID`)
FROM `sample - superstore`
GROUP BY State
ORDER BY COUNT(DISTINCT `Order ID`) DESC
LIMIT 10;


-- Pregunta 7: ¿Qué mes del año tiene más órdenes?
SELECT SUBSTRING(`Order Date`, 1, 2), COUNT(`Order ID`)
FROM `sample - superstore`
GROUP BY SUBSTRING(`Order Date`, 1, 2)
ORDER BY COUNT(`Order ID`) DESC
LIMIT 5;


-- Pregunta 8: ¿Cuál es la ganancia total por año?
SELECT SUBSTRING(`Order Date`, -4), SUM(Profit)
FROM `sample - superstore`
GROUP BY SUBSTRING(`Order Date`, -4)
ORDER BY SUM(Profit) DESC;
