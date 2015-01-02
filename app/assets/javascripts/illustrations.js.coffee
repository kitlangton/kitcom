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
    selector: ".item"
    animate: true
    width: 250

  onProgress = (instance, image) ->
    newitem= $(image.img).parent()
    $("#grid-container").gridalicious 'append', newitem
    # $('#grid-container').isotope
    #   layoutMode: "masonry"
    #   masonry:
    #       gutter: 0
    #       itemSelector: ".item"
    #       columnWidth: 3

  $("#hidden-images").imagesLoaded().progress onProgress

  $("#hidden-images").imagesLoaded ->
    stopLoading()

  # $('#hidden-images').imagesLoaded ->
  #   $('#grid-container').isotope
  #     layoutMode: "masonry"
  #     masonry:
  #         gutter: 0
  #         itemSelector: ".item"
  #         columnWidth: 3
  #   stopLoading()

  # $("#hidden-images").imagesLoaded ->
  #
  # onProgress = (imgLoad, image) ->
  #   $('#grid-container').gridalicious 'prepend', image
  #   return
  #
  # $('#hidden-images').imagesLoaded().progress onProgress

  # $("#hidden-images").imagesLoaded().always((instance) ->
  #   stopLoading()
  # ).progress (instance, image) ->
  #   alert image.img.src
  #   $('#grid-container').isotope 'insert', [image]
  #   return

  # $('#grid-container').imagesLoaded ->
  #   $("#spinner").css "display", "none"
  #   $("#kit-logo").css "display", "block"

  #   $("#grid-container").gridalicious
  #     width: 300
  #     selector: ".box"
  #     animate: true
  #
