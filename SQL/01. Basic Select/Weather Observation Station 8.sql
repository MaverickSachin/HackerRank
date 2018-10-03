Select Distinct City From Station
Where Left(City, 1) In ('a','e','i','o','u') And Right(City, 1) In ('a','e','i','o','u');

Select Distinct City From Station
Where City Like '[aeiou]%[aeiou]'