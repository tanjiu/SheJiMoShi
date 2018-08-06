<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Css.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>设计模式</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
	<meta name="renderer" content="webkit">
	<style type="text/css">
		body{color:#222;-webkit-text-size-adjust:none;}
		body,h1,h2,h3,h4,h5,h6,hr,p,blockquote,dl, dt,dd,ul,ol,li,pre,form,fieldset,legend,button,input,textarea,th,td,iframe{margin:0; padding:0;}
		h1,h2,h3,h4,h5,h6{font-size:100%;}
		body,button,input,select,textarea {font-family:Tahoma,Arial,Roboto,”Droid Sans”,”Helvetica Neue”,”Droid Sans Fallback”,”Heiti SC”,sans-self;font-size:62.5%; line-height:1.5;}
		ol,ul{list-style:none;}
		
		html,body{ width:100%; height:100%; overflow:hidden;}
		.section-wrap{ width:100%;height:100%;overflow:visible;transition:transform 1s cubic-bezier(0.86,0,0.03,1);-webkit-transition:-webkit-transform 1s cubic-bezier(0.86,0,0.03,1);}
		.section-wrap .section{ position:relative; width:100%; height:100%; background-position:center center; background-repeat:no-repeat;}
		.section-wrap .section .title{width:100%;position:absolute;top:10%;color:#fff;font-size:2.4em;text-align:center;}
		.section-wrap .section .title p{ padding:0 4%;opacity:0}
		.section-wrap .section .title.active .tit{ opacity:1;transform:translateY(-25px);-webkit-transform:translateY(-25px);transition:all 2s cubic-bezier(0.86,0,0.8,1);-webkit-transition:all 2s cubic-bezier(0.86,0,0.8,1);}
		.section-wrap .section .content{
		margin-top:200px;
		width:100%;
		position:absolute;
		top:10%;
		color:#fff;
		font-size:50px;
		text-align:center;}
		.section-wrap .section .content2{
		margin-top:200px;
		margin-left:600px;
		width:100%;
		position:absolute;
		top:10%;
		color:#fff;
		font-size:30px;
		text-align:left;}
		.section-wrap .section .content3{
		padding-top:200px;
		padding-left:300px;
		padding-right:300px;
		width:936px;
		position:absolute;
		top:10%;
		color:#fff;
		font-size:30px;
		text-align:left;}
		.section-wrap .section .content4{
		padding-top:200px;
		padding-left:300px;
		padding-right:300px;
		width:936px;
		position:absolute;
		top:10%;
		color:#fff;
		font-size:30px;
		text-align:center;}
		.section-wrap .section-1{ background-color:#337ab7}
		.section-wrap .section-2{ background-color:#5cb85c}
		.section-wrap .section-3{ background-color:#5bc0de}
		.section-wrap .section-4{ background-color:#f0ad4e}
		.section-wrap .section-5{ background-color:#d9534f}
		.put-section-0{ transform:translateY(0);-webkit-transform:translateY(0);}
		.put-section-1{ transform:translateY(-100%);-webkit-transform:translateY(-100%);}
		.put-section-2{ transform:translateY(-200%);-webkit-transform:translateY(-200%);}
		.put-section-3{ transform:translateY(-300%);-webkit-transform:translateY(-300%);}
		.put-section-4{ transform:translateY(-400%);-webkit-transform:translateY(-400%);}
		.section-btn{ width:14px;position:fixed;right:4%;top:50%;}
		.section-btn li{ width:14px;height:14px;cursor:pointer;text-indent:-9999px;border-radius:50%;-webkit-border-radius:50%;margin-bottom:12px; background:#BD362F;text-align:center; color:#fff; onsor:pointer;}
		.section-btn li.on{ background:#fff}
		.arrow{ opacity:1;animation:arrow 3s cubic-bezier(0.5,0,0.1,1) infinite;-webkit-animation:arrow 3s cubic-bezier(0.5,0,0.1,1) infinite;transform:rotate(-90deg);-webkit-transform:rotate(-90deg); position:absolute;bottom:10px;left:50%;margin-left:-30px;width:60px;height:60px;border-radius:100%;-webkit-border-radius:100%;line-height:60px;text-align:center;font-size:20px;color:#fff;border:1px solid #fff;cursor:pointer;overflow:hidden;}
		.arrow:hover{ animation-play-state:paused;-webkit-animation-play-state:paused;}
		@keyframes arrow{ %0,%100{bottom:10px; opacity:1;} 50%{bottom:50px; opacity:.5} }
		@-webkit-keyframes arrow{ %0,%100{bottom:10px; opacity:1;} 50%{bottom:50px; opacity:.5} }
	</style>

</head>
<body class="all">
	<section class="section-wrap">
		<div class="section section-1">
			<div class="title active">
				<p class="tit">欢迎</p>
			</div>
			<div class="content">
			<p class="tit">Welcome to my DesignPattern ! </p>
			</div>
		</div>
		<div class="section section-2">
			<div class="title">
				<p class="tit">个人信息</p>
			</div>
			<div class="content2">
			<p>姓名： 邵明军</p>
			<p>学号：20164228</p>
			<p>专业班级：  计算机五班</p>
			<p>学院：信息科学与工程学院</p>
			</div>
			
			
		</div>
		<div class="section section-3">
			<div class="title">
				<p class="tit">什么是设计模式</p>
			</div>
			<div class="content3">
			<p>设计模式通常是对于某一类的软件设计问题的可重用的解决方案，将设计模式引入软件设计和开发过程，其目的就在于要充分利用已有的软件开发经验。</p>
			<p>设计模式的种类很多，主要有结构型模式，行为型模式，创建型模式三大类。</p>
			</div>
		</div>
		<div class="section section-4">
			<div class="title">
				<p class="tit">在这里你能学到什么</p>
			</div>
			<div class="content3">
			<p>在此知识系统中，我将设计模式的知识分为四大类，对于每一种设计模式，从其十个属性分析该模式。</p>
			<p>四大类：结构型模式，行为型模式，创建型模式，设计原则</p>
			<p>十个方面：名称，定义，实质，何时使用，解决什么问题，应用实例，优点，缺点，使用场景，UML类图及其衍生实例。</p>
			<p color="red">注：UML图是一种设计模式的具象化，需熟记</p>
			</div>
			
		</div>
		<div class="section section-5">
			<div class="title">
				<p class="tit">我的看法</p>
			</div>
			<div class="content4">		<p>无论哪种原则,其存在的意义在于如何能使设计出的程序符合高内聚低耦合复用性高的特点，设计模式也是一样
		没有最优的设计模式，每种设计模式都有其优缺点，设计人员做得更多的是让程序里包含的设计原则相互之间处于
		一种平衡状态，既能使系统流畅的运转，又可相对简化其内部代码。
		</p>
		<p><a href="Factory.jsp"> So, let's go !</a></p>
		</div>
			
		</div>
	</section>
	<ul class="section-btn">
	  <li class="on"></li>
	  <li></li>
	  <li></li>
	  <li></li>
	  <li></li>
	</ul>
	<div class="arrow">&laquo;</div>


<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
	//此处引用：鼠标滚轮mousewheel插件
	!function(a){"function"==typeof define&&define.amd?define(["jquery"],a):"object"==typeof exports?module.exports=a:a(jQuery)}(function(a){function b(b){var g=b||window.event,h=i.call(arguments,1),j=0,l=0,m=0,n=0,o=0,p=0;if(b=a.event.fix(g),b.type="mousewheel","detail"in g&&(m=-1*g.detail),"wheelDelta"in g&&(m=g.wheelDelta),"wheelDeltaY"in g&&(m=g.wheelDeltaY),"wheelDeltaX"in g&&(l=-1*g.wheelDeltaX),"axis"in g&&g.axis===g.HORIZONTAL_AXIS&&(l=-1*m,m=0),j=0===m?l:m,"deltaY"in g&&(m=-1*g.deltaY,j=m),"deltaX"in g&&(l=g.deltaX,0===m&&(j=-1*l)),0!==m||0!==l){if(1===g.deltaMode){var q=a.data(this,"mousewheel-line-height");j*=q,m*=q,l*=q}else if(2===g.deltaMode){var r=a.data(this,"mousewheel-page-height");j*=r,m*=r,l*=r}if(n=Math.max(Math.abs(m),Math.abs(l)),(!f||f>n)&&(f=n,d(g,n)&&(f/=40)),d(g,n)&&(j/=40,l/=40,m/=40),j=Math[j>=1?"floor":"ceil"](j/f),l=Math[l>=1?"floor":"ceil"](l/f),m=Math[m>=1?"floor":"ceil"](m/f),k.settings.normalizeOffset&&this.getBoundingClientRect){var s=this.getBoundingClientRect();o=b.clientX-s.left,p=b.clientY-s.top}return b.deltaX=l,b.deltaY=m,b.deltaFactor=f,b.offsetX=o,b.offsetY=p,b.deltaMode=0,h.unshift(b,j,l,m),e&&clearTimeout(e),e=setTimeout(c,200),(a.event.dispatch||a.event.handle).apply(this,h)}}function c(){f=null}function d(a,b){return k.settings.adjustOldDeltas&&"mousewheel"===a.type&&b%120===0}var e,f,g=["wheel","mousewheel","DOMMouseScroll","MozMousePixelScroll"],h="onwheel"in document||document.documentMode>=9?["wheel"]:["mousewheel","DomMouseScroll","MozMousePixelScroll"],i=Array.prototype.slice;if(a.event.fixHooks)for(var j=g.length;j;)a.event.fixHooks[g[--j]]=a.event.mouseHooks;var k=a.event.special.mousewheel={version:"3.1.12",setup:function(){if(this.addEventListener)for(var c=h.length;c;)this.addEventListener(h[--c],b,!1);else this.onmousewheel=b;a.data(this,"mousewheel-line-height",k.getLineHeight(this)),a.data(this,"mousewheel-page-height",k.getPageHeight(this))},teardown:function(){if(this.removeEventListener)for(var c=h.length;c;)this.removeEventListener(h[--c],b,!1);else this.onmousewheel=null;a.removeData(this,"mousewheel-line-height"),a.removeData(this,"mousewheel-page-height")},getLineHeight:function(b){var c=a(b),d=c["offsetParent"in a.fn?"offsetParent":"parent"]();return d.length||(d=a("body")),parseInt(d.css("fontSize"),10)||parseInt(c.css("fontSize"),10)||16},getPageHeight:function(b){return a(b).height()},settings:{adjustOldDeltas:!0,normalizeOffset:!0}};a.fn.extend({mousewheel:function(a){return a?this.bind("mousewheel",a):this.trigger("mousewheel")},unmousewheel:function(a){return this.unbind("mousewheel",a)}})});
	
	$(function(){
		var i=0;
		var $btn = $('.section-btn li'),
			$wrap = $('.section-wrap'),
			$arrow = $('.arrow');
		
		/*当前页面赋值*/
		function up(){i++;if(i==$btn.length){i=0};}
		function down(){i--;if(i<0){i=$btn.length-1};}
		
		/*页面滑动*/
		function run(){
			$btn.eq(i).addClass('on').siblings().removeClass('on');	
			$wrap.attr("class","section-wrap").addClass(function() { return "put-section-"+i; }).find('.section').eq(i).find('.title').addClass('active');
		};
		
		/*右侧按钮点击*/
		$btn.each(function(index) {
			$(this).click(function(){
				i=index;
				run();
			})
		});
		
		/*翻页按钮点击*/
		$arrow.one('click',go);
		function go(){
			up();run();	
			setTimeout(function(){$arrow.one('click',go)},1000)
		};
		
		/*响应鼠标*/
		$wrap.one('mousewheel',mouse_);
		function mouse_(event){
			if(event.deltaY<0) {up()}
			else{down()}
			run();
			setTimeout(function(){$wrap.one('mousewheel',mouse_)},1000)
		};
		
		/*响应键盘上下键*/
		$(document).one('keydown',k);
		function k(event){
			var e=event||window.event;
			var key=e.keyCode||e.which||e.charCode;
			switch(key)	{
				case 38: down();run();	
				break;
				case 40: up();run();	
				break;
			};
			setTimeout(function(){$(document).one('keydown',k)},1000);
		}
	});
</script>
</body>
</html>