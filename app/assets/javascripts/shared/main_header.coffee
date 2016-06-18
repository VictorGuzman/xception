@changeNavbarOnScroll = ->
  navOffset = $('#landing').offset().top

  $(document).scroll ->
    if $(this).scrollTop() > navOffset
      removeNavGradient($('#main-navbar'))
    else
      addNavGradient($('#main-navbar'))

@changeNavbarOnMobileClick = ->
  $('#nav-sm-btn').click ->
    if $(this).hasClass('collapsed')
      removeNavGradient($('#main-navbar'))
    else
      unless $(document).scrollTop() > $('#landing').offset().top
        addNavGradient($('#main-navbar'))

# Removes a gradient class to a nav element.
#
# @navElement
#
removeNavGradient = (navElement) ->
  navElement.switchClass('nav-bar-gradient-bg', '', 350,
    'easeInOutQuad')

# Adds a gradient class to a nav element.
#
# @navElement
#
addNavGradient = (navElement) ->
  $('#main-navbar').switchClass('', 'nav-bar-gradient-bg', 350,
    'easeInOutQuad')
