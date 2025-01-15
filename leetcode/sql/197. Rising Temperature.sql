'''
Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.
 

Write a solution to find all dates id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.

The result format is in the following example.

 
Example 1:

Input: 
Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+
Output: 
+----+
| id |
+----+
| 2  |
| 4  |
+----+
Explanation: 
In 2015-01-02, the temperature was higher than the previous day (10 -> 25).
In 2015-01-04, the temperature was higher than the previous day (20 -> 30).

'''

select w1.id 
from Weather w1 
join Weather w2 
on DATE_ADD(w2.recordDate, Interval 1 Day) = w1.recordDate 
where w1.temperature > w2.temperature

'expln,
w1 6 w2 are aliases for same table.

w1 represents todays data.
w2 represents yesterdays data.
 
ON DATE_ADD(w2.recordDate, INTERVAL 1 DAY) = w1.recordDate
This condition ensures that we only pair rows where w2.recordDate + 1 day equals w1.recordDate.
This creates a relationship where w2 represents the data from the previous day (yesterday). 

so next is comparing today & previous day temp'
