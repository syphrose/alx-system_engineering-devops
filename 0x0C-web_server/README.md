WEB SERVER

CHILD PROCESS:
A process created by other process called parent process.
The process can either start or stop at will without affecting the parent.
It is typically dependent on the parent ie if the parent dies it's an orphan.
In normal operations, the Kernel may initiate child processes & other programs ie Apache.
Apache creates child whenever the number of requests exceeds the max leading to spawning of another child.
To view all running processes along with their child processes in a “tree” format, use the following command:

/..$ ps axf../

In this project, some of the tasks will be graded on 2 aspects:

Is your web-01 server configured according to requirements
Does your answer file contain a Bash script that automatically performs commands to configure an Ubuntu machine to fit requirements (meaning without any human intervention)
For example, if I need to create a file /tmp/test containing the string hello world and modify the configuration of Nginx to listen on port 8080 instead of 80, I can use emacs on my server to create the file and to modify the Nginx configuration file /etc/nginx/sites-enabled/default.

Tips: to test your answer Bash script, feel free to reproduce the checker environment:

start a Ubuntu 16.04 sandbox
run your script on it
see how it behaves

Resources
Read or watch:

How the web works
Nginx
How to Configure Nginx
Child process concept page
Root and sub domain
HTTP requests
HTTP redirection
Not found HTTP response code
Logs files on Linux
For reference:

RFC 7231 (HTTP/1.1)
RFC 7540 (HTTP/2)

man or help:
scp
curl

Objectives
General
What is the main role of a web server
What is a child process
Why web servers usually have a parent process and child processes
What are the main HTTP requests

DNS
What DNS stands for
What is DNS main role

DNS Record Types
A
CNAME
TXT
MX
