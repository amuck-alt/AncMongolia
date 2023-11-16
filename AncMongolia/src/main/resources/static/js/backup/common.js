/// <reference path="jquery-1.4.4-vsdoc.js" />
// md-slide jQuery

var isMovePage = false;
var currentKeyword = "";
var searchAjaxR;
var searchAjaxL;
var hasKeywait = true;

jQuery(document).ready(function () {
    // 메인검색 엔터키 처리
    jQuery("#main-searchbox").keyup(function (e) {
        if (e.keyCode == 13) {
            // OnMainSearch();
            OnNotReadyForLink();
            return false;
        }
    });
    // 메인검색 엔터키 처리2
    jQuery("#mainSearchBox").keyup(function (e) {
        if (e.keyCode == 13) {
            OnMainSearch2();
            return false;
        }
    });
    // 메인검색 텍스트박스 클릭 이벤트 처리기
    jQuery("#main-searchbox").click(function () {
        if (jQuery("#main-searchbox").val().length > 0) {
            jQuery("#header").addClass("searchZindex");
            jQuery("#searchSection").show();
            jQuery("#header").css("z-index", 3000);
        };
    });
    // 메인검색 텍스트박스 focusin 이벤트 처리기
    jQuery("#main-searchbox").focusin(function () {
        jQuery(this).val("");
    });

    //    jQuery("#main-searchbox").focusout(function () {
    //        jQuery("#header").removeClass("searchZindex");
    //        jQuery("#searchSection").hide();
    //    });

//    // 메인검색 텍스트박스 focus 이벤트 처리기
//    jQuery("#main-searchbox").focus(function () {
//        enableWaiting = false;
//        if (jQuery("#main-searchbox").val().length > 0) {
//            jQuery("#header").addClass("searchZindex");
//            jQuery("#searchSection").show();
//            jQuery("#header").css("z-index", 3000);
//            var check = /[ㄱ-ㅎ|ㅏ-ㅣ]/;
//            currentKeyword = jQuery("#main-searchbox").val();
//            while (check.test(currentKeyword)) {
//                currentKeyword = currentKeyword.replace(check, "");
//            }
//            if (currentKeyword.length > 0) {
//                var searchQuery = {};
//                searchQuery["type"] = jQuery("#select_top").text();
//                searchQuery["q"] = currentKeyword;

//                if (searchAjaxR && searchAjaxR.readyState != 4) {
//                    searchAjaxR.abort();
//                }

//                // 검색어 자동완성 단어목록 Ajax 요청
//                searchAjaxR = jQuery.ajax(
//                        {
//                            type: "POST",
//                            contentType: "application/json; charset=utf-8",
//                            url: "/services/MenuService.svc/SearchKeyList",
//                            data: JSON.stringify(searchQuery),
//                            success: function (result) {
//                                if (result.d != null) {
//                                    var keywordHtml = "";
//                                    if (result.d.length > 0) {
//                                        jQuery("#header").addClass("searchZindex");
//                                        jQuery("#searchSection").show();
//                                        jQuery("#header").css("z-index", 3000);
//                                        keywordCount = result.d.length;
//                                        currentCount = -1;
//                                        currentKeyword = "";
//                                        jQuery("#searchBoxR").html('<span style="margin:110px 0 0 170px; display:block;"><img src="../../Content/images/common/ajax-loader.gif" /></span>');

//                                        for (var i = 0; i < result.d.length; i++) {
//                                            var keyVal = result.d[i];
//                                            var keyType = jQuery("#select_top").text();

//                                            var arr = jQuery("#main-searchbox").val().split(/[\s]+/);
//                                            var resultText = keyVal.length > 100 ? keyVal.substring(0, 50) + "..." : keyVal;
//                                            for (var n = 0; n < arr.length; n++) {
//                                                var boldkeyword = "<span class='resultBold'>{0}</span>".format(arr[n]);
//                                                resultText = resultText.replace(arr[n], boldkeyword);
//                                            }

//                                            keywordHtml += "<li><a href='' key='" + keyVal + "' onclick='OnKeywordClick(this); return false;' style='width:180px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;'>{0}</a></li>".format(resultText);
//                                        }

//                                    }
//                                    else {
//                                        var keyVal = currentKeyword;
//                                        var keyType = jQuery("#select_top").text();
//                                        var boldkeyword = "<span class='resultBold'>{0}</span>".format(currentKeyword);
//                                        var resultText = boldkeyword;
//                                        keywordHtml += "<li><a href='' key='" + keyVal + "' onclick='OnKeywordClick(this); return false;'>{0}</a></li>".format(resultText);
//                                    }
//                                    jQuery("#keywordContainer").html(keywordHtml);
//                                    jQuery("#keywordContainer li a").mouseover(function () {
//                                        jQuery("#keywordContainer li a").removeClass("hover");
//                                    });
//                                    jQuery("#keywordContainer li").last().css("margin-bottom", "10px");
//                                    OnCurrentKeywordChanged();
//                                }
//                            },
//                            error: function (r, s, e) {
//                            }
//                        });
//                //GetSearchProduct(jQuery("#select_top").text(), currentKeyword, "1");
//            }
//        }
//    });
//    // 메인검색 텍스트박스 focusout 이벤트 처리기
//    jQuery("#main-searchbox").focusout(function () {
//        setTimeout(SearchHide, 300);
//    });

    var keywordCount = 0;
    var currentCount = -1;

    // 메인검색 텍스트박스 keyup 이벤트 처리기
//    jQuery("#main-searchbox").keyup(function (e) {
//        enableWaiting = false;
//        var check = /[ㄱ-ㅎ|ㅏ-ㅣ]/;

//        if (jQuery("#main-searchbox").val().length == 0) {
//            jQuery("#header").removeClass("searchZindex");
//            jQuery("#searchSection").hide();
//            jQuery("#header").css("z-index", 0);
//        }
//        else {
//            jQuery("#header").addClass("searchZindex");
//            jQuery("#searchSection").show();
//            jQuery("#header").css("z-index", 3000);
//        }
//        var searchType = jQuery("#select_top").text();
//        var searchValue = jQuery("#main-searchbox").val();

//        if (!check.test(jQuery("#main-searchbox").val()) && e.keyCode != 40 && e.keyCode != 38 && e.keyCode != 13 && jQuery("#main-searchbox").val().length > 0) {
//            var searchQuery = {};
//            searchQuery["type"] = searchType;
//            searchQuery["q"] = searchValue;

//            if (searchAjaxR && searchAjaxR.readyState != 4) {
//                searchAjaxR.abort();
//            }

//            // 검색어 자동완성 단어목록 Ajax 요청
//            searchAjaxR = jQuery.ajax(
//                    {
//                        type: "POST",
//                        contentType: "application/json; charset=utf-8",
//                        url: "/services/MenuService.svc/SearchKeyList",
//                        data: JSON.stringify(searchQuery),
//                        success: function (result) {
//                            if (result != null) {
//                                var keywordHtml = "";
//                                if (result.d.length > 0) {
//                                    jQuery("#header").addClass("searchZindex");
//                                    jQuery("#searchSection").show();
//                                    jQuery("#header").css("z-index", 3000);
//                                    keywordCount = result.d.length;
//                                    currentCount = -1;
//                                    currentKeyword = "";
//                                    jQuery("#searchBoxR").html('<span style="margin:110px 0 0 170px; display:block;"><img src="../../Content/images/common/ajax-loader.gif" /></span>');
//                                    for (var i = 0; i < result.d.length; i++) {
//                                        var keyVal = result.d[i];
//                                        var keyType = jQuery("#select_top").text();

//                                        var arr = jQuery("#main-searchbox").val().split(/[\s]+/);
//                                        var resultText = keyVal.length > 100 ? keyVal.substring(0, 50) + "..." : keyVal;
//                                        for (var n = 0; n < arr.length; n++) {
//                                            var boldkeyword = "<span class='resultBold'>{0}</span>".format(arr[n]);
//                                            resultText = resultText.replace(arr[n], boldkeyword);
//                                        }

//                                        keywordHtml += "<li><a href='' key='" + keyVal + "' onclick='OnKeywordClick(this); return false;' style='width:180px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;'>{0}</a></li>".format(resultText);
//                                    }
//                                }
//                                else {
//                                    var keyVal = currentKeyword;
//                                    var keyType = jQuery("#select_top").text();
//                                    var boldkeyword = "<span class='resultBold'>{0}</span>".format(currentKeyword);
//                                    var resultText = boldkeyword;
//                                    keywordHtml += "<li><a href='' key='" + keyVal + "' onclick='OnKeywordClick(this); return false;'>{0}</a></li>".format(resultText);
//                                }
//                                jQuery("#keywordContainer").html(keywordHtml);
//                                jQuery("#keywordContainer li a").mouseover(function () {
//                                    jQuery("#keywordContainer li a").removeClass("hover");
//                                });
//                                jQuery("#keywordContainer li").last().css("margin-bottom", "10px");
//                                currentKeyword = searchValue;
//                                //GetSearchProduct(searchType, currentKeyword, "1");
//                                OnCurrentKeywordChanged();
//                            }
//                        },
//                        error: function (r, s, e) {
//                        }
//                    });

//        }

//        jQuery("#keywordContainer li a").removeClass("hover");
//        // 메인검색 텍스트박스 아래화살표키 이벤트 처리기
//        if (e.keyCode == 40) {
//            currentCount++;
//            if (currentCount == keywordCount) {
//                currentCount = 0;
//            }
//            jQuery("#keywordContainer li a").eq(currentCount).addClass("hover");
//            currentKeyword = jQuery("#keywordContainer li a").eq(currentCount).attr("key");
//            OnCurrentKeywordChanged();
//        }
//        // 메인검색 텍스트박스 위화살표키 이벤트 처리기
//        if (e.keyCode == 38) {
//            currentCount--;
//            if (currentCount < 0) {
//                currentCount = keywordCount - 1;
//            }
//            jQuery("#keywordContainer li a").eq(currentCount).addClass("hover");
//            currentKeyword = jQuery("#keywordContainer li a").eq(currentCount).attr("key");
//            OnCurrentKeywordChanged();
//        }
//        // 메인검색 텍스트박스 엔터키 이벤트 처리기
//        if (e.keyCode == 13) {
//            if (currentKeyword == "")
//                currentKeyword = jQuery("#main-searchbox").val();

//            jQuery("#main-searchbox").val(currentKeyword);

//            if (searchAjaxR && searchAjaxR.readyState != 4) {
//                searchAjaxR.abort();
//            }
//            if (searchAjaxL && searchAjaxL.readyState != 4) {
//                searchAjaxL.abort();
//            }

//            //location.href = "/product/search?type={0}&value={1}".format(jQuery("#select_top").text(), currentKeyword);
//            OnMainSearch();
//        }
//        // 메인검색 텍스트박스 스페이스바 이벤트 처리기
//        if (e.keyCode == 32) {
//            var keywordText = jQuery("#main-searchbox").val();
//            while (check.test(keywordText)) {
//                keywordText = keywordText.replace(check, "");
//            }

//        }
//    });

    var footer = jQuery("div.sitemap_box > dl");
    if (footer.length > 0) {
        footer.each(function () {
            jQuery(this).find("dd").hover(function () {
                var src = jQuery(this).siblings().find("img.rollover").attr("src");
                jQuery(this).siblings().find("img.rollover").attr("src", src.replace("_off", "_on"));
            }, function () {
                var src = jQuery(this).siblings().find("img.rollover").attr("src");
                jQuery(this).siblings().find("img.rollover").attr("src", src.replace("_on", "_off"));
            });
        });
    }

    jQuery("#select_top").click(
        function () {
            jQuery("#header").css("z-index", 9990);
            jQuery("#top_sel_box").fadeIn("fast");

        });
});

