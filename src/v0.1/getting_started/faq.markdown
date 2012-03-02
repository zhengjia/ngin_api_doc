NGIN API FAQ
============

FAQ 1 URI-Template
------------------
[URI-Template](http://datatracker.ietf.org/doc/draft-gregorio-uritemplate/?include_text=1) is used for all URIs.

FAQ 2 Request Parameter
-----------------------
The NGIN API accepts request parameters following [Rails parameter convention](http://guides.rubyonrails.org/action_controller_overview.html#parameters). 

There are two kinds of parameters possible in a web application. The first are parameters that are sent as part of the URL, called query string parameters. The query string is everything after “?” in the URL. The second type of parameter is usually referred to as POST data. This information usually comes from an HTML form which has been filled in by the user. It’s called POST data because it can only be sent as part of an HTTP POST request. 

The params hash is not limited to one-dimensional keys and values. It can contain arrays and (nested) hashes. To send an array of values, append an empty pair of square brackets “[]” to the key name:

    GET /clients?ids[]=1&ids[]=2&ids[]=3
    
The value of params[:ids] will now be ["1", "2", "3"]. Note that parameter values are always strings; Rails makes no attempt to guess or cast the type.    