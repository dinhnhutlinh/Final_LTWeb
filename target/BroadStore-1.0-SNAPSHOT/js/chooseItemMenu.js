$(document).ready(function () {
    $("#description").click(function () {
        $(this).addClass("active")
        $("#details").removeClass("active")
        $("#rating_pro").removeClass("active")
        $("#tab1").show();
        $("#tab2").hide();
        $("#tab3").hide();
    })

})