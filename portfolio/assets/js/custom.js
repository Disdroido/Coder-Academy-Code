$('.btn').click(function() {
    $('html, body').animate({
        scrollTop: $( $.attr(this, 'href') ).offset().top-70
    }, 1000);
    return false;
});

$(document).ready(function() {
    var hero = $('.hero').offset();
    var about = $('section:nth-of-type(1)').offset();
    var projects = $('section:nth-of-type(2)').offset();
    var skills = $('section:nth-of-type(3)').offset();  
    var $window = $(window);
    
    $window.scroll(function() {
        if ( $window.scrollTop() >= hero.top) {
            $(".link1").removeClass("active");
        }
        if ( $window.scrollTop() >= hero.top) {
            $(".link2").removeClass("active");
        }
        if ( $window.scrollTop() >= hero.top) {
            $(".link3").removeClass("active");
        }
        if ( $window.scrollTop() >= about.top) {
            $(".link1").removeClass("active").addClass("active");
        }
        if ( $window.scrollTop() >= projects.top) {
            $(".link2").removeClass("active").addClass("active");
        }
        if ( $window.scrollTop() >= skills.top) {
            $(".link3").removeClass("active").addClass("active");
        }
    });			
});