
jQuery(document).ready(function () {
    var url = location.href;
    var index = url.indexOf("/product/view/");
    // 현재페이지가 상품상세보기 페이지일 경우의 처리
    if (index > 0) {
        var productIndex = url.split("/product/view/")[1].split("?")[0].split("#")[0];
        SetItem(productIndex);
    }

    LoadItems();

    // 페이저 버튼 호버처리
    jQuery("img.q-page-btn").hover(function () {
        var url = jQuery(this).attr("src");
        jQuery(this).attr("src", url.replace(".gif", "_ov.gif"));
    }, function () {
        var url = jQuery(this).attr("src");
        jQuery(this).attr("src", url.replace("_ov.gif", ".gif"));
    });
});

// 현재 상품인덱스에 대한 오늘본 상품리스트 처리
function SetItem(pid) {
    var imageUrl = jQuery("#quick-menu-img").val();
    if (jQuery.cookie("cocsProducts") == null) {
        var ni = { index: pid, url: imageUrl };
        var nis = { data: [], seq: 1 };
        nis.data.push(ni);
        nis.day = new Date().getDay();
        jQuery.cookie("cocsProducts", JSON.stringify(nis), { expires: 1, path: "/" });
    }
    else {
        var ois = jQuery.parseJSON(jQuery.cookie("cocsProducts"));
        var hasItem = false;
        for (var i = 0; i < ois.data.length; i++) {
            if (ois.data[i].index == pid) {
                hasItem = true;
                break;
            }
        }

        if (!hasItem) {
            var oi = { index: pid, url: imageUrl };
            ois.data.push(oi);
            ois.day = new Date().getDay();
            jQuery.cookie("cocsProducts", JSON.stringify(ois), { expires: 1, path: "/" });
        }
    }

}

function InStr(strSearch, charSearchFor) {
    var sLen = charSearchFor.length;
    if (typeof strSearch != "undefined")
    {
        for (i = 0; i < strSearch.length; i++) {
            if (charSearchFor == strSearch.substring(i, i + sLen)) {
                return i;
            }
        }
    }
    
    return -1;
};

// 저장된 오늘본상품 읽어오기
//function LoadItems() {
//    try {
//        if (jQuery.cookie("cocsProducts")) {
//            var pdts = jQuery.parseJSON(jQuery.cookie("cocsProducts"));

//            if (pdts.day == null || pdts.day != new Date().getDay()) {
//                jQuery.cookie("cocsProducts", null, { expires: 1, path: "/" });
//                return;
//            }

//            if (pdts != null) {
//                jQuery("#qm-products-count").text(pdts.data.length);
//                var jQuerylink = jQuery("#quick_new .quick-link");
//                var jQueryimg = jQuery("#quick_new .quick-img");
//                var add = 0;
//                if (pdts.data.length % 2 != 0) {
//                    for (var i = 0; i < 2; i++) {
//                        var cr = pdts.data[pdts.data.length + i - 1];

//                        if (cr != null) {
//                            var home = '/product/view/{0}';
//                            if (InStr(cr.url, 'http://') >= 0) {
//                                home = '';
//                            }
//                            jQuerylink.eq(i).attr("href", '/product/view/{0}'.format(cr.index));
//                            jQueryimg.eq(i).attr("src", cr.url);
//                        }
//                        else {
//                            jQuerylink.eq(i).attr("href", "");
//                            jQueryimg.eq(i).attr("src", "../../Content/images/main_new/quick_today_prd.png");
//                        }
//                    }
//                }
//                else {
//                    for (var i = 0; i < 2; i++) {
//                        var cr = pdts.data[pdts.data.length + i - 2];
//                        if (cr != null) {
//                            var home = '/product/view/{0}';
//                            if (InStr(cr.url, 'http://') >= 0) {
//                                home = '';
//                            }
//                            jQuerylink.eq(i).attr("href", '/product/view/{0}'.format(cr.index));
//                            jQueryimg.eq(i).attr("src", cr.url);
//                        }
//                        else {
//                            jQuerylink.eq(i).attr("href", "");
//                            jQueryimg.eq(i).attr("src", "../../Content/images/main_new/quick_today_prd.png");
//                        }
//                    }
//                }
//            }
//            if (pdts.data.length % 2 == 0)
//                pdts.seq = parseInt(pdts.data.length / 2) - 1;
//            else
//                pdts.seq = parseInt(pdts.data.length / 2);
//            jQuery.cookie("cocsProducts", JSON.stringify(pdts), { expires: 1, path: "/" });
//        }

