<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="we.app.sdb.*" %>
<%@ page import="java.lang.Integer.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STUDENT WEB PORTAL</title>
</head>
<body>
<%= "<h3 style=\"text-align:center\">Welcome "+ request.getParameter("staff_name") + "</h3>" %>

<form action="staffdetails.jsp"> 
Name <input type="text" name="student_name"/>
Mark1 <input type="text" name="mark1"/>
Mark2 <input type="text" name="mark2"/>

<input type=submit value="create"/>
</form>
<%


student_db_map sdm= new student_db_map();
sdm.name=request.getParameter("student_name");
sdm.mark1=request.getParameter("mark1");
sdm.mark2=request.getParameter("mark2");
sdm.create();
out.println("Student added!! ");
List<Object> stu=new ArrayList<Object>();
stu=sdm.show();
for(Object i:stu)
{
	if(i==null)
		out.println(" ");
	else
	out.print(i);
}



%>
<form action="spors.jsp">

<input type="submit" value="submit"/>
</form>

</body>
</html>