<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file = "../include/site.jsp" %>
<title>${result.title}</title>
<meta name="description" content="${result.description}"/>
<meta property="og:title" content="${result.title}">
<meta property="og:description" content="${result.description}">
<%@ include file = "../include/header.jsp" %>
<!-- 에디터용 css -->
<link rel="stylesheet" href="/editor/src/content-styles.css" type="text/css">
<script async charset="utf-8" src="//cdn.iframe.ly/embed.js?api_key=crewschool.co.kr"></script>
</head>
<body>

<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>


<div class="container-fluid">
	<div class="row sm-row">	
		<div class="col-12 mt-4">
			<div class="col-fix-6 text-left">
				<a href="/news/announce.do?startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}"><label class="re-label">목록으로</label></a>
			</div>
<!-- 			<div class="col-fix-6 text-right">
				<label class="re-label">이전</label><span class="px-1"></span><label class="re-label">다음</label>
			</div> -->
		</div>
	</div>
</div>

<div class="container-fluid" id="containter-body">
	<div class="row sm-row">	
		<div class="col-12 my-3 line-2-black"></div>
		<div class="col-12">			
			<div class="col-12 px-2 font-24 font-bold">${ result.title }</div>
			<div class="col-12 px-2 pt-2 font-14 font-gray" class="mobile-100-percent"><fmt:formatDate value="${result.regdate}" pattern="yyyy-MM-dd"/></div>
		</div>
		<div class="col-12 line-1-gray my-3"></div>
		<div class="col-12 ck-content" id="bbs-content">
			${result.content}
		</div>
	</div>				
</div>

<div class="container-fluid" style="height:10rem;"></div>

<script src="/editor/build/ckeditor.js"></script>
<script>
document.querySelectorAll('oembed[url]').forEach( element => {	
	console.log(element.attributes.url.value);
	var url = element.attributes.url.value;
	if(url.indexOf("youtu") > -1){
		var retxt = url.substr(url.lastIndexOf("/")+1, url.length);
		element.outerHTML = '<div style="position: relative; padding-bottom: 100%; height: 0; padding-bottom: 56.2493%;">' +
									'<iframe src="https://www.youtube.com/embed/'+retxt+'"' +
									'style="position: absolute; width: 100%; height: 100%; top: 0; left: 0;" ' +
									'frameborder="0" allow="autoplay; encrypted-media" allowfullscreen>' +
									'</iframe>' +
									'</div>';
	}else if(url.indexOf("localhost") > -1){
		var retxt = url.substr(url.lastIndexOf("/")+1, url.length);
		if(retxt == "banner1.html"){
			element.outerHTML = 	'<div style="position: relative; height:15rem;">' +
										'<iframe src="http://localhost:8088/embed/'+retxt+'"' +
										'style="position: absolute; width:100%; height:15rem; top:0; left:0;" ' +
										'frameborder="0" scrolling="no">' +
										'</iframe>' +
										'</div>';
		}else{
			element.outerHTML = 	'<div style="position: relative; height:30rem;">' +
										'<iframe src="http://localhost:8088/embed/'+retxt+'"' +
										'style="position: absolute; width:100%; height:30rem; top:0; left:0;" ' +
										'frameborder="0" scrolling="no">' +
										'</iframe>' +
										'</div>';	
		}
	}
});

document.querySelectorAll('figure').forEach( element => {
	console.log(element);
});

function setFrameHeight(obj){
	if(obj.contentDocument){
      console.log(obj.contentDocument.body.offsetHeight + 40);  
		obj.height = obj.contentDocument.body.offsetHeight + 40;
      
    } else {
    	console.log(obj.contentWindow.document.body.scrollHeight);  
    	obj.height = obj.contentWindow.document.body.scrollHeight;
      
    }
}

</script>
<!-- 하단링크 -->
<%@ include file = "../include/footlink.jsp" %>
<!-- 상담신청 -->
<%@ include file = "../include/counsel.jsp" %>
<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>

</body>
</html>