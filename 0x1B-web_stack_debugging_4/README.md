### WEB STACK DEBUGGING -V4
----------------------------------------------------------------------------
### Project Description
--------------------------------------------------------------------
In this web stack debugging task, we are testing how well our web server setup featuring Nginx is doing under pressure and it turns out it’s not doing well: we are getting a huge amount of failed requests.

For the benchmarking, we are using ApacheBench which is a quite popular tool in the industry. It allows you to simulate HTTP requests to a web server. In this case, I will make 2000 requests to my server with 100 requests at a time. We can see that 943 requests failed, let’s fix our stack so that we get to 0, and remember that when something is going wrong, logs are your best friends!

-------------------------------------------------------------------

### Installation
-------------------------------------------------------------------
In order to access this project, you have to run the following command in the console:

```shell
  https://github.com/syphrose/alx-system_engineering-devops.git 
then cd to 0x1B-web_stack_debugging_4
```

Install puppet-lint
 Run the following commands:

$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1
---------------------------------------------------------

### Contributions
--------------------------------------
If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement". Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (git checkout -b feature/AmazingFeature)
3. Commit your Changes (git commit -m 'Add some AmazingFeature')
4. Push to the Branch (git push origin feature/AmazingFeature)
5. Open a Pull Request
