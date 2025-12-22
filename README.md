# ThriftedByVic Sales Analytics Project

## Overview
This project analyzes multi-platform resale transaction data from my e-commerce brand, ThriftedByVic, to understand sales timing, pricing behavior, and inventory turnover across resale marketplaces.

The goal of this analysis was to identify actionable insights that could inform listing strategy, pricing decisions, and platform prioritization.

## Data
- Source: Personal resale transaction exports
- Platforms analyzed: Depop, Mercari, Poshmark
- Total records: 100+ completed sales
- Data stored and queried using SQLite

## Tools Used
- SQL
- SQLite
- DBeaver
- Excel (for visualization)

## Analysis Performed
- Sales volume by hour of day to identify optimal selling times
- Days-to-sell analysis to measure inventory turnover by platform
- Average sale price comparison across platforms

## Key Insights
- Sales activity clusters during late-night and early-morning hours, with peak volume around midnight.
- Depop demonstrates faster inventory turnover compared to Mercari and Poshmark.
- Depop supports higher sales volume at lower average prices, while Mercari enables higher-priced transactions at lower frequency.

## Project Structure
thriftedbyvic-sales-analytics/

├── data/

│   └── sales_all_platforms_clean.csv

├── sql/

│   └── thriftedbyvic_analysis.sql

├── charts/

│   ├── sales_by_hour.png

│   ├── avg_days_to_sell.png

│   └── avg_price_by_platform.png

├── thriftedbyvic.db

└── summary/

└── notes.md
