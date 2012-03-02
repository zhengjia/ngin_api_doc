Game Player Stat
================

Description
-----------
Returns player game stats filtering on one or more of the parameters game_id, player_id, team_id, and subseason_id

Actions
-------
**INDEX** `GET /game_player_stats?stat_module_id={?stat_module_id, game_id, team_id, subseason_id, player_id}`

Attributes
----------
**player_id**	*(integer)*  
**game_id**	*(integer)*  
**team_id**	*(integer)*  
**values**	*(Hash)*	Hash of stat values. Keys map to the key value of each stat type for the StatModule for which stats were requested. Also includes a value "games", which is how many games these stat values have been calculated for.

Example Requests
-----------------
    curl -H "NGIN-API-TOKEN: your_api_token" -H "NGIN-API-VERSION: 0.1"  "https://api.api-sandbox-ngin.com/game_player_stats?stat_module_id=4e271f9591174a7047000001&team_id=6"
 