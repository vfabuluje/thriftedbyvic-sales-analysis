# ThriftedByVic Sales Analytics Project

## Overview
This project analyzes multi-platform resale transaction data from my e-commerce brand, ThriftedByVic, to understand sales timing, pricing behavior, and inventory turnover across resale marketplaces.

The goal of this analysis was to identify actionable insights that could inform listing strategy, pricing decisions, and platform prioritization.

## Data
- Source: Personal resale transaction exports
- Platforms analyzed: Depop, Mercari, Poshmark
- Total records: 114 completed sales
- Data stored and queried using SQLite

## Tools Used
- SQL
- SQLite
- DBeaver
- Excel (for visualization)

## Analysis Performed
- Sales volume by hour of day to identify optimal selling times
- Days-to-sell analysis to measure inventory turnover by platform (rows where the list date is after the sold date are excluded)
- Average sale price comparison across platforms

## Key Insights
- Depop made up about 85% of sales (97 of 114), with an average sale price of $19.47 versus $26.93 on Mercari (about 38% higher) and $20.67 on Poshmark.
- Of the 97 sales with timestamps (all Depop), 31 happened between 12 AM and 5 AM, and sales were also strong in the evening (6-9 PM).
- Depop items sold in 13.6 days on average. Mercari and Poshmark have too few usable date pairs (1 and 3) to compare turnover reliably.
- Depop supports higher sales volume at lower average prices, while Mercari enables higher-priced transactions at lower frequency.

## Project Structure
```
thriftedbyvic-sales-analysis/
├── data/
│   └── sales_all_platforms_clean.csv
├── database/
│   └── thriftedbyvic.db
├── sql/
│   └── thriftedbyvic_analysis.sql
├── charts/
│   ├── sales_by_hour.png
│   ├── avg_days_to_sell.png
│   └── avg_price_by_platform.png
├── summary/
│   └── notes.md
└── notes.md
```
