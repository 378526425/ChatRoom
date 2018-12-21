<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userName = request.getParameter("name");
		if (userName != null) {
		 session.setAttribute("userName", userName);
		 response.sendRedirect("Chat-room.jsp");
		}
	%>
	<form id="myform" action="index.jsp" method="post">
		姓名：<input id="name" name="name" type="text" /><input type="submit" value="开始聊天" />
	</form>
	<script>
	    document.getElementById('myform').onsubmit=function()
	    {
	    	return fun();
	    }
	    function fun()
	    {
	    	if(document.getElementById('name').value=="")
	    		return false;
	    	return true;
	    }
	</script>
</body>
</html>
