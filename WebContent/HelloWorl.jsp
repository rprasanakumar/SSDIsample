<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Person data</title>

</head>
<body>
<table border ="2" bgcolor="red">
<tr>
   <th>SSN</th>
   <th>Name</th>
   <th>Age</th>
</tr>
<% 
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","123");
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from user");
	while(rs.next())
	{
		int ssn = rs.getInt(1);
		String name = rs.getString(2);
		String age = rs.getString(3); %>
	<tr>
	<td><% out.println(ssn); %></td>
	<td><% out.println(name); %></td>
	<td><% out.println(age); %></td>
	</tr>
	<% }con.close(); %>

</table>
</body>
</html>