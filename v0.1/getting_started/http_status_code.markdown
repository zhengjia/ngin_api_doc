We return the following status code that can be used for debugging. Along with the status code, we supply a simple string to describe the error

**200** OK - Successful HTTP requests

**401** Unauthorized - The username password combination is incorrect, or API token is invalid

**403** Forbidden - Often failing the validation on a resource

**404** Not Found - The requested resource doesn't exist

**412** Precondition Failed - The request parameter is incorrect or missing

**422**	Unprocessable Entity - Request unable to be processed due to semantic errors

**500** Application error - Something went wrong on the server