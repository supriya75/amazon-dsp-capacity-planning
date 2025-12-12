-- forecast_accuracy.sql
-- Purpose: Calculate weekly forecast vs actual variance per DSP
SELECT
    Week,
    DSP,
    Forecast_Packages,
    Actual_Packages,
    (Actual_Packages - Forecast_Packages) AS Variance,
    ROUND(((Actual_Packages - Forecast_Packages) / Forecast_Packages) * 100, 2) AS Variance_Percentage
FROM dsp_capacity_uae_large;
