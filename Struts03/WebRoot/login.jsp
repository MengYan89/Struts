<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="LoginAction_.action" method="post">
    	<table>
    		<tr>
    			<td>用户名</td>
    			<td><input type="text" name="adminName" ></td>
    			<td><s:fielderror fieldName="adminName"></s:fielderror></td>
    		</tr>
    		<tr>
    			<td>密码</td>
    			<td><input type="password" name="adminPwd"></td>
    			<td><s:fielderror fieldName="adminPwd"></s:fielderror></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="登陆"></td>
    			<td><input type="button" onclick="location.href='index.jsp'"  value="返回"></td>
    			<td><a onclick="location.href='RetrievePasswordAction_.action'">忘记密码</a></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>