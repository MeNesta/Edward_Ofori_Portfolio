# Layoffs Dataset — SQL Data Cleaning (MySQL)

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white)

## Overview
An end-to-end SQL data cleaning project on a real-world global tech layoffs dataset — taking messy, duplicated, inconsistently formatted raw data and turning it into an analysis-ready table using only SQL.

**Tools:** MySQL

Screen Shot preview <img width="1272" height="610" alt="layoffs_Ss" src="https://github.com/user-attachments/assets/368609fb-153c-4f56-a16b-20f3fb663598" />

## Problem
Raw datasets pulled from public sources are rarely analysis-ready: duplicate rows, inconsistent text formatting (trailing punctuation, category variants like "Crypto", "Crypto Currency", "CryptoCurrency"), dates stored as text, and a mix of NULLs and blank strings. Before any trend analysis on layoffs can be trusted, the data has to be cleaned — without touching the original raw table.

## Process
Followed a staged staging-table workflow to keep the raw data untouched at every step:

1. **Staging:** Copied `layoffs` into `layoffs_staging` (structure + data) so the raw source table is never modified.
2. **Remove duplicates:** Used `ROW_NUMBER()` with a `PARTITION BY` across all relevant columns to flag duplicate rows, staged the result into `layoffs_staging2` with the row-number column included, then deleted every row where `row_num > 1`.
3. **Standardize data:**
   - Trimmed whitespace from `company` names
   - Collapsed inconsistent `industry` labels (e.g. `Crypto%` variants) into a single `Crypto` value
   - Removed trailing periods from `country` (e.g. `United States.` → `United States`)
   - Converted the `date` column from text (`STR_TO_DATE`) to a proper `DATE` type
4. **Handle nulls/blanks:** Converted blank `industry` strings to true `NULL`s, then backfilled missing `industry` values by self-joining the table on `company` where another row for the same company had the industry populated.
5. **Final dedup pass:** Re-ran a `DISTINCT`-based pass into a temp table to catch any duplicates the first pass missed, then reloaded the cleaned rows back into `layoffs_staging2`.
6. **Remove unusable rows/columns:** Deleted rows where both `total_laid_off` and `percentage_laid_off` were NULL (no usable signal), and dropped the helper `row_num` column once cleaning was complete.

## Skills Demonstrated
`SQL` `Window Functions (ROW_NUMBER, PARTITION BY)` `CTEs` `Self-Joins` `Data Standardization` `Date Parsing & Type Conversion` `NULL Handling` `Staging-Table Workflow`

## Files
- `Data_Cleaning_project.sql` — full cleaning script

---
*Part of my [Data Analytics Portfolio](../README.md)*
