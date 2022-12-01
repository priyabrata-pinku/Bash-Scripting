#!/bin/bash
PS3="Enter your city name?: "
select city in Tokyo London 'Los Angeles' Moscow Dubai Manchester 'New York' Paris Bangalore Johannesburg Istanbul Milan 'Abu Dhabi' Pune Nairobi Berlin Karachi;
	do
case "$city" in
	'Los Angeles'|'New York') echo "City belongs to USA";;
	London|Manchester) echo "City belongs to England";;
	Tokyo) echo "City belongs to Japan";;
	Moscow) echo "City belongs to Russia";;
	Dubai|'Abu Dhabi') echo "City belongs to UAE";;
	Paris) echo "City belongs to Franch";;
	Bangalore|Pune) echo "City belongs to India";;
	Johannesburg) echo "City belongs to South Africa";;
	Istanbul) echo "City belongs to Turkey";;
	Milan) echo "City belongs to Italy";;
	Nairobi) echo "City belongs to Kenya";;
	Berlin) echo "City belongs to Germany";;
	Karachi) echo "City belongs to Pakistan";;
esac
break
done
