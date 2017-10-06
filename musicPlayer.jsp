<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>musicPlayer</title>
    <link href="css/musicPlayer.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
    	<%
			int length = 0;
	        request.setCharacterEncoding("UTF-8");
			String name = request.getParameter("name");
			/* System.out.println(name); */
			if(name!=null){
				length = name.length();
			}else{
				name = "";
			}
		%>
        <div class="top">
            <div class="top_content">
                <img class="topImg" src="image/indexPic/logo.png" alt="logo">
                <form action="login.jsp">
                	<input type="submit" class="top_button" value="login"/>
                </form>
                <ul>
                    <li><font color="#FF9900" >音乐</font></li>
                    <li><a href="picture.jsp">图片</a></li>
                    <li><a href="daily.jsp">日记</a></li>
                    <li><a href="https://cyqand.wordpress.com/">博客</a></li>
                </ul>
            </div>
        </div>
        <div class="middle_player_box"><!--外面大框-->
        	<div class="middle_music_list_box"><!--音乐列表-->
           		<ul>
					<%
						String path = "E:\\programming\\project_file\\eclipse_file\\myNewWebsite\\WebContent\\music"; //路径
						File f = new File(path);
						if (!f.exists()){
					        out.println(path+" not exists");
					        return;
						}
						File fa[] = f.listFiles();
						for(int i=0;i<fa.length;i++){
					        File fs = fa[i];
					        if (!fs.isDirectory()){
					%>
								<a href="musicPlayer.jsp?name=<%= fs.getName() %>"><%= fs.getName() %></a><br />
					<%
					        }
						}
					%>
	    		</ul>
            </div>
            <div class="middle_music_play_box"><!--播放框-->
            	<div class="middle_music_name_box"><!--播放歌曲的名字-->
					<%
		        		if(name!=null && length>=4){
		        	 		out.print(name.substring(0, length-4));
		        		}
		        	%>
                </div>
                <div class="middle_music_control_box"><!--播放控制按钮-->
                	<%
                		if(!name.equals("")){
					%>
                			<embed src="music/<%= name %>" hidden="false" autostart="true" loop="false" class="control_bar" palette="red|black" /> 
                	<%
                		}
                	%>
                </div>
            </div>
        </div>
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