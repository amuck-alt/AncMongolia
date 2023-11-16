<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>

<%@ include file = "../include/header.jsp" %>

<body>
<form>
<input type="hidden" name="result" id="result" value="${result}"/>
</form>
</body>


	<script>
	$(document).ready(function(){
		var data = $("#result").val();
		if(data == "ok"){
			alert("사용가능합니다.");
			return;
		}else if(data == "overlap"){
			alert("사용중입니다.");
			return;
		}else{
			return;
		}
	});
	</script>

</html>