$ ->
  $('.carousel-indicators li').on 'click', ->
    $(this).addClass('active').siblings().removeClass('active')

  $('.first_slide_menu li').on 'click', ->
    $(this).addClass('first_slide_menu_active').siblings().removeClass('first_slide_menu_active')
    $(this).closest('#benefits_container').find('.phone_item_container').addClass('active_phone_item_container').siblings().removeClass('active_phone_item_container')
    value = $(@).data('value')

    if value == 0
      $('.first_phone').addClass('active_phone_item_container')
    if value == 1
      $('.second_phone').addClass('active_phone_item_container')
    if value == 2
      $('.third_phone').addClass('active_phone_item_container')