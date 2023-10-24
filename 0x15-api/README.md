API

Background Context

Old-school system administrators usually only know Bash and that is what they use to build their scripts. While Bash is perfectly fine for a lot of things, it can quickly get messy and not efficient compared to other programming languages. The new generation of system administrators, usually called SREs, are pretty much regular software engineers but instead of building products, they are managing systems. And one of the big differences with their predecessors is that they know more than just Bash scripting.

One popular way to expose an application and dataset is to use an API. Often, they are the public facing part of websites and micro-services so that allow outsiders to interact with them – access and modify their data. In this project, you will access employee data via an API to organize and export them to different data structures.

This is a perfect example of a task that is not suited for Bash scripting, so let’s build Python scripts.

An application program interface (API) is a set of routines, protocols, and tools for building software applications. Basically, an API specifies how software components should interact. Additionally, APIs are used when programming graphical user interface (GUI) components. A good API makes it easier to develop a program by providing all the building blocks. A programmer then puts the blocks together.

REST API

REST is an acronym for Representational State Transfer — an almost meaningless description of the most-used web service technology! A REST API is a way for two computer systems to communicate using the HTTP technologies found in web browsers and servers.

MICROSERVICE ARCHITECTURE

A distinctive method of developing software systems that tries to focus on building single-function modules with well-defined interfaces and operations.

Benefits of Microservices

* Simpler to deploy

Deploy in literal pieces without affecting other services.

* Simpler to understand

Code is easier to follow since the function is isolated and less dependent.

* Reusable across business

Share small services like payment or login systems across the business.

* Faster defect isolation

When a test fails or service goes down, isolate it quickly.

* Minimized risk from change

Avoid locking in technologies or languages - change on the fly with minimal risk.

Characteristics of Microservices

a) Multiple Components
It can be broken down into multiple component services. Why? So that each service can be deployed, tweaked, and redeployed independently without compromising the integrity of an application. 

b) Built For Business
The microservices style is usually organized around business capabilities and priorities. Unlike a traditional monolithic development approach – where different teams each have a specific focus on, say, UIs, databases, technology layers, or server-side logic – microservice architecture utilizes cross-functional teams.

c) Simple Routing
Microservices act somewhat like the classical UNIX system: they receive requests, process them, and generate a response accordingly. This is the opposite to how many other products such, as ESBs (Enterprise Service Buses) work. That’s where high-tech systems for message routing, choreography, and applying business rules are utilized. You could say that microservices have smart endpoints that process information and apply logic, and “dumb pipes” through which the info flows.

d) Decentralized
The microservices community favors decentralized governance so its developers can produce tools that can be used by others to solve the same problems. Just like decentralized governance, microservice architecture favors decentralized data management. Monolithic systems use a single logical database across different applications. In a microservice application, each service usually manages its unique database.

e) Failure Resistant
Like a well-rounded child, microservices are designed to cope with failure. Since several diverse services communicate, it’s quite possible that a service could fail (e.g., when the supplier isn’t available). In these instances, the client should allow its neighboring services to function while it gracefully bows out.

f) Evolutionary
It’s an evolutionary design and, again, is ideal for evolutionary systems where you can’t fully anticipate what future devices will access your application. Many applications start based on monolithic architecture, but as several unforeseen requirements surfaced, can be slowly revamped to microservices that interact over an older monolithic architecture through APIs.


Microservice Pros and Cons
 
PROS
Gives developers the freedom to independently develop and deploy services
Can be developed by a fairly small team
Code for different services can be written in different languages (though many practitioners discourage it)
Easy integration and automatic deployment (using open-source continuous integration tools such as Jenkins, Hudson, etc.)
Easy to understand and modify for developers, thus can help a new team member become productive quickly
Developers can make use of the latest technologies
The code is organized around business capabilities
Starts the web container more quickly, so the deployment is also faster
When change is required in a certain part of the application, only the related service can be modified and redeployed – no need to modify and redeploy the entire application
Better fault isolation: if one microservice fails, the other will continue to work (although one problematic area of a monolith application can jeopardize the entire system)
Easy to scale and integrate with third-party services
No long-term commitment to technology stack

CONS
Due to distributed deployment, testing can become complicated and tedious – and often hinders some of the scaling benefits of microservices
Increasing number of services can result in information barriers
Additional complexity as the developers mitigate fault tolerance, network latency, and a variety of message formats as well as load balancing
Being a distributed system, it can result in duplication of effort
When number of services increases, integration and managing whole products can become complicated
Developers have to deal with the additional complexity of a distributed system
Developers have to implement a mechanism of communication between the services
Handling use cases that span more than one service without using distributed transactions is not only tough, it requires cooperation between different teams
