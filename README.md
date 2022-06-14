# Kimiafarma-Datamart Analysis

Kimia Farma is Indonesia's first pharmaceutical enterprise, created in 1817 by the Dutch East Indies Government. The Government of the Republic of Indonesia consolidated many pharmaceutical enterprises in 1958 to become the State Pharmaceutical Company Bhinneka Kimia Farma. The company name was changed to PT Kimia Farma on August 16, 1971, when the legal entity form of PNF was transformed to a Limited Liability Company (Persero). Kimia Farma requires a datamart design and analyzes it to discover insights that will help the company to grow.

The purpose of this analysis is to provide answers to the following questions:
1. Determine the sales table's primary key.
2. Create a datamart design
3. create a data visualization

Data consisted of original data from PT Kimia Farma, with a total of three tables (penjualan, pelanggan, dan barang). I believe the three tables mentioned above exist in datalake.

Before beginning the first step, data must be processed by removing data from nol values and data types that are not appropriate.

Base table
1. Table base is a table from the result of merging 3 tables with granularity id_penjualan as Primary Key (i.e. concatenation between id_invoice and id_goods)
2. Total row data in the base table is the same as the total in the sales table
3. Table base is stored in the data warehouse

Aggregate table
1. The aggregate table is a derivative of the base table where the data is grouped by date, id_customer and id_invoice
2. The aggregate table is stored in the datamart


**Data Visualization using Google Data Studio**
![](Images%20KF/Untitled.jpg)
