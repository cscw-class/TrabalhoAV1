$(document).ready(function() {
    $(document).scroll(function(){
        var topWindow = $(window).scrollTop();
        if(topWindow > 60) {
            $(".navbar-principal").addClass('header_fixed');
        }else {
            $(".navbar-principal").removeClass('header_fixed');
        };
    });

    //sidebar
    // $('#sidebarCollapse').on('click', function () {
    //     $('#sidebar').toggleClass('active');
    // });
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
        $(".menu-toggle").toggleClass("rodar");
    });

});