//        if (pdts != null) {
//            $("#count").html(pdts.data.length);
//        }
//        else {
//            $("#count").html("0");
//        }
//    }
//    catch (e) {
//    }
//    //RemoveQuickItem();
//}
function LoadItems() {
    try {
        if (jQuery.cookie("cocsProducts")) {
            var pdts = jQuery.parseJSON(jQuery.cookie("cocsProducts"));

            if (pdts.day == null || pdts.day != new Date().getDay()) {
                jQuery.cookie("cocsProducts", null, { expires: 1, path: "/" });
                return;
            }

            if (pdts != null) {
                jQuery("#qm-products-count").text(pdts.data.length);
                var jQuerylink = jQuery("#quick_new .quick-link");
                var jQueryimg = jQuery("#quick_new .quick-img");
                var add = 0;

                if (pdts.data.length % 3 != 0) {
                    for (var i = 0; i < 3; i++) {   // 1이면 0이되어야함.
                        var j = 0;
                        if (pdts.data.length % 3 == 1) {
                            j = 1;
                        } 
                        else {
                            j = 2;
                        }

                        var cr = pdts.data[pdts.data.length + i - j];
                        if (cr != null) {
                            var home = '/product/view/{0}';
                            if (InStr(cr.url, 'http://') >= 0) {
                                home = '';
                            }
                            jQuerylink.eq(i).attr("href", '/product/view/{0}'.format(cr.index));
                            jQueryimg.eq(i).attr("src", cr.url);
                        }
                        else {
                            jQuerylink.eq(i).attr("href", "");
                            jQueryimg.eq(i).attr("src", "../../Content/images/main_new/quick_today_prd.png");
                        }
                    }
                }
                else {  // pdts.data.length = 3, 6, 9
                    for (var i = 0; i < 3; i++) {   // 0, 1, 2
                        var cr = pdts.data[pdts.data.length + i - 3];
                        if (cr != null) {
                            var home = '/product/view/{0}';
                            if (InStr(cr.url, 'http://') >= 0) {
                                home = '';
                            }
                            jQuerylink.eq(i).attr("href", '/product/view/{0}'.format(cr.index));
                            jQueryimg.eq(i).attr("src", cr.url);
                        }
                        else {
                            jQuerylink.eq(i).attr("href", "");
                            jQueryimg.eq(i).attr("src", "../../Content/images/main_new/quick_today_prd.png");
                        }
                    }
                }
                
            }
            if (pdts.data.length % 3 == 0) {
                pdts.seq = parseInt(pdts.data.length / 3) - 2;
            }
            else {
                pdts.seq = parseInt(pdts.data.length / 3);
            }
            jQuery.cookie("cocsProducts", JSON.stringify(pdts), { expires: 1, path: "/" });
        }

        if (pdts != null) {
            $("#count").html(pdts.data.length);
        }
        else {
            $("#count").html("0");
        }
    }
    catch (e) {
    }
    //RemoveQuickItem();
}

function RemoveQuickItem() {
    //    var hasFaultItem = false;
    //    jQuery("#floatdiv ul li img").each(function ()
    //    {
    //        if (jQuery(this).width() == 0)
    //        {
    //            hasFaultItem = true;
    //        }
    //    });
    //    if (!hasFaultItem) return false;
    //    var items = jQuery.parseJSON(jQuery.cookie("Products"));
    //    jQuery("#floatdiv ul li").each(function ()
    //    {
    //        var url = jQuery(this).find("a").attr("href");
    //        var pi = url.replace("/Shop/Product/", "");
    //        var isRemoved = jQuery(this).find("img").width() == 0;
    //        var tempIndex = 0;
    //        if (isRemoved)
    //        {
    //            for (var i = 0; i < items.data.length; i++)
    //            {
    //                if (items.data[i].index == pi)
    //                {
    //                    tempIndex = i;
    //                    break;
    //                }
    //            }
    //        }
    //        delete items.data[tempIndex];
    //    });
    //    jQuery.cookie("Products", JSON.stringify(items), { expires: 1 });
    //    return true;
}

//// 오늘본상품 이전페이지
//function OnQuickPre() {
//    var result = jQuery.parseJSON(jQuery.cookie("cocsProducts"));
//    if (result == null) return;
//    var curIndex = result.seq;
//    if (curIndex < 1) return;
//    if (result.data.length < 3) return;
//    result.seq--;
//    jQuery.cookie("cocsProducts", JSON.stringify(result), { expires: 1, path: "/" });

//    var jQuerylink = jQuery("#quick_new .quick-link");
//    var jQueryimg = jQuery("#quick_new .quick-img");

