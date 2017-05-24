# HTTP QUESTIONS

1. What are some common HTTP status codes?
  * 404 Not Found. Is the most common error code.
  * 403 Forbidden. A code you will get if you the server does not have a certificate to access the site.  This is more times than not a client-side code.
  * 500 Internal Server Error.  When none of the other 500 codes make sense this one is shown.  This is a server-side code.

2. What is the difference between a GET request and a POST request? When might each be used?
  * A GET request is when the client requests data from the server.  GET requests can be cached, stay in your browser history, get bookmarked, etc.
  * A POST request is when the client submits data to the server.  POST requests are not cached, don't show up in browser history, and cannot be bookmarked.  They are generally more secure than GET requests.

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
  * A HTTP cookie is a small piece of data that the server passes to the user's web browser.  This allows for session management (i.e. shopping carts), personalization (user preferences), and tracking (figuring out user behavior)