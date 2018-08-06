<%@ page import="java.util.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="bean.*" %>
<%@ page import="table.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="toTop" content="true">
<script type="text/javascript" src="toTop.js"></script>
<link rel="stylesheet" href="yangshi/erji.css">
<link rel="stylesheet" href="yangshi/erji2.css">
<script type="text/javascript" src="yangshi/jquery2.min.js"></script>
	<script language="javascript">
		$(document).ready(function() {
			/// wrap inner content of each anchor with first layer and append background layer
			$("#menu1 li a").wrapInner( '<span class="out"></span>' ).append( '<span class="bg"></span>' );

			// loop each anchor and add copy of text content
			$("#menu1 li a").each(function() {
				$( '<span class="over">' +  $(this).text() + '</span>' ).appendTo( this );
			});

			$("#menu1 li a").hover(function() {
				// this function is fired when the mouse is moved over
				$(".out",	this).stop().animate({'top':	'40px'},	250); // move down - hide
				$(".over",	this).stop().animate({'top':	'0px'},		250); // move down - show
				$(".bg",	this).stop().animate({'top':	'0px'},		120); // move down - show

			}, function() {
				// this function is fired when the mouse is moved off
				$(".out",	this).stop().animate({'top':	'0px'},		250); // move up - show
				$(".over",	this).stop().animate({'top':	'-40px'},	250); // move up - hide
				$(".bg",	this).stop().animate({'top':	'-40px'},	120); // move up - hide
			});}</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中介者模式</title>
</head>
<body>
<% 
ModelImpl a= new ModelImpl();
Model m=new Model();
m=a.getByid(21);

%>
<div class="top">
			中介者模式
		</div>
 <section class="conter">

        <section class="help-left">

            <details class="menu" open>

                <summary>创建型模式</summary>

                <ul>

                    <li><a href="Abstract_factory.jsp">抽象工厂模式</a></li>

                    <li><a href="Builder.jsp">建造者模式</a></li>
                    
                    <li><a href="Factory_method.jsp">工厂方法模式</a></li>
                    
                    <li><a href="Prototype.jsp">原型模式</a></li>
                    
                    <li><a href="Single.jsp">单例模式</a></li>
                    
                    

                </ul>

            </details>

            <details class="menu" open>

                <summary>结构型模式</summary>

                <ul>

                    <li><a href="Adapter.jsp">适配器模式</a></li>

                    <li><a href="Bridge.jsp">桥接模式</a></li>
                    
                    <li><a href="Component.jsp">组合模式</a></li>
                    
                    <li><a href="Decorate.jsp">装饰模式</a></li>
                    
                    <li><a href="Facade.jsp">外观模式</a></li>
                    
                    <li><a href="Proxy.jsp">代理模式</a></li>
                    
                    <li><a href="Flyweight.jsp">享元模式</a></li>

                </ul>

            </details>

            <details class="menu" open>

                <summary>行为型模式</summary>

                <ul>

                    <li><a href="Factory.jsp">简单工厂模式</a></li>

                    <li><a href="Strategy.jsp">策略模式</a></li>

                    <li><a href="Template_method.jsp">模板方法模式</a></li>
                    
                    <li><a href="Observe.jsp">观察者模式</a></li>
                    
                    <li><a href="State.jsp">状态模式</a></li>
                    
                    <li><a href="Memento.jsp">备忘录模式</a></li>
                    
                    <li><a href="Iterator.jsp">迭代器模式</a></li>
                    
                    <li><a href="Commend.jsp">命令模式</a></li>
                    
                    <li><a href="Chain_responsbility.jsp">职责链模式</a></li>
                    
                    <li><a href="Mediator.jsp">中介者模式</a></li>
                    
                    <li><a href="Interpreter.jsp">解释器模式</a></li>
                    
                    <li><a href="Visitor.jsp">访问者模式</a></li>

                </ul>

            </details>

            <details class="menu" open>

                <summary>设计原则</summary>

                <ul>

                    <li><a href="Several.jsp">单一职责原则</a></li>

                    <li><a href="Several.jsp">里氏代换原则</a></li>

                    <li><a href="Several.jsp">依赖倒转原则</a></li>

                    <li><a href="Several.jsp">接口隔离原则</a></li>

                    <li><a href="Several.jsp">开放封闭原则</a></li>
                    
                    <li><a href="Several.jsp">迪米特法则</a></li>

                </ul>

            </details>

        </section>
        <section class="top2"> 
		<div id="menu1" class="menua">
		<ul>
		<li><a href="#name">模式名及编号</a></li>
		<li><a href="#define">定义</a></li>
		<li><a href="#nature">实质</a></li>
		<li><a href="#when">何时使用</a></li>
		<li><a href="#solve">解决问题</a></li>
		<li><a href="#exam">实例</a></li>
		<li><a href="#good">优点</a></li>
		<li><a href="#bad">缺点</a></li>
		<li><a href="#position">使用场景</a></li>
		<li><a href="#UML">UML图实现</a></li>
		</ul>
		<div class="cls"></div>
		</div>
        </section>
        
        <section class="right"><a href="Upfront.jsp"><button class="button button--winona button--border-thin button--round-s" data-text="修改该模式"><span>Update</span></button></a>
        </section>
        <div class="name">
        <a name="name" class="linkcolor">模式名称，编号</a><br><hr><br>
        <%=m.getName()%>(21)
        </div>
        <div class="define">
        <a name="define" class="linkcolor">定义</a><br><hr><br>
        <%=m.getDefine()%>
        </div>
        <div class="nature">
        <a name="nature" class="linkcolor">实质</a><br><hr><br>
        <%=m.getNature()%>
        </div>
        <div class="when">
        <a name="when" class="linkcolor">何时使用</a><br><hr><br>
        <%=m.getWhen()%>
        </div>
        <div class="solve">
        <a name="solve" class="linkcolor">解决问题</a><br><hr><br>
        <%=m.getSolve()%>
        </div>
        <div class="exam">
        <a name="exam" class="linkcolor">实例</a><br><hr><br>
        <%=m.getExam()%>
        </div>
        <div class="good">
        <a name="good" class="linkcolor">优点</a><br><hr><br>
        <%=m.getGood()%>
        </div>
        <div class="bad">
        <a name="bad" class="linkcolor">缺点</a><br><hr><br>
        <%=m.getBad()%>
        </div>
        <div class="uml">
        <a name="UML" class="linkcolor">UML实现</a><br><hr><br>       
        <p>基本源代码以及实例源代码，请进入实例实现： 
        <a href="Code/中介者模式.txt">基本</a>
        <a href="Code/系统交互.txt">看电影</a>
<!--         <a href="Code/报价管理2.txt">报价管理</a> -->
<!--         <a href="Code/工资支付.txt">工资支付</a> -->
<!--         <a href="Code/容错恢复机制.txt">容错恢复机制</a> -->
        </p>
        
       	<img alt="这是此模式的UML图" src="images/Mediator.png" width="800px" height="600px">
       	
        </div>

        

    </section>


</body>
</html>