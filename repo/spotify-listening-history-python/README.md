# Personal Spotify Listening History Pipeline (Python)

![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white) ![pandas](https://img.shields.io/badge/pandas-150458?style=flat&logo=pandas&logoColor=white) ![Tableau](https://img.shields.io/badge/Tableau-E97627?style=flat&logo=tableau&logoColor=white)

## Overview
A personal, end-to-end data project built on my own Spotify data export — turning raw account JSON files into a cleaned dataset and a Tableau visualization of my own listening behavior.

**Tools:** Python (pandas), Tableau

**Status:** In progress

Code preview
<img width="1247" height="598" alt="Screenshot 2026-08-10 003145" src="https://github.com/user-attachments/assets/cccc5291-7181-44a5-998d-b096a34712c6" />
<img width="1185" height="695" alt="Screenshot 2026-08-10 003124" src="https://github.com/user-attachments/assets/e6d6e6e9-d304-4059-afed-07fda805bc22" />
<img width="1353" height="691" alt="Screenshot 2026-08-10 003219" src="https://github.com/user-attachments/assets/e267814a-5311-4311-99ea-374825e88709" />
<img width="1342" height="702" alt="Screenshot 2026-08-10 003205" src="https://github.com/user-attachments/assets/ff9d37b9-ed19-4821-a661-b9441bb419ee" />


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
- [Spotify_personal Data](http://localhost:8888/notebooks/My_Spotify_project.ipynb?)

---
*Part of my [Data Analytics Portfolio](../README.md)*
