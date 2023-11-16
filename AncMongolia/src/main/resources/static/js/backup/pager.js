var query;

jQuery(document).ready(function () {
    query = jQuery.queryStrToJson();
});

// 2016.07.19 - 페이지 이동처리 수정
function OnPage(page) {
    if (location.href.indexOf("product/view") > 0) {
        query["page"] = page;
        location.href = "?" + jQuery.param(query) + "#review";
    }
    else if (location.href.indexOf("Event/ProductPlan") > 0) {
        query["page"] = page;
        location.href = "?" + jQuery.param(query) + "#review";
    }
    else if (location.href.indexOf("user/member_term") > 0) {
        query["page"] = page;
        location.href = "?" + jQuery.param(query) + "#review";
    }
    else if (location.href.indexOf("product/viplounge") > 0) {
        query["page"] = page;
        location.href = "?" + jQuery.param(query) + "#review";
    }
    else {
        // 2016.09.21 - 리스트페이지에서 페이징처리 오류 관련 수정
        if (location.href.indexOf("#tab") > 0) {
            query["page"] = page;
            var query2 = jQuery.param(query);

            query2 = query2.replace("#tabs", "");
            query2 = query2.replace("%23tabs", "");

            location.href = "?" + query2 + "#tabs";
        }
        else
        {
            query["page"] = page;
            location.href = "?" + jQuery.param(query);    
        }
    }
}

// 2016.07.19 - 페이지 이동처리 수정
function OnPageSub(qpage) {
    if (location.href.indexOf("product/view") > 0) {
        query["qpage"] = qpage;
        location.href = "?" + jQuery.param(query) + "#qna";
    }
    else if (location.href.indexOf("Event/ProductPlan") > 0) {
        query["qpage"] = qpage;
        location.href = "?" + jQuery.param(query) + "#comment";
    }
    else if (location.href.indexOf("product/ProductPlan") > 0) {
        query["qpage"] = qpage;
        location.href = "?" + jQuery.param(query) + "#comment";
    }
    else if (location.href.indexOf("product/viplounge") > 0) {
        query["qpage"] = qpage;
        location.href = "?" + jQuery.param(query) + "#youtube";
    }
    else {
        query["qpage"] = qpage;
        location.href = "?" + jQuery.param(query);
    }
}