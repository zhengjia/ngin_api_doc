Basics
------
* The NGIN API is accessed via HTTP
* The NGIN API uses JSON as its data format
* All NGIN API calls are required to be made over SSL for security
* The NGIN API is based on REST

Environments
------------
* Sandbox: Access the NGIN API Sandbox for testing purposes. Sandbox has a recent snapshot of production data.
* Production

Base URL
---------
* Production: https://api.ngin.com
* Sandbox: https://api.api-sandbox.ngin.com/

Application Authentication
------------------------------
Each application that uses the NGIN API is given an API token which identifies them as the source of the request. This API token is required for all NGIN API calls. The API token should be set in the NGIN-API-TOKEN HTTP header of each request. The API token is the only authentication needed for get requests returning public information.

To request an API token please contact [NGIN support](mailto:support@tstmedia.com)

User Authentication
-------------------
To access data that is not public or to create, update, or delete any data, the NGIN API expects an NGIN username and password to be sent with each request via HTTP Basic Authentication. This username and password is the same username and password that would be used to login to any NGIN website using a web browser. HTTP Basic Authentication is a standard authentication mechanism built-into HTTP. Refer to the following sources for more information:

* http://en.wikipedia.org/wiki/Basic_access_authentication
* http://tools.ietf.org/html/rfc1945
* http://tools.ietf.org/html/rfc2616
* http://tools.ietf.org/html/rfc2617