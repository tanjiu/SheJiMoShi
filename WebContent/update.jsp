<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="bean.*" %>
<%@ page import="table.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" media="screen" href="yangshi/styles.css" >
    <style>
    .contact_form{padding-top:40px;}
	.title {background-color:rgba(0,0,0,0.56); text-align:center; width:100%; position:fixed; top:0; left:0; padding:5px 0;}
    .title a {color:#FFF; text-decoration:none; font-size:16px; font-weight:bolder; line-height:24px;}
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
function ale() {
	confirm("确定要修改？修改后将无法通过撤销来恢复原内容")
	
}
</script>
<title>修改此模式</title>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");
int num=Integer.parseInt(request.getParameter("num"));
ModelImpl a=new ModelImpl();
Model m=new Model();
m=a.getByid(num);
%>

<form action="servletm/Upser" method="get">
模式编号：<input type="text" name="id" value=<%=num %>>&nbsp;不可改<br><br>
模式名：<br>
<input type="text" name="name" value=<%=m.getName() %>><br><br>
模式定义：<br><textarea name="define" rows="6" cols="50"><%=m.getDefine() %></textarea><br><br>
实质：<br>
<input type="text" name="nature" value=<%=m.getNature()%> width="150px"><br><br>
何时使用：<br>
<textarea rows="5" cols="50" name="when"><%=m.getWhen() %></textarea><br><br>
主要解决什么问题：<br>
<textarea rows="5" cols="50" name="solve"><%=m.getSolve() %></textarea><br><br>
应用实例：<br>
<textarea rows="8" cols="50" name="exam"><%=m.getExam() %></textarea><br><br>
优点：<br>
<textarea rows="8" cols="50" name="good"><%=m.getGood() %></textarea><br><br>
缺点：<br>
<textarea rows="8" cols="50" name="bad"><%=m.getBad() %></textarea><br><br>
使用场景：<br>
<textarea rows="8" cols="50" name="position"><%=m.getPosition() %></textarea><br><br>

<input type="submit" value="确认修改" onclick="ale()">&nbsp;
<input type="reset" value="取消">


<!-- <ul> -->
<!--         <li> -->
<!--              <h2>修改</h2> -->
<!--              <span class="required_notification">* 表示必填项</span> -->
<!--         </li> -->
<!--         <li> -->
<!--             <label for="name">姓名:</label> -->
<!--             <input type="text"  placeholder="Chinaz" required /> -->
<!--         </li> -->
<!--         <li> -->
<!--             <label for="email">电子邮件:</label> -->
<!--            <input type="email" name="email" placeholder="123456@qq.com" required /> -->
<!--             <span class="form_hint">正确格式为：123456@qq.com</span> -->
<!--         </li> -->
<!--         <li> -->
<!--             <label for="website">网站:</label> -->
<!--             <input type="url" name="website" placeholder="http://www.baidu.com" required pattern="(http|https)://.+"/> -->
<!--             <span class="form_hint">正确格式为：http://www.baidu.com</span> -->
<!--         </li> -->
<!--         <li> -->
<!--             <label for="message">留言:</label> -->
<!--             <textarea name="message" cols="40" rows="6" placeholder="jquery" required ></textarea> -->
<!--         </li> -->
<!--         <li> -->
<!--         	<button class="submit" type="submit">Submit Form</button> -->
<!--         </li> -->
<!--     </ul> -->
<!-- </form> -->

</body>
</html>