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
      easing: "linear"


  stopLoading = ->
    $("#spinner").css "display", "none"
    $("#kit-logo").css "display", "block"

  $('#grid-container').gridalicious
    width: 300
    selector: ".hidden-image"
    animate: true
    animationOptions:
      speed: 200
      duration: 300

  $("#grid-container").imagesLoaded().always ->
    stopLoading()

  # onProgress = (imgLoad, image) ->
  #   $('#grid-container').gridalicious 'prepend', image
  #   return
  #
  # $('#hidden-images').imagesLoaded().progress onProgress

  # $('#grid-container').imagesLoaded ->
  #   $("#spinner").css "display", "none"
  #   $("#kit-logo").css "display", "block"

  #   $("#grid-container").gridalicious
  #     width: 300
  #     selector: ".box"
  #     animate: true
  #
