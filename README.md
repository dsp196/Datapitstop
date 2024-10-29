# 🏎️ Datapitstop: Formula 1 Data Engineering Project

This project demonstrates a complete **ETL workflow using Lakehouse Architecture** on Azure. It integrates multiple Azure services to process Formula 1 data, transforming it into meaningful insights through **interactive Power BI dashboards**.

## 📁 Table of Contents
- [📋 Project Overview](#-project-overview)
- [🏗️ Architecture](#️-architecture)
- [⚙️ Key Tools and Technologies](#️-key-tools-and-technologies)
- [🔄 Pipelines and Workflow](#-pipelines-and-workflow)
- [🖼️ Screenshots](#️-screenshots)
  - [📊 Power BI Dashboard Pages](#️-power-bi-dashboard-pages)
- [📧 Contact](#-contact)

---

## 📋 Project Overview

This project follows the **Lakehouse Architecture** using data from multiple Formula 1 seasons to provide insights into driver and constructor performance. The dataset is sourced from **[Kaggle Formula 1 Data](https://www.kaggle.com/datasets/melissamonfared/formula-1/data)**.

1. **Bronze Layer**: Ingest raw data from **on-premise SQL Server** to Azure Data Lake Gen 2 using **Azure Data Factory (ADF)**.
2. **Silver Layer**: Clean and transform the data using **Azure Databricks** (Apache Spark).
3. **Gold Layer**: Store fully transformed data in **Azure Synapse Analytics** for reporting.

---

## 🏗️ Architecture

### Lakehouse Architecture Workflow
- **Bronze Layer**:  
   - Stores raw, unmodified data for reference and troubleshooting.  
   - Ingests race results, qualifying times, pit stop data, and driver standings via ADF.  
   - **Use Case**: Ensures data reprocessing if transformations fail.

- **Silver Layer**:  
   - Uses **Databricks** to clean, standardize, and enrich the raw data.  
   - Key transformations include:
     - Handling missing values and outliers.
     - Calculating qualifying lap time differences (Q1 to Q3).
     - Integrating driver, constructor, and circuit data for deeper insights.

- **Gold Layer**:  
   - Stores optimized data in **Azure Synapse Analytics** for real-time queries.  
   - Creates views and aggregated tables for Power BI dashboards.

![Architecture Overview](assets/building-data-pipelines-with-delta-lake-120823%20(1).png)

( *image source*- https://www.databricks.com/sites/default/files/inline-images/building-data-pipelines-with-delta-lake-120823.png?v=1702318922)

---

## ⚙️ Key Tools and Technologies

- **Azure Data Factory (ADF)**: Orchestrates pipelines, automating data ingestion and transformation.
- **Azure Databricks**: Processes large datasets using Spark.
- **Azure Synapse Analytics**: Stores curated data for analysis.
- **Azure Data Lake Gen2**: Secure storage for all data layers.
- **Azure Key Vault**: Manages credentials and service principals securely.
- **Power BI**: Creates interactive reports from transformed data.

---

## 🔄 Pipelines and Workflow

1. **Data Ingestion**  
   - **ADF** pipelines load raw data from on-premise SQL Server to ADLS Gen2 (Bronze Layer).
   - Data ingested includes:
     - **Race results**  
     - **Driver and Constructor Standings**  
     - **Qualifying session data**  
     - **Pit stop logs and circuit data**

2. **Data Transformation and Cleaning**  
   - **Databricks** transforms Silver Layer data by:
     - **Standardizing column formats** (dates, time).
     - **Calculating lap time differences** and pit stop efficiency.
     - Creating driver-constructor **performance metrics per circuit**.

3. **Data Aggregation and Curation**  
   - Databricks performs further transformations and creates curated dataset that is loaded in Synapse Analytics for dashboards:
     - Aggregates **top drivers and constructors per season**.
     - Computes **qualifying vs race performance metrics**.
     - Provides **circuit-level incident insights** and **pit stop efficiency** analysis.
     - Gold layer data is then queried in syanpse analytics and views are created that are loaded in Power BI for dashboarding.

4. **Dashboard Creation and Reporting**  
   - Power BI dashboards connect to Synapse Analytics for **real-time updates**.
   - Automated **ADF workflows** ensure dashboards are always up-to-date.

5. **Security and Integration**  
   - **Service principals** allow secure access between **Databricks** and **Data Lake Gen2**.  
   - **Azure Key Vault** manages credentials to ensure compliance and security.

---

## 🖼️ Screenshots

### Azure Data Factory Pipeline
![ADF Pipeline](assets/Data%20Factory%20Pipeline.png)


---

## 📊 Power BI Dashboard Pages
Below are individual pages from the Power BI dashboard, each focusing on specific insights:
---
1. **Driver Championship Overview**

   [![Driver Championship](assets/Driver%20Championship.jpg)](https://github.com/user-attachments/assets/ca194a61-edc1-4c0a-be77-d97e0aa1b91a
)
---
3. **Constructor Championsip Overview**  

   [![Constructor Championship](assets/Constructor%20Championship.jpg)](https://github.com/user-attachments/assets/438e1353-a5a5-48b0-8ccc-da8ab5f002ec
)
---
4. **Circuit Analysis**  

   [![Circuit Analysis](assets/Circuit%20Analysis.jpg)](https://github.com/user-attachments/assets/9f385803-1700-4da2-9fb6-49b9f95b6b23
)
---
5. **Pitstop Analysis**  

   [![Pitstop Analysis](assets/Pit%20Stop%20Analysis.jpg)](https://github.com/user-attachments/assets/b0c7da84-4bed-4dfd-a732-617c5b4d17b0
)
---
6. **Qualifying Overview**  

https://github.com/user-attachments/assets/f17d5faa-2eeb-40aa-966d-ab8a991f2f4d

Feel free to explore each page’s specific metrics and KPIs.

---



## 📧 Contact
For questions or collaboration, please reach out:  
- **Email**: [deep19698@gmail.com](mailto:your-email@example.com)  
- **GitHub**: [https://github.com/dsp196](https://github.com/your-profile)  
- **LinkedIn**: [https://www.linkedin.com/in/deeppatel196/](https://linkedin.com/in/your-profile) 
