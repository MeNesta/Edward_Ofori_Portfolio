# Spotify Global Top 200 Dashboard (Tableau)

![Tableau](https://img.shields.io/badge/Tableau-E97627?style=flat&logo=tableau&logoColor=white)

## Overview
A Tableau dashboard exploring the Spotify Weekly Global Top 200 charts — surfacing which artists and tracks dominate global streaming. This is my flagship Tableau project, built and **presented live at the Accra Tableau Bootcamp**.

**Tools:** Tableau (data extract + dashboard)

![Dashboard preview](./screenshot.png)
*(Add a screenshot of the dashboard here — drop an image named `screenshot.png` in this folder)*

## Problem
The Global Top 200 is a huge, constantly shifting list. On its own it's just a table of song titles and stream counts — it doesn't show who the *consistently* dominant artists are, how monthly streaming volume trends, or how many unique tracks/albums/artists actually cycle through the chart over time.

## Process
1. **Data extract:** Built a Tableau `.hyper` extract from the Global Top 200 streaming data.
2. **Analysis worksheets:** Built six focused worksheets, each answering a specific question about the chart.
3. **Dashboard assembly:** Combined the worksheets into a single "Spotify Top 200" dashboard for storytelling and live presentation.

## Dashboard Highlights
Six worksheets combined into one dashboard:
- **Top Artists by Songs** — which artists place the most songs on the chart
- **Top Streamed Artists** — which artists generate the most total streams
- **Total Monthly Streams** — overall streaming volume trend by month
- **Unique Artist / Unique Album / Unique Tracks** — chart diversity and turnover metrics

## Key Insights
- **Olivia Rodrigo dominated the chart** in this dataset window (Mar–Oct 2021) — 227 song-week chart appearances and 3.98B total streams, well ahead of #2 Doja Cat (2.24B streams).
- **Chart presence and stream dominance don't fully overlap**: Billie Eilish had the 2nd-most chart appearances (150) but didn't crack the top 3 by total streams, while Lil Nas X ranked #3 in streams (1.93B) without leading in appearances — showing a handful of songs going viral can outweigh consistent chart presence.
- **The chart is fairly concentrated**: just 702 unique tracks and 322 unique artists cycled through the entire ~7-month window, meaning a relatively small pool of songs accounted for all global Top 200 activity.
- **Monthly streaming volume peaked in July 2021** (9.66B streams) after a dip in March (1.82B, a partial month), then stayed consistently high (7.5–9.1B/month) through October.

## Presented At
Accra Tableau Bootcamp — live community presentation to fellow Tableau users.

## Skills Demonstrated
`Tableau` `Data Storytelling` `Dashboard Design` `Public Speaking / Presenting Analysis`

## Files
Open the `.twbx` file in [Tableau Desktop or Tableau Reader](https://www.tableau.com/products/reader) (free) to explore it interactively.

- `Spotify_Top_200_Project.twbx` — packaged Tableau workbook (includes data extract)

---
*Part of my [Data Analytics Portfolio](../README.md) — Accra Tableau Community*