// 메인검색 검색어 자동완성 목록 항목 클릭 이벤트 처리기
function OnKeywordClick(obj) {
    isMovePage = true;
    currentKeyword = jQuery(obj).attr("key");
    OnCurrentKeywordChanged();
    return false;
}

// 메인검색 검색어 연관 상품리스트 Ajax 요청
function GetSearchProduct(type, value, page) {
    var productQuery = {};
    productQuery["type"] = type;
    productQuery["value"] = value;
    productQuery["page"] = page;

    if (searchAjaxL && searchAjaxL.readyState != 4) {
        searchAjaxL.abort();
    }
    searchAjaxL = jQuery.ajax(
            {
                type: "POST",
                url: "/product/search-Product",
                data: productQuery,
                success: function (data) {
                    jQuery("#searchBoxR").html(data);
                    jQuery("#header .searchSection .search_tb tr").last().addClass("pBnone");
                    enableWaiting = true;
                },
                error: function (r, s, e) {
                }
            });
}

// 현재 키워드 상태변경
function OnCurrentKeywordChanged() {
    if (!hasKeywait) return;
    GetSearchProduct(jQuery("#select_top").text(), currentKeyword, "1");
    hasKeywait = true;
}

// 메인검색 검색어 연관 상품리스트 페이저 이벤트 처리기
function SearchPage(page) {
    isMovePage = true;
    if (currentKeyword == "") {
        currentKeyword = jQuery("#main-searchbox").val();
    }
    GetSearchProduct(jQuery("#select_top").text(), currentKeyword, page);
}

