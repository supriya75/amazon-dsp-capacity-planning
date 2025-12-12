# Amazon DSP Capacity Planning – Analytics Project (UAE Region)

## Project Overview
This project simulates a real-world **Amazon DSP (Delivery Service Partner) Capacity Planning** environment using a large UAE-based last-mile dataset.  
It demonstrates how to analyze weekly operational performance, forecast accuracy, route planning efficiency, and driver utilization using:

- SQL (advanced)
- Power BI (dashboarding and KPI design)
- Excel (data cleaning, pivot analysis)
- Python (EDA & forecasting)
- Core capacity planning concepts

The purpose of this project is to showcase **end-to-end data analysis skills** relevant to Amazon’s **DSP Planning Analyst / DSP Capacity Planning Analyst** role.

---

## Objectives
This project aims to:

1. Analyze weekly forecast accuracy and operational variance  
2. Measure DSP driver utilization and route completion  
3. Identify operational bottlenecks (failures, weather impact, volume spikes)  
4. Build automated dashboards for stakeholders  
5. Produce actionable insights to support capacity decisions  

---

# Dataset Description
The dataset contains **52 weeks of data** for **four DSPs** in the UAE region.

### Key Columns
| Column | Description |
|-------|-------------|
| Week | Weekly time period |
| DSP | Delivery Service Partner ID |
| Forecast_Packages | Packages expected (initial planning) |
| Actual_Packages | Packages actually dispatched |
| Drivers_Available | Drivers contracted for the week |
| Drivers_Required | Drivers required based on forecast |
| Routes_Planned | Planned route count |
| Routes_Completed | Actual completed routes |
| Delivery_Failures | Failed/undelivered packages |

This mirrors real Amazon last-mile operational datasets.

---

# Tech Stack
- **SQL** (Window functions, CTEs, Joins, CASE logic, advanced aggregations)
- **Power BI** (Interactive dashboard, DAX KPIs)
- **Excel** (Cleaning, pivot tables, what-if analysis)
- **Python** (Pandas, Matplotlib, forecasting)
- **GitHub** (Versioned analytical portfolio)

---

# Project Structure

amazon-dsp-capacity-planning/
│
├── data/
├── sql/
├── analysis/
├── powerbi/
├── python/
└── assets/


### 1. /data/
Contains the project datasets (CSV, Excel).

### 2. /sql/
Contains all SQL queries used for capacity analysis, including:
- Forecast vs Actual Variance  
- Driver Utilization  
- Delivery Success Rate  
- Peak Week Identification  
- CTE Variance Analysis  
- CASE-Based Performance Categorization  
- JOIN with external data (Weather)  

### 3. /analysis/
Contains written insights:
- DSP-Level Insights  
- Week-Level Analysis  
- Forecasting Accuracy  
- Capacity Planning Summary  

### 4. /powerbi/
Contains the Power BI dashboard (.pbix + PNG export) and explanations of visuals.

### 5. /python/
Optional notebooks for:
- Data Cleaning  
- EDA  
- Forecasting Models  
- Capacity Trend Visualization  

---

# Key Analyses & Insights  

### 1. Forecast Accuracy
Variance between forecast and actual packages highlights under- or over-planning.

- Chronic under-forecasting → driver shortages, route overloads  
- Chronic over-forecasting → underutilized drivers & wasted cost  

### 2. Driver Utilization
Measured as:  
**Actual Packages / Drivers Available**

- Optimal range: 120–160 packages per driver  
- Underutilization indicates unnecessary costs  
- Overutilization increases SLA breach risks  

### 3. Route Completion Efficiency
Shows whether routing plans are realistic.

### 4. Delivery Failure Analysis
Failures correlated with:
- Bad weather  
- Incorrect routing  
- Capacity mismatches  

### 5. Peak Demand Weeks
Identified using window functions.  
Helps anticipate driver additions or route expansion.

---

# Dashboard Preview
The Power BI dashboard includes:

- Forecast Accuracy KPI  
- Weekly Trends  
- DSP Comparison  
- Driver Utilization  
- Route Completion Funnel  
- Failure Rate Analysis  
- Slicers for DSP, Week, Weather  

---

# Capacity Planning Concepts Demonstrated
- Variance Analysis  
- Driver Requirement Modeling  
- Route-to-Driver Ratio  
- Demand Forecast Interpretation  
- SLA Risk Flagging  
- Sensitivity Analysis  
- Peak Week Resource Scaling  

These align closely with Amazon AMZL capacity planning operations.

---

# How This Project Supports Amazon DSP Planning Analyst Role
This project demonstrates the exact competencies required for the role:

### Operational Analytics
Understanding volume, routes, failures, bottlenecks.

### Forecast & Variance Analysis
A core responsibility for the position.

### Technical Skills
SQL, Excel, BI reporting, automation mindset.

### Stakeholder Reporting
Clear dashboards and insights supporting decision-making.

### Root Cause Analysis
Ability to deep dive into operational issues with supporting evidence.

---

# Next Steps & Enhancements
Future enhancements include:

- Python demand forecasting model  
- Automated Power BI refresh using Power Query  
- What-if scenarios for driver allocation  
- Correlation analysis: Weather vs Failures  

---

# Contact
For questions or collaboration, feel free to connect.
rajendersupriya@gmail.com
