/*
Purpose:
Use CTEs to simplify multi-step weekly capacity analysis.
*/

WITH weekly_summary AS (
    SELECT
        Week,
        SUM(Forecast_Packages) AS Total_Forecast,
        SUM(Actual_Packages) AS Total_Actual,
        SUM(Drivers_Available) AS Total_Drivers
    FROM dsp_capacity_uae_large
    GROUP BY Week
)
SELECT
    Week,
    Total_Forecast,
    Total_Actual,
    (Total_Actual - Total_Forecast) AS Weekly_Variance,
    Total_Drivers
FROM weekly_summary
ORDER BY Week;
