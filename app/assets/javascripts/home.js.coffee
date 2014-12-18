$ ->
  $("#grid-container").gridalicious
    width: 300
    selector: ".box"
    animate: true

$ ->
 if $(".link").css('display') == "none"
   $hidden = true
 $(".fade-in").velocity "transition.slideUpIn",
  stagger: 250

 $(".glyphicon").hover ->
   $(@).stop(true,true).velocity
     opacity: 1
     ,
       duration: 100
  , ->
   $(@).stop(true,true).velocity
     opacity: .5
     ,
       duration: 100

 $(".glyphicon").click ->
   if $hidden
     $hidden = false
     $(@).closest(".link-bar").find(".glyphicon-chevron-down").velocity "transition.flipYOut",
      duration: 50
     $(@).closest(".link-bar").find(".glyphicon-chevron-up").velocity "transition.slideDownIn",
      duration: 250
     $(".link").velocity "transition.slideDownIn",
       stagger: 65,
       duration: 100,
       drag: true
   else
     $hidden = true
     $(@).closest(".link-bar").find(".glyphicon-chevron-up").velocity "transition.flipYOut",
      duration: 50
     $(@).closest(".link-bar").find(".glyphicon-chevron-down").velocity "transition.slideUpIn",
      duration: 250
     $(".link").velocity "transition.slideUpOut",
       duration: 100,
       drag: true


 $(".post").hover ->
   $(@).find(".title").stop(true,true).velocity
  , ->
   $(@).find(".title").stop(true,true).velocity
