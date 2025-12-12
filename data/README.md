# DSP Capacity Planning Dataset (UAE Region)

This folder contains the dataset used for the Amazon DSP Capacity Planning project.

## Dataset Files
- `dsp_capacity_uae_large.csv` – CSV version of the dataset
- `dsp_capacity_uae_large.xlsx` – Excel version of the dataset

## Column Descriptions

| Column | Data Type | Description | Business Relevance |
|--------|-----------|-------------|------------------|
| Week | Date | Week start date | Helps track weekly operations and seasonal variations |
| DSP | Text | Delivery Service Partner ID | Unique DSP identifier for capacity allocation |
| Forecast_Packages | Integer | Number of packages forecasted | Used to plan driver and route capacity |
| Actual_Packages | Integer | Number of packages actually delivered | Measures forecast accuracy and operational efficiency |
| Drivers_Available | Integer | Number of drivers scheduled | Determines available human resources for deliveries |
| Drivers_Required | Integer | Number of drivers required based on forecast | Highlights potential shortages or overcapacity |
| Routes_Planned | Integer | Number of routes planned for the week | Operational planning and workload distribution |
| Routes_Completed | Integer | Number of routes actually completed | Measures route efficiency and SLA adherence |
| Delivery_Failures | Integer | Number of undelivered packages | Highlights operational bottlenecks or external issues (weather, traffic) |
| Weather_Flag | Text | Weather condition (Clear, Rain, Sandstorm) | Helps analyze environmental impact on operations |
| Peak_Flag | Integer | 1 if week is peak, 0 otherwise | Useful to plan additional resources for high-demand weeks |
| Avg_Package_Per_Route | Float | Average packages delivered per route | Helps evaluate route optimization and driver productivity |
| Required_Driver_Hours | Float | Estimated driver hours needed | Supports capacity planning and resource allocation |
