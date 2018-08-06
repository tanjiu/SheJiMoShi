<%@ page import="java.util.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="bean.*" %>
<%@ page import="table.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
</head>
<body>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
User user=new User(username,password);
Userb ub=new Userb();
int i=ub.add(user);
if(i>0){
	%>注册成功，<a href="enter.jsp">返回登录</a>窗口<%
}
else{
	%>注册失败,<a href="enter.jsp">返回</a>重新注册<%
}

%>
</body>
</html>