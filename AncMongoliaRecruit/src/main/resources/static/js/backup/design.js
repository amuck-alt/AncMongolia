$(function () {
    //chkScroll();
    ifScroll();
    $(window).scroll(function () {
        //chkScroll();
        ifScroll();
    });

    /*$('.tab_wrap_top .tab_top li').on('click', function () {
        $(this).addClass('on').siblings().removeClass('on');
        $(this).closest('.tab_wrap_top').find('.tab_cont_top:eq(' + $(this).index() + ')').addClass('on').siblings().removeClass('on');
        return false;
    });*/

    //    $('.top_layer .btn_close').on('click', function () {
    //        $('.top_layer').slideUp('fast');
    //    });

    /*$('.tab_wrap .tab li').on('click', function () {
    $(this).addClass('on').siblings().removeClass('on');
    $(this).closest('.tab_wrap').find('.tab_cont:eq(' + $(this).index() + ')').addClass('on').siblings().removeClass('on');
    return false;
    });*/

    /*스크립트 충돌*/
    //scroll
    //    ifScroll();
    //    $(window).scroll(function () {
    //        ifScroll();
    //    });

    //    $(window).scroll(function () {
    //        console.log($('#header .h_bottom').offsetTop);
    //    });
});

//function chkScroll(){
//	if($(window).scrollTop() > 800)
//	{
//		$("body").addClass("head_fixed");
//	}
//	else
//	{
//		$("body").removeClass("head_fixed");
//	}
//}

//레이아웃 스크롤 이벤트
function ifScroll() {
    var scroll_top = 0;
    if ($('.top_layer').is(':hidden')) {
        scroll_top = 50;
    } else {
        scroll_top = 132;
    }
    if ($(window).scrollTop() < scroll_top) {
        $("#header").removeClass("fixed");
    }
    else {
        $("#header").addClass("fixed");
    }
}

/* 상단팝업 */
function closeHeadPop(){
	$(".haed_pop").slideUp("fast");
	$("body").addClass("head_pop_none"); //상단팝업 없는표시 전달(Fixed Head에 사용됨)
}

/* 팝업 열기/닫기 */
function openPop(cls){
	$("."+cls).show();
}
function closePop(cls){
	$("."+cls).hide();
}