<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>picture</title>
		<link href="css/picture.css" rel="stylesheet" type="text/css" />
		<script>
			$(function(){
				//一段正则，匹配所有_min.的图片src属性
				var test = /_min\./
				//遍历所有的图片节点
				$("img").each(function(index,obj){	
					if(test.test($(this).attr("src"))){
						var reSrc = $(this).attr("src").replace(test,".");
						$(this).attr("src",reSrc)
					}
				})
			})
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
                    <li><font color="#FF9900" >图片</font></li>
                    <li><a href="daily.jsp">日记</a></li>
                    <li><a href="https://cyqand.wordpress.com/">博客</a></li>
	            </ul>
	        </div>
		</div>
		<div class="top_bar">
			<div class="top_bar_content">
				<ul>
					<li><a href="picture.jsp?name=美景">美景</a></li>
					<li><a href="picture.jsp?name=其他">其他</a></li>
				</ul>
			</div>
		</div>
		<div class="main">
			<%
				String picName = "";
				request.setCharacterEncoding("UTF-8");
				picName = request.getParameter("name");
				if(picName == null){
					picName = "美景";
				}
				String path = "E:\\programming\\project_file\\eclipse_file\\myNewWebsite\\WebContent\\image\\picture\\"+picName; //路径
				/* System.out.println(path); */
				File f = new File(path);
				if (!f.exists()){
			        out.println("“"+picName+"”"+"图库暂时没有图片");
				}else{
					File fa[] = f.listFiles();
					if(fa.length == 0){
						out.println("“"+picName+"”"+"图库暂时没有图片");
					}else{
						for(int i=0;i<fa.length;i++){
					        File fs = fa[i];
					        if (!fs.isDirectory()){
			%>
								<%-- <%= fs.getName() %><br /> --%>
								<div class="box">
									<div class="pic">
										<img alt="<%= picName %>" src="image/picture/<%= picName %>/<%= fs.getName() %>" />
									</div>
								</div>
			<%
					        }
				        }
					}
				}
			%>
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