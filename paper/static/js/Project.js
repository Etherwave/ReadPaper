$(function () {
    // 点击展开
    $(".Open_all_papers").click(function () {
        var Papers = document.getElementById("Papers");
        var tag_a = Papers.getElementsByTagName("a");
        for (var i=0;i<tag_a.length;i++)
        {
            window.open(tag_a[i].href);
        }
    });
});

