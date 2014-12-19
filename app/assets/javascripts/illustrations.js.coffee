# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#

$ ->
  $("#kit-logo").css "display", "none"
  $("#spinner").css "display", "block"
  $("#spinner").velocity
    rotateZ: "360deg"
    ,
      loop: true

$ ->
  $("#grid-container").imagesLoaded ->
    $("#kit-logo").css "display", "block"
    $("#spinner").css "display", "none"
    $("#grid-container").gridalicious
      width: 300
      selector: ".box"
      animate: true
