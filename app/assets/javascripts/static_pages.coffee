$(document).ready ->
  navOffset = $('#landing').offset().top

  $(document).scroll ->
    if $(this).scrollTop() > navOffset
      $('#main-navbar').switchClass('nav-bar-gradient-bg', '', 350,
        'easeInOutQuad')
    else
      $('#main-navbar').switchClass('', 'nav-bar-gradient-bg', 350,
        'easeInOutQuad')
