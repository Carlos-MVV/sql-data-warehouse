# Data Warehouse Project

This project is a demostration of a datawarehouse solution designed as a portfolio project. It showcases how the datawarehouse was built, how were the industry best practises followed, and the planning behind it.

#### Objectives

Develope a datawarehouse usign SQL Server in order to process sales data for an easy consumption.

#### Arquitecture

The design pattern chosen for this project was the Medallion Architecture.

<img width="1526" height="682" alt="image" src="https://github.com/user-attachments/assets/c5e40a83-039c-4429-97aa-49498f52b3b1" />


##### Bronze Layer's naming convention
- All names must start with the source system name, followed by the unmodified table's name (original).
- **\<sourcesystem>_\<tablename>**
  - \<sourcesystem>: Name of the source system (e.g., crm, erp). 
  - \<tablename>: Name of original table from the source system (e.g., customer_inf)
  - Example: crm_customer_inf.

#### Specifications

- **Data Sources**: Import data from ERP and CRM source systems provided as CSV files.
- **Data Quality**: Clean data, and resolve any issues.
- **Integration**: Combine both source systems for easier consumption.
- **Scope**: Focus only on the latest dataset, without historization.
- **Documentation**: Provide clear documentation of the data model.

##  About Me

I am Carlos Villaseñor, a recently graduated computer engineer from UNAM.
