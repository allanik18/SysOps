
SysOps Assignment 
========================

Technical Test
---------------
Implement deployment of 3 tier application, which would run on Ubuntu server 18.04 LTS. Would use Nginx, Postgres and Python code in consitent and repeatable way.  You would need to automate deployment of:
- Setup use of 10.0.0.2/18 static IP address, Netmask 255.255.0.0, gateway 10.0.0.1/18$
- Install Nginx, configure it to serve static pages and dynamic pages via FCGI (python application)
- Install PostgreSQL DBMS and create DB, user for DB, set users password.
- Install simple Python application wich would serve "Hello World!" via FCGI.
- Make sure all your changes are persistent after reboot.

Technical details
-------------------
- The combination of uWSGI with Nginx is a common way to deploy Python web applications.
- The Docker image allows you to create Python web applications that run with uWSGI and Nginx in a single container.
- Git Hooks will start the process of rebuilding / restarting our applications. 

Requirements
-------------
- Install docker
- Install docker-compose
- Setting up Push-to-Deploy with Git
- Run  setupCI.sh on VM 
  

Related articles
------------------
Python на nginx с использованием fcgiwrap

http://qaru.site/questions/1477937/python-on-nginx-using-fcgiwrap-upstream-closed-prematurely-fastcgi-stdout-while-reading-response-header-from-upstream

Sample app

https://github.com/tiangolo/uwsgi-nginx-docker/blob/master/python3.7-alpine3.9/Dockerfile

Setting up Push-to-Deploy with git

https://krisjordan.com/blog/2013/11/02/push-to-deploy-with-git

Markdown syntax

https://www.markdownguide.org/basic-syntax/