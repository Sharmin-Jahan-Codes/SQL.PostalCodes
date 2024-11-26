
--Write a Query that returns the city, state and number of instances of all of the `FALSE` or `NULL` timezones. 

SELECT city, state, COUNT(*) AS num_instances FROM zipcodes WHERE timezone IS NULL OR timezone = 'FALSE' GROUP BY city, state ORDER BY state, city;