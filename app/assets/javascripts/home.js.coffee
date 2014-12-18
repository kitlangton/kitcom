
$ ->
 if $(".link").css('display') == "none"
   $hidden = true
 $(".post").velocity "transition.slideUpIn",
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
    colorBlue: 150
    colorGreen: 50
    ,
      duration: 150
  , ->
   $(@).find(".title").stop(true,true).velocity
    colorBlue: 0
    colorGreen: 0
    ,
      duration: 150
