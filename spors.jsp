<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="we.app.sdb.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sports Details</title>
</head>
<body>
<% 

List<Object> stu=new ArrayList<Object>();
//stu=sdm.show();
for(Object i:stu)
{
	if(i==null)
		out.println("null");
	out.print(i);
	out.print("heyyy");
}


out.print("hey");
%>
</body>
</html>