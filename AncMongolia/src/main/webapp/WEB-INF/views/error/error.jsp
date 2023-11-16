<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.net.URLEncoder, java.net.URLDecoder" %>
<%
	String visiter_refer = request.getHeader("referer");
	String visiter_ipaddr = request.getRemoteAddr();
	String visiter_agent = request.getHeader("User-Agent");
	String visiter_domain = request.getServerName();	
%>
<script>
	document.location.href="/index.do";  
</script>
</body>
</html>
