# sql-challenge

I was never able to get Postgres to work and access the servers so I used MySQL Workbench as a workaround.

LOAD INFILE is not a valid command so I had to find a way to import the CSV files.  I also ran into errors using the Import Wizard for the larger tables so the solution I found was to use Pandas to import the CSV files into dataframes that were then loaded into the SQL database using Python.  
