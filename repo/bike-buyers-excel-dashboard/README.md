# Bike Sales Customer Analysis (Excel)

![Excel](https://img.shields.io/badge/Excel-217346?style=flat&logo=microsoftexcel&logoColor=white)

## Overview
An Excel-based dashboard analyzing customer demographics to understand who actually buys a bike — built entirely with pivot tables, slicers, and charts to keep the analysis fast and accessible without a BI tool.

**Tools:** Excel (PivotTables, PivotCharts, Slicers)

![Dashboard preview](./screenshot.png)
*(Add a screenshot of the dashboard here — drop an image named `screenshot.png` in this folder)*

## Problem
A bike retailer wants to know: what does the typical bike-buying customer look like? Understanding which demographic segments (age, income, commute distance, occupation, region) are most likely to purchase helps target marketing and stock decisions more effectively.

## Process
1. **Raw data (`BikeBuyers_Data` sheet):** Source data with 13 customer attributes — marital status, gender, income, children, education, occupation, home ownership, cars owned, commute distance, region, age, and purchase outcome.
2. **Working sheet:** Intermediate sheet for cleaning/feature prep — including deriving **Age Brackets** (Adolescent, Middle Age, Old) from raw age.
3. **Pivot Table sheet:** Built pivot tables summarizing average income and purchase counts across the demographic fields.
4. **Dashboard sheet:** Assembled the pivot outputs into a single "Bike Sales Dashboard" view with charts and slicers for interactive filtering.

## Dashboard Highlights
- Average income and bike-purchase count broken down by **age bracket**, **region**, **commute distance**, **occupation**, and **education level**
- Interactive slicers to filter the dashboard by any demographic dimension
- Grand total summaries for quick sanity-checking

## Key Insights
- **Overall purchase rate is 48.1%** (481 of 1,000 customers bought a bike) — close to a coin flip, so segments that swing meaningfully above/below that baseline are the interesting ones.
- **Commute distance has a clear "sweet spot"**: 2–5 miles has the highest purchase rate (58.6%), while customers commuting over 10 miles are least likely to buy (29.7%) — likely reflecting that bikes suit short-to-moderate commutes, not long ones.
- **Middle-aged customers buy at the highest rate** (54.6%) vs. Adolescent (35.5%) and Old (31.2%) — Middle Age is both the largest segment (701 of 1,000) and the most bike-friendly.
- **Singles buy more than married customers** (54.1% vs. 42.9%), and buyers own noticeably fewer cars (avg. 1.21 vs. 1.66) and fewer children (avg. 1.70 vs. 2.08) than non-buyers — consistent with bikes being a fit for lighter household logistics.
- **Education correlates positively with purchase rate**: Bachelors (55.2%) and Graduate Degree (54.0%) holders buy far more often than Partial High School (26.3%) — while income shows only a small gap (avg. $57,963 for buyers vs. $54,875 for non-buyers).
- **Pacific region has the highest regional purchase rate** (58.9%) vs. North America (43.3%).

## Skills Demonstrated
`Excel` `PivotTables & PivotCharts` `Feature Engineering (binning/age brackets)` `Slicers` `Dashboard Design`

## Files
Open the `.xlsx` file in Excel — the Dashboard sheet has interactive slicers.

- `BikeBuyers_Data.xlsx` — full workbook (raw data, working sheet, pivot table, dashboard)

---
*Part of my [Data Analytics Portfolio](../README.md)*
