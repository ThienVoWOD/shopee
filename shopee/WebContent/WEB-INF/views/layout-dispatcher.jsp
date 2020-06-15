<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8" />
<title>Insert title here</title>
</head>
<body>
	<%
	
		String view = request.getParameter("view");
		if (view.startsWith("admin/")) {
			pageContext.forward("admin_layout.jsp");
		} else if (view.startsWith("home/")) {
			pageContext.forward("home_layout.jsp");
		} else {
			
		}
	%>
</body>
</html>