$(document).ready(function () {
    $(".bar").click(function () {
        $(".side-bar").toggleClass("hide");
        $("header, .main-content").toggleClass("slide-left");
        $(".nav-link-custom, .nav-link-pack").toggle();

        if ($(".side-bar").hasClass("hide")) {
            $(".admin").hide();
        } else {
            $(".admin").show();
        }

    });

    $(".nav-link-custom").click(function () {
        $(".main-table").toggle(); // Toggle visibility of main table
        $(".custom-table").toggle(); // Toggle visibility of customization table
        $(".pack-table").hide(); // Hide packages table
    });


    $(".nav-link-pack").click(function () {
        $(".main-table").toggle(); // Toggle visibility of main table
        $(".custom-table").hide(); // Hide customization table
        $(".pack-table").toggle(); // Toggle visibility of packages table
    });


});


