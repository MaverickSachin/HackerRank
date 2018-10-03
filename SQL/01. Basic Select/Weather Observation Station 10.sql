Select Distinct City From Station
Where Right(City, 1) Not In ('a','e','i','o','u');

Select Distinct City From Station
Where City Like '%[^aeiou]';