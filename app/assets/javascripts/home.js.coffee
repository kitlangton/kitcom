$ ->
  $("#grid-container").imagesLoaded ->
    $("#loading-text").fadeOut()
    $("#grid-container").gridalicious
      gutter: 0
      width: 350
      selector: ".box"
      animate: true
