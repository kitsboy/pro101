###
This is a module:
###
express = require 'express'
###
modules hold a bunch of related functions.
###
###
For Example the express module creates a web server:
###
WebServer = express()

port=3456
WebServer.listen port, ->
  console.log "listening at #{port}"
  WebServer.get '/' , (req,res)->
    res.send index

  WebServer.get '/' , (req,res)->
    res.send index


###
This is as simpe as a webserver gets. Listen on a local port, return a string
when there is a get request.

Websites are served in another programming language called HTML.

Coffeekup is a module that turns coffeescript into a templating language
It converts (renders) HTML from a coffeescript function.
Lets try and serve some HTML instead of a string:
###

ck = require 'coffeekup'
# Coffeekup converts coffeescript to HTML
html = ->
  link
    rel:'stylesheet'
    href:"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
  div ".container", ->
    h1 "Hello World in a BROWSER"
    form ->
      label "Name"
      input type:'text', class:"form-control"
      label 'Birthdate'
      input type:'date', class:"form-control"
      label 'Seeking'
      select class:"form-control" , ->
        option 'Male'
        option 'Female'
        option 'Cats'
      input type:"submit"
    i = 0
    while i<10000
      span "#{i} "
      i++
  script src:'bundle.js', type:'text/javascript'
  style """
    html div {color:yellow;background:green;}
    span {color:white; background:black;}
    input {color:black;}
    """
### to server the script file we need to tell our
WebServer where to look: ###

WebServer.use(express.static 'public')
index = ck.render html
