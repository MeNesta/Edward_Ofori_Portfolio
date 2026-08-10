# Transparency in Tracking Maji Ndogo's Water Funds (Power BI)

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white) ![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat&logo=powerbi&logoColor=black)

## Overview
A public-facing Power BI dashboard built to track how water infrastructure improvement funds are spent across the fictional country of Maji Ndogo — covering budgets vs. actual cost, vendor charges, and progress on improvements by province and location type. Built as an integrated data analytics capstone project (ALX Data Analytics curriculum, Project 4).

**Tools:** SQL (data exploration), Power BI (data modeling with DAX + dashboard)

![Dashboard preview](./screenshot.png)
*(Add a screenshot of the dashboard here — drop an image named `screenshot.png` in this folder)*

## Problem
Public infrastructure spending is only trustworthy if it's visible. Citizens, auditors, and oversight bodies need to be able to see: how much was budgeted vs. actually spent on each water-source improvement, which vendors were paid and how much, and whether projects are progressing on schedule — broken down by province and location type (rural vs. urban).

## Process
1. **Problem framing & exploration (SQL):** Queried the underlying infrastructure and project data to understand cost structures, improvement types, and completion timelines before modeling.
2. **Data modeling (Power BI / DAX):** Built measures on top of `infrastructure_cost` and `project_progress` tables to calculate cumulative cost vs. budget over time.
3. **Dashboard build (Power BI):** Designed a multi-page report combining a shape map, KPI visuals, and a dedicated vendor-charges page for accountability.

## Dashboard Highlights
Five report pages:
- **Improvement Plan** — shape map of Maji Ndogo, total cost per improvement type, cost per province (pie chart), filters by location type, completion date, province, and improvement type
- **Key Indicators** — 10 KPI cards, cost per improvement (bar chart), full slicer panel (town, province, location type, improvement, completion date)
- **Key Indicators Visual** — pivot table, scatter chart, and column/bar charts for deeper cross-cutting analysis
- **Vendor Charges** — pivot table and charts breaking down what was paid to which vendors, by improvement and province
- **Cumulative Cost vs. Budget KPI** — tracks running project spend against the allocated budget over the completion timeline

## Key Insights
- **The whole program ran ~5.3% over budget**: GHS 154.5M actual spend vs. GHS 146.7M budgeted (GHS 7.76M variance) across 25,398 completed improvement projects.
- **"Diagnose local infrastructure" is the most over-budget improvement type by far** — 26.5% over its budget (GHS 3.23M actual vs. GHS 2.55M budgeted), well above every other improvement type (which mostly ran 3–6% over).
- **Sokoto province has both the highest total spend and the largest budget overrun**: GHS 44.8M actual (GHS 4.7M over budget) across 5,603 projects — more than any other province.
- **Install RO filter and Drill well are the two biggest cost drivers overall**, together accounting for GHS 83.1M of the GHS 154.5M total spend (54%).
- **Water access is still split almost down the middle**: of all sources, 64% are "Below Basic Access" vs. 36% "Basic Access" — and of tested wells, over half (12,467 of 17,383) came back contaminated (chemical or biological).

## Skills Demonstrated
`SQL` `Data Exploration` `Power BI` `DAX` `Data Modeling` `Geospatial (Shape Map) Visualization` `Dashboard Design for Public Accountability`

## Files
- `DA_4INTEGRATED_PROJECT_PART_4_PUBLIC_DASHBOARD...pbix` — Power BI report file

---
*Part of my [Data Analytics Portfolio](../README.md) — ALX Africa Data Analytics Program*
