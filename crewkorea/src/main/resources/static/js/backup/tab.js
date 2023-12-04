jQuery(document).ready(function () {
    jQuery("div#tabContent" + "4").fadeIn("fast");

    jQuery("li.tabControlMenu").mouseover(function () {
        var id = jQuery(this).attr("id").replace("m", "");
        jQuery("li.tabControlMenu").attr("selected", "false");
        jQuery("li.tabControlMenu").removeClass("selectedMenu");
        jQuery(this).attr("selected", "true");
        jQuery(this).addClass("selectedMenu");
        jQuery("div.tabContent").each(function () {
            jQuery(this).css("display", "none");
        });
        jQuery("div#tabContent" + id).show();
    });

    //review best 5 - tab
    jQuery("div#tab_best" + "1").show();

    jQuery("li.tab_bestMenu").mouseover(function () {
        var id = jQuery(this).attr("id").replace("n", "");
        jQuery("li.tab_bestMenu").attr("selected", "false");
        jQuery("li.tab_bestMenu").removeClass("selectedMenu");
        jQuery(this).attr("selected", "true");
        jQuery("div.tab_best").each(function () {
            jQuery(this).css("display", "none");
        });
        jQuery("#tab_best" + id).show();

        MainTabImageAllON();
        var jQueryimg = jQuery(this).find("img");
        var imgUrl = jQueryimg.attr("src");
        imgUrl = imgUrl.replace("_off", "_on");
        jQueryimg.attr("src", imgUrl);
        $("#best_link").attr("href", jQuery(this).find("a").attr("href"));
    });

    jQuery("div.subTabContent").show();

});


function MainTabImageAllON() {

    jQuery("ul.tab_bestMenuHead img").each(function () {
        var jQueryimg = jQuery( this );
        var imgUrl = jQueryimg.attr( "src" );
        imgUrl = imgUrl.replace("_on", "_off");
        jQueryimg.attr( "src", imgUrl );
    });
}
 