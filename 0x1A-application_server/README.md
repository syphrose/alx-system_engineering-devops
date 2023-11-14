APPLICATION SERVER

Comparison between Web Server and App Server

* Web Server
A web server‘s fundamental job is to accept and fulfill requests from clients for static content from a website (HTML pages, files, images, video, and so on). The client is almost always a browser or mobile application and the request takes the form of a Hypertext Transfer Protocol (HTTP) message, as does the web server’s response.

* Application Server
An application server’s fundamental job is to provide its clients with access to what is commonly called business logic, which generates dynamic content; that is, it’s code that transforms data to provide the specialized functionality offered by a business, service, or application.
    An application server’s clients are often applications themselves, and can include web servers and other application servers. Communication between the application server and its clients might take the form of HTTP messages, but that is not required as it is for communication between web servers and their clients. Many other protocols are popular, including the variants of CGI.

* Co-relation between the two
  In a typical deployment, a website that provides both static and dynamically generated content runs web servers for the static content and application servers to generate content dynamically.
	A reverse proxy and load balancer sit in front of one or more web servers and one or more web application servers to route traffic to the appropriate server, first based on the type of content requested and then based on the configured load-balancing algorithm. Most load balancer programs are also reverse proxy servers, which simplifies web application server architecture.

GUNICORN
Green Unicorn is a Python WSGI HTTP Server for UNIX. It’s a pre-fork worker model ported from Ruby’s Unicorn project. The Gunicorn server is broadly compatible with various web frameworks, simply implemented, light on server resources, and fairly speedy.

FEATURES
 ~ Natively supports WSGI, Django, and Paster
 ~ Automatic worker process management
 ~ Simple Python configuration
 ~ Multiple worker configurations
 ~ Various server hooks for extensibility
 ~ Compatible with Python 3.x >= 3.5

You can run Gunicorn by using commands or integrate with popular frameworks like Django, Pyramid, or TurboGears.
$ gunicorn --workers=2 test:app

Commonly Used Arguments
	-c CONFIG, --config=CONFIG - Specify a config file in the form $(PATH), file:$(PATH), or python:$(MODULE_NAME).

	-b BIND, --bind=BIND - Specify a server socket to bind. Server sockets can be any of $(HOST), $(HOST):$(PORT), fd://$(FD), or unix:$(PATH). An IP is a valid $(HOST).

	-w WORKERS, --workers=WORKERS - The number of worker processes. This number should generally be between 2-4 workers per core in the server. Check the FAQ for ideas on tuning this parameter.

	-k WORKERCLASS, --worker-class=WORKERCLASS - The type of worker process to run. You’ll definitely want to read the production page for the implications of this parameter. You can set this to $(NAME) where $(NAME) is one of sync, eventlet, gevent, tornado, gthread. sync is the default. See the worker_class documentation for more information.

	-n APP_NAME, --name=APP_NAME - If setproctitle is installed you can adjust the name of Gunicorn process as they appear in the process system table (which affects tools like ps and top).