// 메인검색 검색어 자동완성 목록 항목 클릭 이벤트 처리기
function OnSearchKeywordClick(e) {
    jQuery("#main-searchbox").val(e.innerText);
}

// 메인검색 텍스트박스 하단영역 처리
function SearchHide() {
    if (!isMovePage) {
        jQuery("#header").removeClass("searchZindex");
        jQuery("#searchSection").hide();
    }
    isMovePage = false;
}

function doKey(e) {
    if (location.href.indexOf("memberjoin.aspx") < 0)  // 변경해야함
        if (event.keyCode == 13)
            if (e != null)
                if (e.target.tagName.toUpperCase() != "TEXTAREA")
                    return false;
}
// slides04영역 슬라이드 실행
jQuery(function () {
    jQuery('#slides04').slides({
        preload: true,
        preloadImage: '',
        play: 3000,
        pause: 2000,
        hoverPause: true,
        slideSpeed: 400,
        effect: 'fade'
    });
});

var _mainSearchType = "p";

// 메인검색 이벤트 처리기
function OnMainSearch() {
    var kw = jQuery.trim(jQuery("#main-searchbox").val());
    if (kw == "") return;
    var sq = {};
    sq["t"] = _mainSearchType;
    sq["kw"] = kw;
    location.href = "/product/search?" + jQuery.param(sq);
}

