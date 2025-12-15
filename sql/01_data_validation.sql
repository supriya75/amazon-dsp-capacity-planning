/*
Purpose:
Validate dataset integrity before performing capacity planning analysis.

Business Context:
Ensures clean, reliable inputs for capacity forecasts and operational decisions.
Similar to production pre-checks to prevent SLA misses.
*/

-- 1. Total records
SELECT COUNT(*) AS total_records
FROM dsp_capacity_uae_large;

-- 2. Check duplicate records at planning grain (Week + DSP)
SELECT
    Week,
    DSP,
    COUNT(*) AS record_count
FROM dsp_capacity_uae_large
GROUP BY Week, DSP
HAVING COUNT(*) > 1;

-- 3. Check NULLs in critical planning fields
SELECT *
FROM dsp_capacity_uae_large
WHERE Forecast_Packages IS NULL
   OR Actual_Packages IS NULL
   OR Drivers_Available IS NULL
   OR Routes_Planned IS NULL;

-- 4. Check invalid or unrealistic values
SELECT *
FROM dsp_capacity_uae_large
WHERE Forecast_Packages <= 0
   OR Actual_Packages < 0
   OR Drivers_Available <= 0
   OR Routes_Planned <= 0;
