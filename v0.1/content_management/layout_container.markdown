Layout Container
================

Description
-----------
A Layout Container contains a block of content within a resource such as a NewsArticle. Layout Containers may have between one and three LayoutColumns, which organize content vertically.

Actions
-------
**Show** `GET /layout_containers/{layout_container_id}`

**Create** `POST /layout_containers{?layout_container*, site_id}`

*layout_container* - a composite value consisting of an associative array of (name, value) pairs. See attributes below.

**Update** `POST /layout_containers/{layout_container_id}{?layout_container*, site_id}`

*layout_container* - a composite value consisting of an associative array of (name, value) pairs. See attributes below.

**Delete** `DELETE /layout_containers/{layout_container_id}{?site_id}`

**Move** `POST layout_containers/{layout_container_id}/move{?content_node_id, site_id}`

Associations
------------
Has many [Layout Columns](layout_column.html)

Attributes
----------
**id** *(integer)* Unique id assigned by NGIN

**content_node_id**	*(integer)*	Id of the content_node this layout container belongs to

**layout_type**	*(string)* Describes arrangement of Layout Columns within the Layout Container. Possible values "oneColumn","twoColumn5050","twoColumn6633", "twoColumn3366","threeColumn333333","threeColumn502525","threeColumn255025","threeColumn252550". Defaults to "oneColumn"

**locked**	*(boolean)*	Sets whether Layout Column can be edited

**position**	*(integer)* Relative position among all Layout Containers within Content Node.

**custom_css_class**	*(string)* CSS class to apply to Layout Container

**mirror_target_id**	*(integer)*	If set, Layout Container will mirror the content of another Layout Container with this id

**name**	*(string)* Name of the layout container

**created_at** *(datetime)* Timestamp of creation date

**updated_at** *(datetime)*	Timestamp of last update

Example Requests
----------------
* Show Layout Container 1

    curl -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1" "https://api.api-sandbox.ngin.com/layout_containers/1"

* Create a Layout Container

    curl --user username:password -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1"  --request POST --data layout_container[content_node_id]=8 --data layout_container[layout_type]=twoColumn5050 --data layout_container[position]=2 --data site_id=2 "https://api.api-sandbox.ngin.com/layout_containers"

* Update Layout Container 

    curl --user  username:password -H "NGIN-API-TOKEN:  your_api_token" -H "NGIN-API-VERSION: 0.1"  --request PUT --data layout_container[content_node_id]=8 --data layout_container[layout_type]=twoColumn5050 --data layout_container[position]=1 --data site_id=2 "https://api.api-sandbox.ngin.com/layout_containers/8"

* Delete a Layout Container

    curl --user username:password -H "NGIN-API-TOKEN: 7your_token_value" -H "NGIN-API-VERSION: 0.1"  --request DELETE --data site_id=2 "https://api.api-sandbox.ngin.com/layout_containers/17""

* Move Layout Container 11 to Content Node 10

    curl --user  username:password -H "NGIN-API-TOKEN: your_ngin_token" -H "NGIN-API-VERSION: 0.1"  --request PUT --data content_node_id=10  --data site_id=1 "https://api.api-sandbox.ngin.com/layout_containers/11/move"