// 메인검색 이벤트 처리기2
function OnMainSearch2() {
    var sq = {};
    var kw = jQuery.trim(jQuery("#mainSearchBox").val());
    if (kw == "") {
        location.href = $('.searchUrl').val();
    }
    else {
        // 20140416 - 영문 소문자 검색부분을 대문자로 다 변환하게 수정처리
        sq["kw"] = kw.toUpperCase();
        location.href = "/product/search?" + jQuery.param(sq);    
    }
}

// 메인검색 검색어 타입 처리기
function OnMainSearchType(sender, type) {
    _mainSearchType = type;
    var txt = sender.innerHTML;
    jQuery("#select_top").text(txt);
    jQuery("#top_sel_box").fadeOut("fast");
    jQuery("#header").css("z-index", 0);
}

// 로그인으로 이동
function OnLogIn() {
    var url = location.href;
    if (url.indexOf("/purchase/order") > 0) {
        url = "/";
    }
    if (url.indexOf("ReturnUrl") == -1)
        location.href = "/user/login?ReturnUrl=" + url;
    else {
        var redirect = url.split("ReturnUrl=")[1];
        location.href = "/user/login?ReturnUrl=" + redirect;
    }
}

// 새창열기
function OpenCenter(id, winNM, width, height, left) {
    var sw = screen.availWidth;
    var sh = screen.availHeight;

    var px = (sw - width) / 2;
    var py = (sh - height) / 2;
    px = left == null ? px : px + left;
//    var ver = parseInt(jQuery.browser.version);
//    if (ver < 9) {
//        width += 4;
//        height += 4;
//    }

    var set = 'top=' + py + ',left=' + px;
    set += ',width=' + width + ',height=' + height + ',location=no, directories=no, resizable=no, status=no, toolbar=no, menubar=no, scrollbars=no, titlebar=no';
    window.open(winNM, id, set);
}

// 새창열기2
function OpenCenter2(id, winNM, width, height, left) {
    var sw = screen.availWidth;
    var sh = screen.availHeight;

    var px = (sw - width) / 2;
    var py = (sh - height) / 2;
    px = left == null ? px : px + left;
//    var ver = parseInt(jQuery.browser.version);
//    if (ver < 9) {
//        width += 4;
//        height += 4;
//    }

    var set = 'top=' + py + ',left=' + px;
    set += ',width=' + width + ',height=' + height + ',location=no, directories=no, resizable=no, status=no, toolbar=no, menubar=no, scrollbars=yes, titlebar=no';
    window.open(winNM, id, set);
}

// Facebook 새창
function OnKocsFacebook() {
    OpenCenter("KocsFacebook", "http://facebook.com/toynkids");
}

// Twitter 새창
function OnKocsTwitter() {
    OpenCenter("KocsTwitter", "https://twitter.com/#!/ToynKids", 1200, 1000);
}

// 메세지
function RaiseMessage(val) {
    alert(val);
}

// 플래시 캐릭터 상세페이지 요청 처리기
function Flash_Go_Home_CharacterBook(id) {
    location.href = "/zone/character?id=" + id;
}

// 키워드 TOP10 항목 클릭 처리기
function OnKeywordRankClick(val) {
    var kw = encodeURIComponent(val);
    location.href = '/product/search?t=p&kw=' + kw;
}

