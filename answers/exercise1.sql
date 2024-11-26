--Write a Query that returns all the unique state names. 


select DISTINCT state from zipcodes;


--Write a Query that returns all the Counties by State on separate lines. 

SELECT state, county FROM zipcodes ORDER BY state, county;

--Write a Query that returns all the Counties by state, as a concatenated string.

SELECT state, GROUP_CONCAT(county ORDER BY county SEPARATOR ', ') AS counties
FROM zipcodes GROUP BY state ORDER BY state;


--Write a Query that returns number of Counties by state.

SELECT state, COUNT(county) AS num_counties FROM zipcodes GROUP BY state ORDER BY state;


--Write a Query that returns all of the individual timezones. 

SELECT DISTINCT timezone FROM zipcodes ORDER BY timezone;

--Write a Query that returns the zipcode, city, state, and county of all of the `FALSE` or `NULL` timezones. 

SELECT zip, city, state, county FROM zipcodes WHERE timezone IS NULL OR timezone = 'FALSE' ORDER BY state, city, zip;
