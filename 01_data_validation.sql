/* 
Purpose:
Validate data quality before capacity planning analysis.
Checks for duplicates, nulls, and invalid values that can impact planning accuracy.

Business Context:
Similar to pre-job validations done in production support to avoid SLA misses.
*/

-- 1. Check total records
SELECT COUNT(*) AS total_records
FROM dsp_capacity_uae_large;

-- 2. Check for duplicate DSP + Date combinations
SELECT 
    dsp_id,
    delivery_date,
    COUNT(*) AS record_count
FROM dsp_capacity_uae_large
GROUP BY dsp_id, delivery_date
HAVING COUNT(*) > 1;

-- 3. Check for NULLs in critical fields
SELECT *
FROM dsp_capacity_uae_large
WHERE dsp_id IS NULL
   OR delivery_date IS NULL
   OR forecast_packages IS NULL
   OR actual_packages IS NULL;

-- 4. Check for negative or zero values
SELECT *
FROM dsp_capacity_uae_large
WHERE forecast_packages <= 0
   OR actual_packages < 0
   OR available_drivers <= 0;
