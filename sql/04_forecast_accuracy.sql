/*
Purpose:
Evaluate forecast accuracy for each DSP per week.

Business Context:
Forecast accuracy is a key input for improving future planning models.
*/

SELECT
    Week,
    DSP,
    Forecast_Packages,
    Actual_Packages,
    ABS(Actual_Packages - Forecast_Packages) AS Absolute_Error,
    ROUND(
        (1 - ABS(Actual_Packages - Forecast_Packages) * 1.0 / Forecast_Packages) * 100,
        2
    ) AS Forecast_Accuracy_Percentage
FROM dsp_capacity_uae_large
ORDER BY Week, DSP;
