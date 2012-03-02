Event
=====

Description
-----------
A event has a name, description, location, date and time. Events are either created manually on the calendar page, or automatically by other models.

Actions
-------
**Index** `GET /events{?connections*, page, limit, start_date, end_date, includes}`

*connections* is a hash. Hash keys are resources the events are connected to, and value arrays are ids of those resources

Currently support connection types:
* team
* season 

*page*: Current page of the paginated list of events. Defaults to the first page

*limit*: Limit per page. Defaults to 100 per page

*start_date*: start date of the events in the format of MM-DD-YYYY. Defaults to today.

*end_date*: end date of the events in the format of MM-DD-YYYY. 

*includes*: includes=page_elements includes page elements on the events to the response

Associations
------------
* has_one game
* has_one dib_item
* has_one survey
* belongs_to [content_node](content_management.html#content-node)

Attributes
----------
**id**	*(integer)*  
**location**	*(string)*  
**location_url**	*(string)* The website for the event  
**description**	*(string)*  
**title**	*(string)*  
**start_date_time**	*(datetime)*	start date time of the event  
**end_date_time**	*(datetime)*	end date time of the event  
**content_node_id**	*(integer)*	content_node associated with the event  
**imported_event_flag**	*(boolean)*	Whether the event is imported from external files  
**has_game** *(boolean)*	Derived field. Indicates whether a game is associated with the event  
**all_day_event**	*(boolean)*	Whether the event last all day  
**timezone** *(string)*

Example Requests
----------------

**Show event 1**

    curl --user username:password -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1" https://api.api-sandbox.ngin.com/events/1

**Show event 1 with page elements on the event page**

    curl --user username:password -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1" "https://api.api-sandbox.ngin.com/events/1?includes=page_elements"

**List all team events for team 1, starting from 9-25-2011**

    curl --user username:password -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1" --globoff "https://api.api-sandbox.ngin.com/events?connections[team][]=1&start_date=9-25-2011"

**List all events for season 1**

    curl --user username:password -H "NGIN-API-TOKEN: your_token_value" -H "NGIN-API-VERSION: 0.1" --globoff "https://api.api-sandbox.ngin.com/events?connections[season]=1&start_date=5-10-2011"
