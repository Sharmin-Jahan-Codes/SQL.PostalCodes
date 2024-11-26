--Write a Query that returns the city, state and number of instances of all of the timezones that have pipes (`|`) in them.

SELECT city, state, COUNT(*) AS num_instances FROM zipcodes WHERE timezone LIKE '%|%' GROUP BY city, state ORDER BY state, city;
