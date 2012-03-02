League Instance
===============

Description
-----------
An instance of a specific league, usually for a single season or subseasons. 

Actions
-------
**INDEX** `GET /league_instances{?league_id}`

Associations
------------
* Belongs to League
* Belongs to Season

Attributes
----------
**id**	*(integer)*	Unique id assigned by NGIN
**season_id**	*(integer)*	id of the season the league instance belongs to
**season_name**	*(string)*	Derived field. Current season name for the league
**league_id**	*(integer)*	id of the league that the league instance belongs to
**created_at**	*(datetime)*	Timestamp of creation date
**updated_at**	*(datetime)*	Timestamp of last update

Example Requests
----------------
** Get all League Instances for League 1 **

    curl --user  username:password  -H "NGIN-API-TOKEN:  your_token_value" -H "NGIN-API-VERSION: 0.1" "https://api.api-sandbox.ngin.com/league_instances?league_id=1&format=json"

** Filter the result to id and season_id **
    curl --user  username:password -H "NGIN-API-TOKEN: your_token_value " -H "NGIN-API-VERSION: 0.1" "https://api.api-sandbox.ngin.com/league_instances?league_id=1&format=json&fields=id,season_id"

