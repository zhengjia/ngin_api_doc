Basics
======

Overview
--------
* The NGIN API is accessed via HTTP
* The NGIN API uses JSON as its data format
* All NGIN API calls are required to be made over SSL for security
* The NGIN API is REST
* [URI-Template](http://datatracker.ietf.org/doc/draft-gregorio-uritemplate/?include_text=1) is used for all URIs. An overview for URI-Template is given in [faq 1](faq.html#faq1)
* [Rails parameter convention](http://guides.rubyonrails.org/action_controller_overview.html#parameters) in sending hash and array parameters is adopted in the documentation. An overview for Rails parameter convention is given in [faq 2](faq.html#faq2)

Environments
------------
* **Sandbox**: Access the NGIN API Sandbox for testing purposes. Sandbox has a recent snapshot of production data.
* **Production**

Base URL
---------
* **Production** - https://api.ngin.com
* **Sandbox** - https://api.api-sandbox.ngin.com/

Application Authentication
------------------------------
Each application that uses the NGIN API is given an API token which identifies them as the source of the request. This API token is required for all NGIN API calls. The API token should be set in the NGIN-API-TOKEN HTTP header of each request. The API token is the only authentication needed for get requests returning public information. API access is granted based on sites; an API token may be granted access to one or multiple sites.

To request an API token please contact [NGIN support](mailto:support@tstmedia.com). Please include which sites you need API access to, and if you need a new site on sandbox for testing.

User Authentication
-------------------
To access data that is not public or to create, update, or delete any data, the NGIN API expects an NGIN username and password to be sent with each request via HTTP Basic Authentication. This username and password is the same username and password that would be used to login to any NGIN website using a web browser. HTTP Basic Authentication is a standard authentication mechanism built-into HTTP. Refer to the following sources for more information:

* http://en.wikipedia.org/wiki/Basic_access_authentication
* http://tools.ietf.org/html/rfc1945
* http://tools.ietf.org/html/rfc2616
* http://tools.ietf.org/html/rfc2617