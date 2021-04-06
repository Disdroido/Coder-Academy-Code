// $('.btn').click(function() {
//     $('html, body').animate({
//         scrollTop: $( $.attr(this, 'href') ).offset().top-70
//     }, 1000);
//     return false;
// });

// $(function() {
//     $(".btn").click(function() {
//        // remove classes from all
//        $(".btn").removeClass("active");
//        // add class to the one we clicked
//        $(this).addClass("active");
//     });
//  });

$(document).ready(function () {
    $(document).on("scroll", onScroll);

    //smoothscroll
    $('.btn').on('click', function (e) {
        e.preventDefault();
        $(document).off("scroll");

        $('.btn').each(function () {
            $(this).removeClass('active');
        })
        $(this).addClass('active');

        var target = this.hash,
            menu = target;
        $target = $(target);
        $('html, body').stop().animate({
            'scrollTop': $target.offset().top+2
        }, 500, 'swing', function () {
            window.location.hash = target;
            $(document).on("scroll", onScroll);
        });
    });
});

// Use Your Class or ID For Selection 

function onScroll(event){
    var scrollPos = $(document).scrollTop();
    $('.navbar a').each(function () {
        var currLink = $(this);
        var refElement = $(currLink.attr("href"));
        if (refElement.position().top <= scrollPos && refElement.position().top + refElement.height() > scrollPos) {
            $('.navbar ul li a').removeClass("active");
            currLink.addClass("active");
        }
        else{
            currLink.removeClass("active");
        }
    });
}