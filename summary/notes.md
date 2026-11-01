## Key Insights

- Depop is about 85% of sales (97 of 114); 31 of its 97 timestamped sales fall between 12 AM and 5 AM, with another cluster in the evening (6-9 PM).
- Depop items sell in about 13.6 days on average; Mercari and Poshmark have too few valid list/sold date pairs to compare turnover reliably.
- Depop supports higher sales volume at lower prices, while Mercari facilitates higher-priced but less frequent transactions.

## Methodology Notes

- Time-of-day analysis was limited to transactions with timestamps (all Depop); rows with time_sold = 'NULL' are excluded.
- Dates are stored as unpadded M/D/YY text and are parsed on the slashes. 13 Mercari rows list a date after the sold date and are dropped by the 0-365 day filter.
- Days-to-sell values were filtered to a realistic range (0–365 days) to account for relisted and legacy inventory.
- Poshmark results were included but de-emphasized due to limited sample size.

## Next Steps (Optional)

- Expand analysis to include category-level performance
- Incorporate fees and net profit analysis
- Build a simple dashboard version of key visuals
