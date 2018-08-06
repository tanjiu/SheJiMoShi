<%@ page import="java.util.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="bean.*" %>
<%@ page import="table.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录验证</title>
</head>
<body>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
User user=new User(username,password);
Userb ub=new Userb();
ResultSet rs=ub.login(user);
String pw=null;
if(rs.next()){
	pw=rs.getString("password");
}

if(pw.equals(password)){
	%>登录成功，<a href="Factory.jsp">进入主页</a><%
}
else{
	%>登录失败，<a href="enter.jsp">返回登录页面</a><% 
}
%>
</body>
</html>