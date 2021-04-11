$(function() {
    //caches a jQuery object containing the header element
    var header = $("nav");
    $(window).scroll(function() {
        var scroll = $(window).scrollTop();

        if (scroll >= 70) {
            header.removeClass('background-trans').addClass("background-default");
        } else {
            header.removeClass("background-default").addClass('background-trans');
        }
    });
});

$('.btn').click(function() {
    $('html, body').animate({
        scrollTop: $( $.attr(this, 'href') ).offset().top-70
    }, 1000);
    return false;
});

$('.contact-form').find('.form-control').each(function() {
    var targetItem = $(this).parent();
    if ($(this).val()) {
    $(targetItem).find('label').css({
        'top': '10px',
        'fontSize': '14px'
    });
    }
})
$('.contact-form').find('.form-control').focus(function() {
    $(this).parent('.input-block').addClass('focus');
    $(this).parent().find('label').animate({
    'top': '10px',
    'fontSize': '14px'
    }, 300);
})
$('.contact-form').find('.form-control').blur(function() {
    if ($(this).val().length == 0) {
    $(this).parent('.input-block').removeClass('focus');
    $(this).parent().find('label').animate({
        'top': '25px',
        'fontSize': '18px'
    }, 300);
    }
});