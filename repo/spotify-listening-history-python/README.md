# Personal Spotify Listening History Pipeline (Python)

![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white) ![pandas](https://img.shields.io/badge/pandas-150458?style=flat&logo=pandas&logoColor=white) ![Tableau](https://img.shields.io/badge/Tableau-E97627?style=flat&logo=tableau&logoColor=white)

## Overview
A personal, end-to-end data project built on my own Spotify data export — turning raw account JSON files into a cleaned dataset and a Tableau visualization of my own listening behavior.

**Tools:** Python (pandas), Tableau

**Status:** In progress

![Dashboard preview](./screenshot.png)
*(Add a screenshot of the dashboard here — drop an image named `screenshot.png` in this folder)*

## Problem
Spotify's official data export gives you dozens of raw, disconnected JSON files (streaming history, library, playlists, search queries, and more) — not an analysis. The goal of this project is to turn that raw export into an actual picture of listening habits: how I discover music, how loyal I am to particular artists, and what a typical listening "session" looks like.

## Data Source
Full personal Spotify data export, including:
- `StreamingHistory_music_0` – `_4` (streaming history, chunked)
- `StreamingHistory_podcast_0`
- `YourLibrary`, `Playlist1`, `Follow`
- `Identity`, `Identifiers`, `UserAttributes`
- `Marquee`, `SearchQueries`, `Wrapped2025`, and other account files

## Process
1. **Ingest:** Load the raw JSON exports into pandas.
2. **Clean:** Parse timestamps, normalize track/artist fields, and merge the chunked streaming-history files into one clean dataset.
3. **Analyze (planned):**
   - **Session detection** — group individual streams into listening sessions
   - **Artist loyalty scoring** — measure how concentrated my listening is around specific artists
   - **Discovery rate** — track how often I listen to new vs. repeat artists/tracks over time
4. **Visualize:** Build a Tableau dashboard on top of the cleaned dataset.

## Skills Demonstrated
`Python` `pandas` `JSON Parsing` `Data Cleaning` `Feature Engineering` `Tableau`

## Files
- _(add notebook/script and final Tableau workbook here once complete)_

---
*Part of my [Data Analytics Portfolio](../README.md)*
