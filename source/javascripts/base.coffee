$ ->
  $('.carousel-indicators li').on 'click', ->
    $(this).addClass('active').siblings().removeClass('active')

  $('.first_slide_menu li').on 'click', ->
    $(this).addClass('first_slide_menu_active').siblings().removeClass('first_slide_menu_active')
    $(this).closest('#benefits_container').find('.phone_item_container').addClass('active_phone_item_container').siblings().removeClass('active_phone_item_container')
    value = $(@).data('value')

    if value == 0
      $('#first_slide_set_1').fadeIn(1000).siblings().hide()
      $('#first_slide_set_1 img').animate({'opacity': 1}, 200)
    if value == 1
      $('#first_slide_set_2').fadeIn(1000).siblings().hide()
      $('#first_slide_set_2 img').animate({'opacity': 1}, 200, ->
        $('#first_slide_set_2 img').animate({'margin-top': 15}, 1000)
      )
    if value == 2
      $('#first_slide_set_3').fadeIn(1000).siblings().hide()
      $('#first_slide_set_3 img').animate({'opacity': 1}, 200, ->
        $('#first_slide_set_3 img').animate({'margin-top': 15}, 1000)
      )

  $('.second_slide_menu li').on 'click', ->
    $(this).addClass('first_slide_menu_active').siblings().removeClass('first_slide_menu_active')
    $(this).closest('#benefits_container').find('.phone_item_container').addClass('active_phone_item_container').siblings().removeClass('active_phone_item_container')
    value = $(@).data('value')

    if value == 0
      $('.ipad_image_set_1').animate({'opacity': 1, left: 0;}, 900).siblings().css({'opacity': 0})
    if value == 1
      $('.ipad_image_set_2').animate({'opacity': 1, left: 0;}, 900).siblings().css({'opacity': 0})
    if value == 2
      $('.ipad_image_set_3').animate({'opacity': 1, left: 0;}, 900).siblings().css({'opacity': 0})
    if value == 3
      $('.ipad_image_set_4').animate({'opacity': 1, left: 0;}, 900).siblings().css({'opacity': 0})