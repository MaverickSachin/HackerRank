Select Distinct City From Station
Where Left(City, 1) Not In ('a','e','i','o','u') Or Right(City, 1) Not In ('a','e','i','o','u');

Select Distinct City From Station
Where City Like '[^aeiou]%' Or City Like '%[^aeiou]';