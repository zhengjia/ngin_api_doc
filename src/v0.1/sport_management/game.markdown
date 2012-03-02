Game
====

Description
-----------
Game holds all pertinent information for a sporting event.

Actions
-------
**INDEX** `GET /games?subseason_id={?subseason_id, division_instance_id, team_instance_id, page, before, after, today, filters}
* The results are paginated at 100 records per page. A page number is required (starting from 1)
* Requires one of the following parameters `subseason_id`, `division_instance_id`, `team_instance_id`
* `page` is required
* `before` is inclusive, formatted as mm-dd-yyyy
* `after` is inclusive, formatted as mm-dd-yyyy

**SHOW** `GET /games/{game_id}`

**CREATE** `POST /games`
* See attributes below

**UPDATE** `POST /games/{game_id}`

**DELETE** `DELETE /games/{game_id}`

Associations
------------

Belongs to Home TeamInstance

Belongs to Away TeamInstance

Belongs to Subseason

Attributes
----------
**id** *(integer, required)* Unique id assigned by NGIN  
**home_team_id** *(integer)* id of the home team_instance  
**away_team_id** *(integer)* id of the away team_instance  
**status** *(string)* The status of the game  
**location** *(string)*	Description of the location of the game  
**location_url_protocol**	*(string)* HTTP protocol of the location_url  
**location_url**	*(string)* url for the location (excludes http protocol)  
**subseason_id**	*(integer)*	id of subseason assigned by NGIN  
**sport_id** *(integer)* id of the game's sport  
**description**	*(string)*	Description of the game  
**notes**	*(string)* Extra notes and information for the game  
**properties** *(hash)* Additional properties for the game  
**officials** *(hash)* Officials for the game  
**extra_game_details**	*(hash)* Extra information about the game  
**affects_standings**	*(boolean)* Whether or not the game affects the teams' standings  
**created_at**	*(datetime)* Timestamp of creation date  
**updated_at**	*(datetime)* Timestamp of last update  
**start_date_time**	*(datetime)* Derived field. Timestamp of the start time of the game  
**end_date_time**	datetime		Derived field. Timestamp of the end time of the game  
**time_remaining**	time		Derived field. Remaining time of a game  
**current_period**	integer		Derived field. Current period of a game  
**score_by_time_interval**	array		Derived field. Scores by game periods  
**home_team_name**	string		Name of the home team  
**home_team_logo**	*(string)*		Image url of the home team  
**home_team_score_api**	*(integer)*		Home team scores  
**away_team_name**	*(string)*		Name of the away team  
**away_team_name**	*(string)*		Image url of the away team  
**away_team_score_api**	*(integer)*		Away team scores  
**scoring_type**	*(enum)*		Possible values are quick, tabular, live, unscored

Officials hash attributes
-------------------------
**id**	*(integer)*	Unique id assigned by NGIN  
**name**	*(string)*	Name of the official  
**official_type_id**	*(integer)*	id of the type of official  
**created_at** *(datetime)*	Timestamp of creation date  
**updated_at** *(datetime)*	Timestamp of last update  

Extra_game_details hash attributes
----------------------------------
**id** *(integer)*	Unique id assigned by NGIN  
**weather_conditions**	*(string)*		Description of the weather conditions for the game  
**wind_speed**	*(integer)*		Wind speed for the game  
**wind_speed_units**	*(string)*		Units the wind speed is measured in  
**wind_direction**	*(string)*		Direction the wind was blowing during the game  
**temperature**	*(integer)*		Temperature during the game  
**temperature_unites**	*(string)*		Units the temperature is measured in  
**attendance**	*(integer)*		Number of spectators attending the game  
**sellout**	*(boolean)*		Whether or not the game sold out  
**night_game**	*(boolean)*		Whether or not the game was played at night  
**neutral_field**	*(boolean)*		Whether or not the game was played on a neutral field  
**natural_surface**	*(boolean)*		Whether or not the game was played on a natural surface  
**created_at**	*(datetime)*	Timestamp of creation date  
**updated_at** *(datetime)*	Timestamp of last update

Derived fields are  not directly mapped to a database column; they are read-only.

Example Requests
----------------

**Get First Page of All Games for Subseason 1**

    curl --user username:password -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1" "http://api.api-sandbox.ngin.com/games?subseason_id=1&page=1&format=json"

**Get First Page of all Games for Team Instance 1**

    curl --user username:password -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1" http://api.api-sandbox.ngin.com/games?team_instance_id=1&page=1&format=json

**Get Game 1**

    curl --user username:password -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1" -H  https://api.api-sandbox-ngin.com/games/1?format=json

**Create a Game**

    curl --user username:password -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1"  --request POST --data game[subseason_id]=2 --data game[status]=scheduled --data game[sport_id]=1 --data game[home_team_id]=1 --data game[away_team_id]=2 https://api.api-sandbox.ngin.com/games?format=json

**Update Game 1**

    curl --user username:password -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1"  --request POST --data game[status]=in_progress --data game[home_team_id]=1 --data game[away_team_id]=2 --data game[]="Field A" https://api.api-sandbox.ngin.com/games/1?format=json

**Delete a Game**

    curl --user username:password -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1"  --request DELETE https://api.api-sandbox.ngin.com/games/1?format=json

**Filtering games that are in the subseason id 46241 and updated after 2011-12-04 06:53:05**

    curl --user username:password -H "NGIN-API-TOKEN: YOUR_API_TOKEN" -H "NGIN-API-VERSION: 0.1" -g "https://api.api-sandbox.ngin.com/games?subseason_id=46241&page=1&filters[rules][][field]=updated_at&filters[rules][][operator]=gt&filters[rules][][value]=2011-12-04%2006:53:05"
    