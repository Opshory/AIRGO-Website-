$(document).ready(function () {

    $(".settings-symbol").click(function (e) {
        $(".settings-dropdown").fadeToggle();
        e.stopImmediatePropagation();
    });
    $('html').click(function (e) {
        if ($(".settings-dropdown").is(":visible") && !$("div").is(e.target)) {
            $(".settings-dropdown").fadeOut("fast");
        }
    });
});