$ ->
  $('.carousel-indicators li').on 'click', ->
    $('.active_menu_bar').removeClass('active_menu_bar')
    $(this).addClass('active_menu_bar') 

  $('.first_slide_menu li').on 'click', ->
    $('.first_slide_menu_active').removeClass('first_slide_menu_active')
    $(this).addClass('first_slide_menu_active') 