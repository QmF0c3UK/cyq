<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>contact</title>
		<link href="css/contact.css" rel="stylesheet" type="text/css" />
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
			<div class="form_box">
				<input type="text" value="Name" class="userNameText" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
				<br /><br />
				<input type="text" value="Email" class="EmailText" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
				<br /><br />
				<input type="text" value="Phone" class="phoneText" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}">
				<br /><br />
				<textarea class="messageText" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message..</textarea>
				<br /><br />
				<div class="submit-btn">
					<form>
						<input type="submit" value="提交" class="submit_button">
					</form>
				</div>
			</div>
		</div>
		<div class="bottom_box">
            <div class="bottom_content">
                <ul>
                    <li class="bottom_content_li1">© 2017/9/29 Created by cyqand
                    <li><a href="index.jsp">返回首页</a></li>
                </ul>
            </div>
        </div>
	</body>
</html>