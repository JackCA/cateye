
$ ->


  index = ->
    wow = new WOW

    $('#logo').on 'transitionend webkitTransitionEnd oTransitionEnd otransitionend MSTransitionEnd', ->
      wow.init()

    $('#logo').addClass('present')
    $('nav li').bigtext()

    setTimeout(->
      $(window).trigger('resize')
    , 1)


    $('#illustration-link').one 'click', ->
      $('nav li a').attr('class', '')
      $('nav li').removeClass('will-animate')
      $('nav li').removeClass('bigtext')
      $('nav li').removeClass('wow')
      $('body').animate({ scrollTop: 0 }, "slow")
      $('nav').hide()

      page('/illustrations')

      setTimeout ->
        $('nav').show()
      , 100
      return false


  illustrations = ->
    $('#logo').addClass('present')
    $('body').addClass('gallery')
    $('nav li').addClass('animated')

  page '/', index
  page '/illustrations', illustrations
  page()
