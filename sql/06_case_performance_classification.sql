/*
Purpose:
Classify DSP performance based on forecast accuracy.
*/

SELECT
    Week,
    DSP,
    Forecast_Packages,
    Actual_Packages,
    CASE
        WHEN ABS(Actual_Packages - Forecast_Packages) * 1.0 / Forecast_Packages <= 0.05
            THEN 'Good'
        WHEN ABS(Actual_Packages - Forecast_Packages) * 1.0 / Forecast_Packages <= 0.15
            THEN 'Moderate'
        ELSE 'Poor'
    END AS Forecast_Performance
FROM dsp_capacity_uae_large;
