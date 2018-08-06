<%@ page import="java.util.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="yangshi/style_login.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册登录</title>
</head>
<body>
<div style="text-align:center;margin:10px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<p>适用浏览器：360、FireFox、Chrome、Opera、傲游、搜狗、世界之窗. 不支持Safari、IE8及以下浏览器。</p>
</div>
<div class="cotn_principal">
  <div class="cont_centrar">
    <div class="cont_login">
      <div class="cont_info_log_sign_up">
        <div class="col_md_login">
          <div class="cont_ba_opcitiy">
            <h2>登录</h2>
            <button class="btn_login" onClick="cambiar_login()">LOGIN</button>
          </div>
        </div>
        <div class="col_md_sign_up">
          <div class="cont_ba_opcitiy">
            <h2>注册</h2>
            
            <button class="btn_sign_up" onClick="cambiar_sign_up()">SIGN UP</button>
          </div>
        </div>
      </div>
      <div class="cont_back_info">
        <div class="cont_img_back_grey"> <img src="po.jpg" alt="" /> </div>
      </div>
      <form action="confirm.jsp" method="get">
      <div class="cont_forms" >
        <div class="cont_img_back_"> <img src="po.jpg" alt="" /> </div>
        <div class="cont_form_login"> <a href="#" onClick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
          <h2>LOGIN</h2>
          
          <input type="text" placeholder="username" name="username"/>
          <input type="password" placeholder="Password" name="password"/>
          

          <a href="confirm.jsp"><button class="btn_login" >LOGIN</button></a>
        </div>
        </form>
        <form action="register.jsp" method="get">
        <div class="cont_form_sign_up"> <a href="#" onClick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
          <h2>SIGN UP</h2>
          <input type="text" placeholder="Username" name="username" />
          <input type="password" placeholder="Password" name="password"/>
          <input type="password" placeholder="Confirm Password" />
          <button class="btn_sign_up" onClick="cambiar_sign_up()">SIGN UP</button>
        </div>
        </form>
      </div>
    </div>
  </div>
</div>

<script src="yangshi/login.js"></script>
</body>
</html>