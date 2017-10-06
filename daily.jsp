<%@page import="com.cyq.myweb.tool.XMLManager"%>
<%@page import="com.cyq.myweb.tool.DailyManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>daily</title>
		<link href="css/daily.css" rel="stylesheet" type="text/css" />
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
                    <li><font color="#FF9900" >日记</font></li>
                    <li><a href="https://cyqand.wordpress.com/">博客</a></li>
	            </ul>
	        </div>
		</div>
		
		<%
			Cookie[] cookies = request.getCookies();
	        if(cookies != null && cookies.length>0){
	        	Boolean flag = false;
	            for(Cookie cookie : cookies){
	                System.out.println(cookie.getName() + ":" + cookie.getValue());
	                if(cookie.getName().equals("username")){
	                	flag = true;
	                }
	            }
	            if(!flag){
	            	request.getRequestDispatcher("login.jsp?message=您没有登陆，登陆后才能看日记内容").forward(request, response);
	            }
	        }else{
	        	request.getRequestDispatcher("login.jsp?message=您没有登陆，登陆后才能看日记内容").forward(request, response);
	        }
	    %>
		<form action="dailyServlet" method="POST">
			<div class="middle_box">
		        <table width="1000" border="0" align="center" cellpadding="10" cellspacing="0" >
					<tr>
						<td class="input_box">
						  <table width="1000" border="0" cellspacing="0" cellpadding="10">
						      <tr>
								<td width="907" class="input_text_box">
								    <textarea class="input_text" name="input_text" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'input your thought';}" >input your thought...</textarea>
								</td>
								<td width="93" class="submit_button_box">
								     <input type="submit" class="submit_button" value="发表"/>
								</td>
						      </tr>
						  </table>
						</td>
					</tr>
						<tr>
						  <td>
		<%
							System.out.println("进入");
							String[][] results = new DailyManager().readAll(XMLManager.dailyContentFile);
							if(results == null){
								System.out.println("挂了");
							}
							System.out.println(results.length);
							for(int i=results.length-1; i>=0; i--){
		%>
								<div class="middle_content_box">
						        	<h2> <%= results[i][0] %></h2> <br />
						        	<%= results[i][2] %> <br />
						        	<%= results[i][1] %><br />
						    	</div>
		<%					
							}
		%>

		<% 
		
		
		%>
						  </td>
					</tr>
		        </table>
		    </div>
	    </form>

		<div class="bottom_box">
            <div class="bottom_content">
                <ul>
                    <li class="bottom_content_li1">© 2017/9/29 Created by cyqand | <a href="contact.jsp">联系我</a></li>
                    <li><a href="index.jsp">返回首页</a></li>
                </ul>
            </div>
        </div>
	</body>
</html>