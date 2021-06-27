# Calculate_Bollinger_Band_Width_Through_Elasticsearch
Materials for the article "Calculate Bollinger Band Width Through Elasticsearch" in Medium
(https://wtwong316.medium.com/calculate-bollinger-band-width-through-elasticsearch-39f7f3a1ceff)

The following steps have been tested with Elasticsearch Server v7.10.1

1. Create two indices, fidelity28_fund and fidelity_bbw and their data are populated.
   The data for index, fidelity28_fund, is coming from IEX (Investors Exchange) with the 
   28 Fidelity commission-free ETFs selected for demo purpose. The time range picked is between 
   2021-01-01 and 2021-04-30. The data in index, fidelity_bbw, is from the average 
   Bollinger Band width for each commission-free ETF calculated from the data in fidelity28_fund
   between 2021-02-01 and 2021-04-30.
   
   ./fidelity28_index.sh

2. After the indices are created and the data are populated, Bollinger Band Width of 
   "Fidelity Blue Chip Value ETF" (FBCV) is calculated. 
   
   ./fbcv_bbw.sh

3. Retrieve from the index fidelity_bbw to calculate the percentiles and the percentile ranking of 
   FBCV.
   
   ./fbcv_avg_bbw.sh
