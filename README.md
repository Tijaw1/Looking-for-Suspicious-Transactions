# Looking-for-Suspicious-Transactions

The tool imports csv files and creates a database in postgres.

creates views for the different data table merges and dissections. 

Tries to observe a pattern of small transactions (less than or equal to 2.00 usd). Then, it also tries to analyze if these transactions are happening in a specific time window of the day (between 7am and 9am).

I also shows the transaction traffic pattern through out a day.

It then shows the top five merchants that are susceptable to fraudulent transaction.

On part two, it tries to analyze the activities of specific card holders card for fraudulent activity and visualizes the data for those cards. 
