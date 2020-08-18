$(function () {
    // 点击展开
    $(".left_button").click(function () {

        if($(".MySidebar").hasClass("retract"))
        {
            $(".MySidebar").removeClass("retract");
        }
        else
        {
            $(".MySidebar").addClass("retract");
        }
    });
});

