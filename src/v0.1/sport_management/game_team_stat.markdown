Game Team Stat
==============

Description
-----------
Returns team game stats filtering on one or more of game_id, team_id, and subseason_id. You need a valid stat_module_id to use this api.

Actions
-------
**Index** `GET /game_team_stats?stat_module_id=:stat_module_id&game_id=:game_id&team_id=:team_id&subseason_id=:subseason_id`

* Optional paramter: filters. See [api filtering]() for more details
 
Attributes
----------
**game_id**	*(integer)*  
**team_id**	*(integer)*  
**values**	*(hash)*	Hash of stat values. Keys map to the key value of each stat type for the StatModule for which stats were requested. Also includes a value "games", which is how many games these stat values have been calculated for.

Example Requests
----------------
**Get team stats for team with id 6**
    curl -H "NGIN-API-TOKEN: your_api_token" -H "NGIN-API-VERSION: 0.1"  "https://api.api-sandbox.ngin.com/game_team_stats?stat_module_id=4e271f9591174a7047000001&team_id=6"

**Filtering games that has subseason id 46241, the stat_module_id 4ec1dea70a11c10fdb000014,  and the stats are updated after 2011-12-04 06:53:05**
    curl --user username:password -H "NGIN-API-TOKEN: YOUR_API_KEY" -H "NGIN-API-VERSION: 0.1" -g "https://api.api-sandbox.ngin.com/game_team_stats?subseason_id=46241&stat_module_id=4ec1dea70a11c10fdb000014&filters[rules][][field]=updated_at&filters[rules][][operator]=gt&filters[rules][][value]=2011-12-04%2006:53:05"