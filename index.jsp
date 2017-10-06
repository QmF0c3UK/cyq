<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>myHomePage</title>
        <link href="css/index.css" rel="stylesheet" type="text/css" />
        <script src="js/myfocus-2.0.4.min.js" type="text/javascript"></script>
		<script type="text/javascript">
			myFocus.set({
				id:'pic_box',//焦点图盒子ID
				pattern:'mF_YSlider',//风格应用的名称
				time:3,//切换时间间隔(秒)
				trigger:'mouseover',//触发切换模式:'click'(点击)/'mouseover'(悬停)
	//			width:450,//设置图片区域宽度(像素)
	//			height:296,//设置图片区域高度(像素)
				txtHeight:'default'//文字层高度设置(像素),'default'为默认高度，0为隐藏
			});
		</script>
    </head>
    <body>
    	<div class="top">
        	<div class="top_content">
            	<img class="topImg" src="image/indexPic/logo.png" alt="logo">
                <form action="login.jsp">
                	<input type="submit" class="top_button" value="login"/>
                </form>
                <ul>
                	<li><a href="musicPlayer.jsp">音乐</a></li>
                    <li><a href="picture.jsp">图片</a></li>
                    <li><a href="daily.jsp">日记</a></li>
                    <li><a href="https://cyqand.wordpress.com/">博客</a></li>
                </ul>
            </div>
        </div>
        <div class="middle_box">
        	<div class="middle_picture_box" id="pic_box"><!--图片板块-->
            	<div class="middle_text_box">
                	<span class="middle_text_span_left">&nbsp;&nbsp;图片</span>  <span class="middle_text_span_right"><a href="picture.jsp"> >>查看全部图片</a></span>
                </div>
                <div class="loading"><img src="image/indexPic/loading.jpg" /></div>
            	<div class="pic">
                    <ul>
                        <li><img class="middle_pic" src="image/indexPic/introducePic/pic1.jpg" /></li>
                        <li><img class="middle_pic" src="image/indexPic/introducePic/pic2.jpg" /></li>
                    </ul>
                </div>
            </div>
            <div class="middle_blog_box"><!--博客板块-->
            	<div class="middle_text_box">
                	<span class="middle_text_span_left">&nbsp;&nbsp;博客</span>  <span class="middle_text_span_right"><a href="https://cyqand.wordpress.com/"> >>查看全部博客</a></span>
                </div>
                <div class="middle_blog_content_box">
                	<div class="blog_box">
                		<h3>eclipse快捷键入门</h3> 
                		<h4>十月 3, 2017</h4>
						报错就按ctrl+1<br />
						如果想快速找到一个未知的类可以用ctrl+shift+t来搜索&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://cyqand.wordpress.com/2017/10/03/eclipse%e5%bf%ab%e6%8d%b7%e9%94%ae%e5%85%a5%e9%97%a8/">>>看完整文章</a>
		   			</div>
		   			<div class="blog_box">
                		<h3>eclipse格式化代码快捷键</h3> 
                		<h4>十月 3, 2017</h4>
						格式化代码：<br />
						【Ctrl】+【Shitf】+【F】&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://cyqand.wordpress.com/2017/10/03/%e6%a0%bc%e5%bc%8f%e5%8c%96%e4%bb%a3%e7%a0%81%e5%bf%ab%e6%8d%b7%e9%94%ae/">>>看完整文章</a>
		   			</div>
                	<div class="blog_box">
                		<h3>eclipse关闭项目</h3> 
                		<h4>十月 3, 2017</h4>
						为什么要关闭项目？<br />
						Eclipse工作空间可以包含多个项目。项目可以处于打开状态或关闭状态。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://cyqand.wordpress.com/2017/10/03/eclipse%e5%85%b3%e9%97%ad%e9%a1%b9%e7%9b%ae/">>>看完整文章</a>
		   			</div>
                </div>
            </div>
            <div class="middle_daily_box"><!--微日记版块-->
            	<div class="middle_text_box">
                	<span class="middle_text_span_left">&nbsp;&nbsp;日记</span>  <span class="middle_text_span_right"><a href="daily.jsp"> >>查看全部日记</a></span>
                </div>
                <div class="middle_daily_content_box">
                	想要查看日记内容请转到<a href="daily.jsp">日记页面</a>查看
                </div>
            </div>
            <div class="middle_music_box"><!--音乐版块-->
            	<div class="middle_text_box">
                	<span class="middle_text_span_left">&nbsp;&nbsp;音乐</span>  <span class="middle_text_span_right"><a href="musicPlayer.jsp"> >>查看全部音乐</a></span>
                </div>
                <div class="middle_music_content_box">
                	<%
		   				String path = "E:\\programming\\project_file\\eclipse_file\\myNewWebsite\\WebContent\\music"; //路径
		   				/* System.out.println(path); */
		   				File f = new File(path);
		   				if (f.exists()){
		   					File fa[] = f.listFiles();
		   					if(fa.length > 0){
		   						int count;
		   						if(fa.length<9){
		   							count = fa.length;
		   						}else{
		   							count = 9;
		   						}
		   						for(int i=0;i<count;i++){
		   					        File fs = fa[i];
		   					        if (!fs.isDirectory()){
		   			%>
		   			                	<div class="music_box">
		   			                		<a href="musicPlayer.jsp?name=<%= fs.getName() %>">
		   			<%
			   									String name = fs.getName();
			   									int length = name.length();
			   		                			if(name!=null && length>=4){
			        	 							out.print(name.substring(0, length-4));
			        							}
		   			%>
			   		                		</a>
		   			                	</div>
		   			<%
		   					        }
		   				        }
		   					}
		   				}
                	%>
                </div>
            </div>
        </div>
        <div class="bottom_box">
            <div class="bottom_content">
                <ul>
                    <li>© 2017/9/29 Created by cyqand | <a href="contact.jsp">联系我</a></li>
                </ul>
            </div>
        </div>
    </body>
</html>