// 상품리스트 +view 버튼 처리기
function OnProductViewPopup(id) {
    var popcontainer = jQuery("<div></div>").css("position", "relative").css("z-index", 1500);
    var popdiv = jQuery("<div id='product-view-popup'></div>");
    popcontainer.append(popdiv);
    popdiv.load("/product/view_pop/" + id, function () {
        popdiv.css("position", "absolute").css("text-align", "left");
        jQuery("#wrap").prepend(popcontainer);
        var y = jQuery(window).scrollTop();
        var x = jQuery(window).width();
        var ps = popdiv.position();
        popdiv.css("top", -(ps.top - y - 30));
        popdiv.css("left", (x - 750) / 2);
        OnLoadProductViewPop();
        jQuery(window).scroll(function () {
            y = jQuery(window).scrollTop();
            popdiv.css("top", -(ps.top - y - 30));
        });
        jQuery(window).resize(function () {
            y = jQuery(window).scrollTop();
            x = jQuery(window).width();
            popdiv.css("top", -(ps.top - y - 30));
            popdiv.css("left", (x - 750) / 2);
        });
    });
}

// 상품리스트 +view 상품상세영역 닫기
function OnProductPopClose() {
    jQuery("#product-view-popup").remove();
}

// 메인상단영역 닫기
function CloseTop() {
    $("#top_ad").hide();
}

// 리스트 상태유지 쿠키 초기화
function ClearLastProductListCookie() {
    jQuery.cookie("cocsproduct_category", null, { expires: 1, path: "/" });
    jQuery.cookie("cocsproduct_character", null, { expires: 1, path: "/" });
    jQuery.cookie("cocsproduct_brand", null, { expires: 1, path: "/" });
    jQuery.cookie("cocsproduct_redirect", null, { expires: 1, path: "/" });
}

// 바이트 크기 가져오기
//String.prototype.byteLength =  function() {
//    var len = 0;
//    for (var idx = 0; idx < this.length; idx++) {
//        var c = escape(this.charAt(idx));

//        if (c.length == 1)
//            len++;
//        else if (c.indexOf("%u") != -1)
//            len += 2;
//        else if (c.indexOf("%") != -1)
//            len += c.length / 3;
//    }

//    return len;
//}



// 로그인에서 주문배송정보 클릭시 사용
function OnOrderSearch() {
    if (confirm("로그인해야 이용가능 합니다.\n로그인 하시겠습니까?")) {
        location.href = "/user/login?ReturnUrl=/order/list";
    }
}

// 푸터에서 링크클릭시 사용
function OnLoginNeedService(returnUrl, login) {
    if (login == "False") {
        if (confirm("로그인해야 이용가능 합니다.\n로그인 하시겠습니까?")) {
            location.href = "/user/login?ReturnUrl=" + returnUrl;
        }
    }
    else if (login == "True") {
        location.href = returnUrl;
    }
}

//레이어 팝업
function OnLayerOpen($opts_width, $opts_height, $opts_url) {
   
    //마스크
    var layerMask = $("<div id='layerMask'></div>").css({
        'position': 'absolute',
        'z-index': '15000',
        'left': '0',
        'top': '0',
        'background-color': '#000',
        'display': 'none'
    });
    $("body").prepend(layerMask);
        
    $('#layerMask').css({ 'width': '100%', 'height': '100%' });
    $('#layerMask').fadeTo("fast", 0.85);
    
    //파라미터값
    var opts_width = $opts_width;
    var opts_height = $opts_height;
    var opts_url = $opts_url;

    //무조건 중앙정렬
    var opts_left = '0px';
    var opts_top = '0px';
    var opts_center = true;

    if (opts_center) {
        opts_top = $(window).height() / 2 - opts_height.replace('px', '') / 2;
        opts_left = $(window).width() / 2 - opts_width.replace('px', '') / 2;
    }

    var popup;
    popup = $("<div id='layerPopup'></div>").css({
        'display': 'none',
        'position': 'fixed',
        'z-index': '20000',
        'width': opts_width,
        'height': opts_height,
        'top': opts_top,
        'left': opts_left
    });
      
    
    var popIframe = $("<iframe src='" + opts_url + "' width='100%' height='100%' marginwidth='0' marginheight='0' frameborder='0' scrolling='no' ></iframe>");
    popup.append(popIframe);
    $("body").prepend(popup);

    popup.fadeTo("fast", 1);

    $('#layerMask').click(function () {
        $(this).hide();
        popup.hide();
    });
}

// 레이어 팝업을 끄면서 페이지 이동
function OnLocationReplaceAfterLayerClose(h) {
    parent.window.document.location.href = h;
}

// 현재개발중인 임시 페이지 링크
function OnNotReadyForLink() {
    alert("서비스 준비중입니다.");
    return false;
}
function OnNotOpenForLink0928() {
    alert("9월 28일 오픈");
    return false;
}
function OnNotOpenForLink1010() {
    alert("10월 10일 오픈");
    return false;
}

