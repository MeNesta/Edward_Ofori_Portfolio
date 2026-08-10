# Insurance Claims Dashboard (Power BI)

![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white) ![BigQuery](https://img.shields.io/badge/BigQuery-4285F4?style=flat&logo=googlebigquery&logoColor=white) ![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat&logo=powerbi&logoColor=black)

## Overview
An interactive Power BI dashboard analyzing insurance claims data — built to help a hypothetical insurance provider understand claim volume, cost, and status trends across companies and claim types. Part of the ALX Data Analytics program.

**Tools:** Python (cleaning), Google BigQuery (data storage/querying), Power BI (dashboard)

Dashboard preview 
<img width="1368" height="742" alt="Screenshot 2026-08-09 235852" src="https://github.com/user-attachments/assets/6592bea0-08cb-4ee8-8694-d164aa49a94d" />

<img width="1891" height="802" alt="Bigquery Ss" src="https://github.com/user-attachments/assets/24d147d1-67d7-4f82-b887-9c5388797ff6" />

<img width="1823" height="846" alt="insurance_claims_python_Ss" src="https://github.com/user-attachments/assets/44f4bc89-c34e-4761-9646-19b20a43b019" />



## Problem
Insurance providers need a clear, at-a-glance view of where claim costs are concentrated — by company, claim type, and time period — and how many claims are still open vs. resolved. Raw claims data on its own doesn't answer "where is the risk/cost coming from?" without aggregation and visualization.

## Process
1. **Cleaning (Python):** Cleaned the raw claims dataset — handled data types, inconsistencies, and prepped it for analysis.
2. **Storage & querying (BigQuery):** Loaded the cleaned data into BigQuery to serve as the source for the dashboard.
3. **Dashboard (Power BI):** Connected Power BI to BigQuery and built a single-page report combining KPI cards, trend lines, and category breakdowns.

## Dashboard Highlights
- **KPI cards** — top-line summary metrics for total claims and claim amounts (GHS)
- **Claim Amount by Year & Month** (line chart) — cost trend over time
- **Claims by Company** (bar chart) — claim volume by insurer/company
- **Claim Amount (GHS) by Claim Type** (column chart) — where the money is going
- **Number of Claims by Claim Status** (donut chart) — open vs. resolved vs. denied split
- **Claim Amount by Companies** (column chart) — cost concentration by company
- Six slicers for interactive filtering (by company, claim type, status, date, etc.)

## Key Insights
- **Cost is concentrated in a few high-value claim types, not the most frequent ones.** Death Benefit and Surgery claims make up only 21% of claim volume (522 of 2,500) but drive 53% of total payout value (GHS 36.6M of GHS 69.2M total), due to a much higher average claim size (~GHS 72,400 and ~GHS 67,800 vs. ~GHS 7,500–7,800 for Dental/Medical Support/Outpatient).
- **A fifth of claim value is still unresolved.** Of 2,500 claims: 1,736 Approved (GHS 47.2M), 508 Pending (GHS 14.4M), 256 Rejected (GHS 7.6M) — the Pending bucket is worth monitoring as a processing backlog.
- **MTN Ghana accounts for the largest share of claims by volume and cost** (665 claims / GHS 19.1M), followed by GCB Bank (518 / GHS 13.5M); Ashesi University has the smallest book (118 / GHS 2.9M).
- **Claim volume is stable month-to-month** (roughly 90–125 claims/month across Jan 2024–Dec 2025) — the cost story is driven by claim-type mix, not growth in volume.

## Skills Demonstrated
`Python` `Data Cleaning` `Google BigQuery` `SQL/Cloud Data Warehousing` `Power BI` `DAX` `Dashboard Design` `KPI Reporting`

## Files
Open the `.pbix` file in []

- `Insurance_dashboard.pbix` — Power BI report file
- _(add cleaning script/notebook if available)_

---
*Part of my [Data Analytics Portfolio](../README.md) — ALX Africa Data Analytics Program*
