$ = require 'jquery'

$(document).ready ->
# jquery uses html selectors to make creating functionality on your website easy

  $('form').on 'click', (e)->
    $(this).css 'background','red'


###

raphael = require 'raphael'

paper = raphael(10,50,500,1000)
circle1 = paper.circle(50,40,10)
circle1.attr "fill", "red"

circle2 = paper.circle(100,400,25)
circle2.attr "fill", "blue"

###
