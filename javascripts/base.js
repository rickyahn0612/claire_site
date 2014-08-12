(function() {
  $(function() {
    $(".carousel").carousel({
      interval: false
    });
    $('.carousel-indicators li').on('click', function() {
      return $(this).addClass('active').siblings().removeClass('active');
    });
    $('.ipad_image_set_1').animate({
      'opacity': 1
    }, 900).siblings().css({
      'opacity': 0
    }).stop();
    $('#first_slide_set_1').fadeIn(1000).siblings().hide();
    $('#first_slide_set_1 img').animate({
      'opacity': 1,
      'margin-top': 15
    }, 1000);
    $('.first_slide_menu li').on('click', function() {
      var value;
      $(this).addClass('first_slide_menu_active').siblings().removeClass('first_slide_menu_active');
      $(this).closest('#benefits_container').find('.phone_item_container').addClass('active_phone_item_container').siblings().removeClass('active_phone_item_container');
      value = $(this).data('value');
      if (value === 0) {
        $('#first_slide_set_1').fadeIn(1000).siblings().hide().stop();
        $('#first_slide_set_1 img').animate({
          'opacity': 1,
          'margin-top': 15
        }, 1000);
      } else {
        $('#first_slide_set_1').removeAttr("style");
        $('#first_slide_set_1 img').removeAttr("style");
      }
      if (value === 1) {
        $('#first_slide_set_2').fadeIn(1000).siblings().hide();
        $('#first_slide_set_2 img').animate({
          'opacity': 1,
          'margin-top': 15
        }, 1000);
      } else {
        $('#first_slide_set_2').removeAttr("style");
        $('#first_slide_set_2 img').removeAttr("style");
      }
      if (value === 2) {
        $('#first_slide_set_3').fadeIn(1000).siblings().hide();
        return $('#first_slide_set_3 img').animate({
          'opacity': 1,
          'margin-top': 15
        }, 1000);
      } else {
        $('#first_slide_set_3').removeAttr("style");
        return $('#first_slide_set_3 img').removeAttr("style");
      }
    });
    return $('.second_slide_menu li').on('click', function() {
      var value;
      $(this).addClass('first_slide_menu_active').siblings().removeClass('first_slide_menu_active');
      $(this).closest('#benefits_container').find('.phone_item_container').addClass('active_phone_item_container').siblings().removeClass('active_phone_item_container');
      value = $(this).data('value');
      if (value === 0) {
        $('.ipad_image_set_1').animate({
          'opacity': 1
        }, 900).siblings().css({
          'opacity': 0
        }).stop();
      }
      if (value === 1) {
        $('.ipad_image_set_2').animate({
          'opacity': 1
        }, 900).siblings().css({
          'opacity': 0
        }).stop();
      }
      if (value === 2) {
        $('.ipad_image_set_3').animate({
          'opacity': 1
        }, 900).siblings().css({
          'opacity': 0
        }).stop();
      }
      if (value === 3) {
        return $('.ipad_image_set_4').animate({
          'opacity': 1
        }, 900).siblings().css({
          'opacity': 0
        }).stop();
      }
    });
  });

}).call(this);
