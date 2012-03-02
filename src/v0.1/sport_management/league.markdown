League
======

Description
-----------
A league represents an association of teams on a site

Actions
-------
**INDEX** `GET /leagues{?site_id}`

Associations
------------
* Belongs to Site
* Belongs to Sport
* Has many League Instances

Attributes
----------
**id**	*(integer)*	unique id assigned by NGIN  
**site_id**	*(integer)*	id of the site the league belongs to  
**sport_id** *(integer)*		id of the sport that the league belongs to  
**current_subseason_id**	*(integer)*	id of the current subseason  
**image_id** *(integer)*	id of the image  
**image_url**	*(string)*	Derived field. url of the league image  
**name**	*(string)*	Name of the league  
**button_title**	*(string)*	Button title of the league  
**primary_color**	*(string)*	Primary color of the league  
**secondary_color**	*(string)*	Secondary color of the league  
**abbrev**	*(string)*	Abbreviation of the league name  
**created_at**	*(datetime)*	Timestamp of creation date  
**updated_at**	*(datetime)*	Timestamp of last update

Note
----
* You can filter fields by passing fields parameter in the request. An example is given below  
* Derived fields are not directly mapped to a database columns, so they are read-only.

Example Requests
----------------
**Get all Leagues on Site 1**

    curl --user username:password -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1"  "https://api.api-sandbox.ngin.com/leagues?site_id=2"

**Filter the result to id and name**

    curl --user  username:password -H "NGIN-API-TOKEN: your_token_value " -H "NGIN-API-VERSION: 0.1" "https://api.api-sandbox.ngin.com/leagues?site_id=2&fields=id,name"
