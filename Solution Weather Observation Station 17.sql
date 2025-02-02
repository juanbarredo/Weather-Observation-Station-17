-------------------------------01 30 2025-------------------------------------------
--Style guide UPDATE

--USE database
--SELECT field_name
--	FROM table_name
--		WHERE condition.  --this is the newest UPDATE.

--Also!

---------------------------------------02 02 2025--------------------------------------

--Query the Western Longitude (LONG_W)
--where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780
--Round your answer to 4 decimal places.

--so, 
--again with the awkward wording.

--"where the smallest LAT_N in STATION is greater than 38.7780"

--just weird.

--I can't make sense of it so I have to memorize it instead.

--how would I word it instead?

--i am lost on how to word it.

--LONG_W in the SELECT statement.
--yeah, I am lost for it.
--describing it in my own words just leads to me wanting to write out the query.

--USE Weather_Observation_Station_2;
--SELECT LONG_W
--	FROM STATION
--		WHERE LAT_N IN
--		(SELECT LAT_N
--		FROM STATION
--		WHERE LAT_N > 38.7780);

		--so, right now at the point of this query.
		--I don't feel like I understand what I am getting to.

		--I don't have confidence in my understanding of the problem statement.

--I reread the problem and the idea to use MIN in line 53 of the query below came to me after reading
--"where the smallest"

--USE Weather_Observation_Station_2;
--SELECT LONG_W
--	FROM STATION
--		WHERE LAT_N IN
--		(SELECT MIN(LAT_N)
--		FROM STATION
--		WHERE LAT_N > 38.7780);

--as I loosely understand it.
--but still not completely because I can't make common sense of the problem statement.
--so I am having to just remember it.

--the next step is to do the Rounding.

USE Weather_Observation_Station_2;
SELECT CAST(ROUND(LONG_W,4) AS DECIMAL (10,4))
	FROM STATION
		WHERE LAT_N IN
		(SELECT MIN(LAT_N)
		FROM STATION
		WHERE LAT_N > 38.7780);

		--I am casting as (10,4) but I think it should be (7,4)
		--let me see.

		--ok!  I tried both and got the correct answer both times on this one.

		--it seemed like with Weather Observation Station 15
		--it had to be (10,4)

		--maybe I will keep looking into this.