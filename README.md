# Movie Rental Database
This repository is an SQL database hosted locally which can be used to simulate a movie rental store
## Run instructions:
to run the database, use the command:
> 'Get-Content -Raw .\<sql file name> | .\sqlite3.exe .\project.db '

## Suggested order of execution:
1. First execute the BUILD_TABLES file
2. Next execute the POPULATE_TABLES file to populate the database
3. Finally execute the QUERIES file to answer the questions about the database

## Query Questions:
- What are all of the names of the current employees and their corresponding managers?
- What action movies are in stock?
- When was rental number 6001 checked out?
- How many copies of Forest Gump does the store have in stock?
- When is rental number 6003 supposed to be returned by?

