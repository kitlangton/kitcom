$ ->
  $(".flip").blast
    delimiter: "word"
    customClass: "flipper"
  $(".dialogue").blast
    delimiter: "sentence"
    customClass: "bdialogue"
  $(".bdialogue").css "display", "none"
  $(".flipper").css "display", "none"
  $(".name").css "display", "none"
  $(".name-is").css "display", "none"

  $(".hello").velocity "transition.slideDownIn",
    stagger: 50
    drag: true
  $(".name-is").velocity "transition.slideLeftIn",
    delay: 500
    stagger: 50
    drag: true
  $(".name").velocity "transition.shrinkIn",
    delay: 500
    stagger: 50
    drag: true
  $(".flipper").velocity "transition.flipBounceXIn",
    delay: 1500
    stagger: 90
    drag: true
  $(".bdialogue").velocity "transition.shrinkIn",
    delay: 2000
    stagger: 2000
    drag: true
  $("#blurry-me").velocity "transition.shrinkIn",
    delay: 11000
    stagger: 2000
    drag: true
  $(".everything").velocity "transition.slideUpOut",
    delay: 21000
    duration: 50
  $(".hide-mail").velocity "transition.slideUpIn",
    delay: 21100


