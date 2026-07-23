# sql-superstore-sales-analysis
📌 Descripción del proyecto
Análisis exploratorio de datos de ventas de una tienda "Superstore" utilizando SQL en MySQL. El objetivo fue responder 8 preguntas de negocio sobre ventas, ganancias, clientes y productos, a partir de un dataset con miles de órdenes de compra.
Este es mi primer proyecto de portafolio como parte de mi transición hacia Data Analytics.
🛠 Herramientas utilizadas
MySQL Workbench
SQL (SELECT, WHERE, GROUP BY, ORDER BY, COUNT, SUM, DISTINCT, SUBSTRING)
📊 Dataset
Superstore Sales Dataset (Kaggle) — contiene información de órdenes, productos, clientes, ventas y ganancias de una tienda minorista entre 2014 y 2017.
❓ Preguntas de negocio respondidas
¿Cuáles son las categorías de productos con más ventas?
¿Qué región genera más ganancia?
¿Cuáles son los 10 clientes que más gastan?
¿Cuántas órdenes hay en cada región?
¿Qué productos tienen ventas altas pero ganancia negativa?
¿Cuántas órdenes únicas hay por estado?
¿Qué mes del año tiene más órdenes?
¿Cuál es la utilidad por año?
💡 Hallazgos principales
Technology es la categoría con más ventas ($835,900), seguida de Furniture ($733,046) y Office Supplies ($703,502).
La región West genera la mayor ganancia de las 4 regiones del negocio.
Sean Miller es el cliente que más ha gastado históricamente.
Noviembre y diciembre son los meses con más órdenes, probablemente por la temporada de descuentos de fin de año (Black Friday y Navidad).
La ganancia total del negocio creció cada año: de $49,044 en 2014 a $92,774 en 2017.
Varios productos —como el Cisco TelePresence System EX90— generan ventas altas pero ganancia negativa, lo que sugiere descuentos excesivos que deberían revisarse.
La región oeste es la que genera más ordenes.
Ordenes únicas por estado: California (1003), NY (556), TX (484).
📁 Archivos del repositorio
`queries.sql` — Las 8 consultas SQL utilizadas en el análisis, con comentarios explicando cada una.
`README.md` — Este archivo.
🚀 Cómo reproducir este análisis
Descargar el dataset Superstore desde Kaggle.
Crear una base de datos en MySQL e importar el CSV como tabla.
Ejecutar las queries del archivo `queries.sql`.
👤 Autor
Adrián — en transición hacia Data Analytics.
