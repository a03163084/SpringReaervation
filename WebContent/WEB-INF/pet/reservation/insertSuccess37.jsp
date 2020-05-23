<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>insert</title>
</head>
<body>

	
	
預約成功

	<a href="<c:url value='index37' />">回首頁</a>
	<a href="<c:url value='query?memberId=${petMembers.memberId}' />">查看預約</a>
</body>
</html>