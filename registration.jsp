<%@page import="java.sql.Time"%>
<%@page import="com.sun.glass.ui.Timer"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.tomcat.util.http.parser.Cookie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>registration</title>
		<link href="css/registration.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div class="top">
	        <div class="top_content">
	            <img class="topImg" src="image/indexPic/logo.png" alt="logo">
	            <ul>
                	<li><a href="musicPlayer.jsp">音乐</a></li>
                    <li><a href="picture.jsp">图片</a></li>
                    <li><a href="daily.jsp">日记</a></li>
                    <li><a href="https://cyqand.wordpress.com/">博客</a></li>
	            </ul>
	        </div>
		</div>

		<div class="form_box">
			<form action="registrationServlet" method="post">
				<div class="text_box">
					用户：<input name="username" value="" class="userNameText"  />
					密码：<input name="password" type="password" value="" class="passwordText"  />
				</div>
				<div class="button_box">
					<input type="submit" name="login" value="注册" class="zhuce_button" />
				</div>
				<br /><br />
				<%
		        	request.setCharacterEncoding("UTF-8");
		        	String message = request.getParameter("message");
		        	if(message != null){
		        		out.println("<font color='red'>"+message+"</font>");
		        	}
		        %>
			</form>
		</div>
		
		<div class="bottom_box">
            <div class="bottom_content">
                <ul>
                    <li class="bottom_content_li1">© 2017/9/29 Created by cyqand | <a href="contact.jsp">联系我</a></li>
                    <li class="bottom_content_li2"><a href="index.jsp">返回首页</a></li>
                    <li><a href="login.jsp">登陆</a></li>
                </ul>
            </div>
        </div>
	</body>
</html>