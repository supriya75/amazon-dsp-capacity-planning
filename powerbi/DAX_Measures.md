# DAX Measures – Amazon DSP Capacity Planning

This document lists the key DAX measures used in the Power BI dashboard
to support DSP capacity planning and operational decision-making.

---

/* =========================================================
   DSP Capacity Planning – Core DAX Measures
   ========================================================= */

/* -------------------------------
   Volume Metrics
   ------------------------------- */

Total Forecast Packages =
SUM ( 'dsp'[Forecast_Packages] )


Total Actual Packages =
SUM ( 'dsp'[Actual_Packages] )


Package Variance =
[Total Actual Packages] - [Total Forecast Packages]


Forecast Accuracy % =
VAR err = ABS ( [Package Variance] )
RETURN
1 - DIVIDE ( err, [Total Forecast Packages] )


/* -------------------------------
   Capacity & Utilization Metrics
   ------------------------------- */

Utilization % (Driver Hours) =
VAR RequiredDriverHours =
    SUM ( 'dsp'[Required_Driver_Hours] )
RETURN
    IF (
        RequiredDriverHours = 0,
        BLANK (),
        DIVIDE ( SUM ( 'dsp'[Total_Driver_Hours] ), RequiredDriverHours )
    )


Driver Hours Gap % =
DIVIDE (
    SUM ( 'dsp'[Total_Driver_Hours] ) - SUM ( 'dsp'[Required_Driver_Hours] ),
    SUM ( 'dsp'[Total_Driver_Hours] )
)


Driver Availability % =
DIVIDE ( SUM ( 'dsp'[Drivers_Scheduled] ), SUM ( 'dsp'[Drivers_Available] ) )


/* -------------------------------
   Operational Metrics
   ------------------------------- */

Routes Completion % =
DIVIDE ( [Routes Completed], [Routes Planned] )


Delivery Failure Rate % =
DIVIDE ( SUM ( 'dsp'[Delivery_Failures] ), [Total Actual Packages] )


/* -------------------------------
   Week & Context Highlights
   ------------------------------- */

Week Highlight =
SWITCH (
    TRUE (),
    'dsp'[Peak_Flag] = 1, "Peak Week",
    'dsp'[Weather_Flag] = 1, "Weather Impact",
    "Normal"
)