//    if (result.seq < 1) {
//        for (var i = 0; i < 2; i++) {
//            var cr = result.data[i];
//            if (cr != null) {
//                jQuerylink.eq(i).attr("href", "/product/view/{0}".format(cr.index));
//                jQueryimg.eq(i).attr("src", cr.url);
//            }
//            else {
//                jQuerylink.eq(i).attr("href", "");
//                jQueryimg.eq(i).attr("src", "../../Content/images/main_new/quick_today_prd.png");
//            }
//        }
//    }
//    else {
//        for (var i = 0; i < 2; i++) {
//            var cr = result.data[result.seq * 2 + i];
//            if (cr != null) {
//                jQuerylink.eq(i).attr("href", "/product/view/{0}".format(cr.index));
//                jQueryimg.eq(i).attr("src", cr.url);
//            }
//            else {
//                jQuerylink.eq(i).attr("href", "");
//                jQueryimg.eq(i).attr("src", "../../Content/images/main_new/quick_today_prd.png");
//            }
//        }
//    }
//    //    if (RemoveQuickItem())
//    //    {
//    //        FloatingPre();
//    //    }
//}
//// 오늘본상품 다음페이지
//function OnQuickNext() {
//    var result = jQuery.parseJSON(jQuery.cookie("cocsProducts"));
//    if (result == null) return;
//    var curIndex = result.seq;
//    if (curIndex >= (result.data.length / 2) - 1) return;
//    if (result.data.length < 3) return;
//    result.seq++;
//    jQuery.cookie("cocsProducts", JSON.stringify(result), { expires: 1, path: "/" });
//    var jQuerylink = jQuery("#quick_new .quick-link");
//    var jQueryimg = jQuery("#quick_new .quick-img");
//    for (var i = 0; i < 2; i++) {
//        var cr = result.data[result.seq * 2 + i];
//        if (cr != null) {
//            jQuerylink.eq(i).attr("href", "/product/view/{0}".format(cr.index));
//            jQueryimg.eq(i).attr("src", cr.url);
//        }
//        else {
//            jQuerylink.eq(i).attr("href", "");
//            jQueryimg.eq(i).attr("src", "../../Content/images/main_new/quick_today_prd.png");
//        }
//    }
//    //    if (RemoveQuickItem())
//    //    {
//    //        FloatingNext();
//    //    }
//}

// 오늘본상품 이전페이지
function OnQuickPre() {
    var result = jQuery.parseJSON(jQuery.cookie("cocsProducts"));
    if (result == null) return;
    var curIndex = result.seq;
    if (curIndex < 1) return;
    if (result.data.length < 4) return;
    result.seq--;
    jQuery.cookie("cocsProducts", JSON.stringify(result), { expires: 1, path: "/" });

    var jQuerylink = jQuery("#quick_new .quick-link");
    var jQueryimg = jQuery("#quick_new .quick-img");

    if (result.seq < 1) {
        for (var i = 0; i < 3; i++) {
            var cr = result.data[i];
            if (cr != null) {
                jQuerylink.eq(i).attr("href", "/product/view/{0}".format(cr.index));
                jQueryimg.eq(i).attr("src", cr.url);
            }
            else {
                jQuerylink.eq(i).attr("href", "");
                jQueryimg.eq(i).attr("src", "../../Content/images/main_new/quick_today_prd.png");
            }
        }
    }
    else {
        for (var i = 0; i < 3; i++) {
            var cr = result.data[result.seq * 3 + i];
            if (cr != null) {
                jQuerylink.eq(i).attr("href", "/product/view/{0}".format(cr.index));
                jQueryimg.eq(i).attr("src", cr.url);
            }
            else {
                jQuerylink.eq(i).attr("href", "");
                jQueryimg.eq(i).attr("src", "../../Content/images/main_new/quick_today_prd.png");
            }
        }
    }
    //    if (RemoveQuickItem())
    //    {
    //        FloatingPre();
    //    }
}
// 오늘본상품 다음페이지
function OnQuickNext() {
    var result = jQuery.parseJSON(jQuery.cookie("cocsProducts"));
    if (result == null) return;
    var curIndex = result.seq;
    if (curIndex >= (result.data.length / 3) - 1) return;
    if (result.data.length < 4) return;
    result.seq++;
    jQuery.cookie("cocsProducts", JSON.stringify(result), { expires: 1, path: "/" });
    var jQuerylink = jQuery("#quick_new .quick-link");
    var jQueryimg = jQuery("#quick_new .quick-img");
    for (var i = 0; i < 3; i++) {
        var cr = result.data[result.seq * 3 + i];
        if (cr != null) {
            jQuerylink.eq(i).attr("href", "/product/view/{0}".format(cr.index));
            jQueryimg.eq(i).attr("src", cr.url);
        }
        else {
            jQuerylink.eq(i).attr("href", "");
            jQueryimg.eq(i).attr("src", "../../Content/images/main_new/quick_today_prd.png");
        }
    }
    //    if (RemoveQuickItem())
    //    {
    //        FloatingNext();
    //    }
}

// 상품상세보기 페이지 이동
function OnQuickClick(obj) {
    var url = jQuery(obj).attr("href");
    if (url != "")
        location.href = url;
}