# $ ->
#   $("#grid-container").imagesLoaded ->
#     $("#grid-container").gridalicious
#       gutter: 0
#       width: 350
#       selector: ".box"
#       animate: true
#
$ ->
 $(".post").hover ->
   $(@).find(".title").stop(true,true).velocity
    colorBlue: 255
    ,
      duration: 250
  , ->
   $(@).find(".title").stop(true,true).velocity
    colorBlue: 0
