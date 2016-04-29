some common http status codes:
	200 - ok!
	307 - internal redirect
	404 - file not found
	204 - no content

	http://www.restapitutorial.com/httpstatuscodes.html
	this website laid out a lot of info, mostly about what each series of codes represents.  they say:
	1xx - informational
	2xx - success
	3xx - redirection
	4xx - client error (errors 404(not found), 403(forbidden) etc)
	5xx - server error (500 internal server error)

GET and POST requests
	literally as they state, GET requests pull information from a remote server, and POST requests send info to the server from the client. 
	you would use a GET request most of the time, because that's what surfing we web really is; a bunch of Get requests for pages that link to other pages that you get to by GET requests.
	a POST request would be when you needed to upload a file or a picture to your instagram, or make a status update on facebook.  That is where you are sending data to the remote server.

Cookies
	cookies are bits of info about your login preferences, what's in your cart for e-commerce websites, or user preferences.  they are stored locally by the browser and read and sent to the server whenever that webpage is requested.  they can alter the way you interact with the website, by either remembering your login info so you don't have to, or by bringing up clothes or TVs you looked at but didn't buy.