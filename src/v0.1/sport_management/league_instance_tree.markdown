League Instance Tree
====================

Description
-----------
Shows the tree structure of league_instances including children subseasons, division_instances, and team_instances

Actions
-------
**SHOW** `GET /league_instance_tree/{?league_instance_id}`

Example Requests
----------------
**Get League Instance 1 and it's child pages**
    curl --user username:password -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1" "https://api.api-sandbox-ngin.com/league_instance_tree/1&format=json"