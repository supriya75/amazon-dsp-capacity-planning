/*
Purpose:
Measure driver availability vs scheduled capacity.

Business Context:
Identifies risk weeks where driver shortages could impact SLA.
*/

SELECT
    Week,
    DSP,
    Drivers_Available,
    Drivers_Scheduled,
    (Drivers_Available - Drivers_Scheduled) AS Driver_Gap,
    ROUND(
        Drivers_Available * 100.0 / Drivers_Scheduled,
        2
    ) AS Driver_Capacity_Percentage
FROM dsp_capacity_uae_large
ORDER BY Week, DSP;
