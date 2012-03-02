API Filtering
=============

Summary
-------

You can optionally pass in a hash in the API requests to filter the results. Currently Games, GameTeamStats, and ScoringPlays support the filtering functionality. Filters can be applied to numeric and date/time database fields

Usage
-----
The `filters` hash has the following pattern:

    filters:{ group_operator: AND, rules: [
      {field:SOME_FIELD, operator: SOME_OPERATOR, value: SOME_VALUE},
      {field:SOME_FIELD, operator: SOME_OPERATOR, value: SOME_VALUE}
    ]}

The `group_operator` joins the rules array with `AND` or `OR`. The `group_operator` is optional. When not specified it defaults to `AND`.

`field` is the database column you want to filter on. The following parameters can be used:

* **lt**: less than
* **le**: less than or equal to
* **eq**: equal to
* **ne**: not equal to
* **ge**: greater or equal to 
* **gt**: greater than 

The value must be URI encoded.

Example Requests
----------------
Filtering games that have subseason_id 46241, stat_module_id 4ec1dea70a11c10fdb000014,  and the stats are updated after 2011-12-04 06:53:05

curl --user username:password -H "NGIN-API-TOKEN: API_TOKEN" -H "NGIN-API-VERSION: 0.1" -g "https://api.api-sandbox.ngin.com/game_team_stats?subseason_id=46241&stat_module_id=4ec1dea70a11c10fdb000014&filters[rules][][field]=updated_at&filters[rules][][operator]=gt&filters[rules][][value]=2011-12-04%2006:53:05"