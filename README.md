# 🏎️ Datapitstop: Formula 1 Data Engineering Project

This project demonstrates a complete **ETL workflow using Lakehouse Architecture** on Azure. It integrates multiple Azure services to process Formula 1 data, transforming it into meaningful insights through **interactive Power BI dashboards**.

## 📁 Table of Contents
- [📋 Project Overview](#-project-overview)
- [🏗️ Architecture](#️-architecture)
- [⚙️ Key Tools and Technologies](#️-key-tools-and-technologies)
- [🔄 Pipelines and Workflow](#-pipelines-and-workflow)
- [🖼️ Screenshots](#️-screenshots)
  - [📊 Power BI Dashboard Pages](#️-power-bi-dashboard-pages)
- [🎥 Video Presentation](#-video-presentation)
- [📂 Repository Structure](#-repository-structure)
- [📧 Contact](#-contact)

---

## 📋 Project Overview

This project follows the **Lakehouse Architecture** using data from multiple Formula 1 seasons to provide insights into driver and constructor performance. The dataset is sourced from **[Kaggle Formula 1 Data](https://www.kaggle.com/datasets/melissamonfared/formula-1/data)**.

1. **Bronze Layer**: Ingest raw data from **on-premise SQL Server** to Azure Data Lake Gen 2 using **Azure Data Factory (ADF)**.
2. **Silver Layer**: Clean and transform the data using **Azure Databricks** (Apache Spark).
3. **Gold Layer**: Store fully transformed data in **Azure Synapse Analytics** for reporting.

---

## 🏗️ Architecture

![Architecture Overview](assets/building-data-pipelines-with-delta-lake-120823%20(1).png)

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

1. **Data Ingestion**: Ingest raw data into the **Bronze Layer** using ADF.
2. **Data Transformation**: Databricks handles data cleaning for the **Silver Layer**.
3. **Data Curation**: Curated data is stored in **Synapse Analytics (Gold Layer)**.
4. **Dashboarding**: Power BI connects to Synapse for live reporting and visualizations.

---

## 🖼️ Screenshots

### Azure Data Factory Pipeline
![ADF Pipeline](assets/Data%20Factory%20Pipeline.png)

### Azure Synapse Analytics Pipeline
![Synapse Pipeline](assets/Synapse%20Analytics%20Pipeline.png)

---

## 📊 Power BI Dashboard Pages
Below are individual pages from the Power BI dashboard, each focusing on specific insights:

1. **Driver Performance Overview**  
   ![Driver Performance](images/powerbi_driver_performance.png)

2. **Constructor Analysis**  
   ![Constructor Analysis](images/powerbi_constructor_analysis.png)

3. **Circuit Insights**  
   ![Circuit Insights](images/powerbi_circuit_insights.png)

4. **Seasonal Trends**  
   ![Seasonal Trends](images/powerbi_seasonal_trends.png)

5. **Pit Stop Efficiency**  
   ![Pit Stop Efficiency](images/powerbi_pitstop_efficiency.png)

Feel free to explore each page’s specific metrics and KPIs.

---

## 🎥 Video Presentation

*Coming Soon...*

Once available, a detailed walkthrough video will be embedded here for a better understanding of the project.

---

## 📂 Repository Structure

```bash
├── images/                     # Architecture and pipeline screenshots
├── notebooks/                  # Databricks notebooks for transformations
├── pipelines/                  # ADF and Synapse pipeline screenshots
├── powerbi/                    # Power BI dashboard images
├── README.md                   # Project documentation
