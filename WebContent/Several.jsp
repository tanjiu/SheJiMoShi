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
<link rel="stylesheet" href="yangshi/Css.css">
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
			});)</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>设计原则</title>
</head>
<body>

<div class="top">
			设计原则
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

        

        <div class="name">
        <a name="name" class="linkcolor">单一职责原则</a><br><hr><br>
        <p>一个类只负责一个功能领域中的相应职责，或者可以定义为：就一个类而言，应该只有一个引起它变化的原因。</p>
        </div>
        <div class="define">
        <a name="define" class="linkcolor">里氏代换原则</a><br><hr><br>
		<p>所有引用基类（父类）的地方必须能透明地使用其子类的对象。</p>
        </div>
        <div class="x1">
        <a name="nature" class="linkcolor">依赖倒转原则</a><br><hr><br>
        <p>抽象不应该依赖于细节，细节应当依赖于抽象。换言之，要针对接口编程，而不是针对实现编程。</p>
        </div>
        <div class="when">
        <a name="when" class="linkcolor">接口隔离原则</a><br><hr><br>
        <p>使用多个专门的接口，而不使用单一的总接口，即客户端不应该依赖那些它不需要的接口。</p>
        </div>
        <div class="solve">
        <a name="solve" class="linkcolor">开放封闭原则</a><br><hr><br>
        <p>一个软件实体应当对扩展开放，对修改关闭。即软件实体应尽量在不修改原有代码的情况下进行扩展。</p>
        </div>
        <div class="exam">
        <a name="exam" class="linkcolor">迪米特法则</a><br><hr><br>
		<p>一个软件实体应当尽可能少地与其他实体发生相互作用</p>
        </div>




        

    </section>


</body>
</html>