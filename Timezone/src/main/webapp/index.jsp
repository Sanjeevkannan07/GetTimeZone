<%@page import="java.util.TimeZone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>Time zone</title>
</head>
<body>
 <div class="container">
   <h2>Time Zone</h2>
   <form action="getTime" method="get">
       <select name="option">
           <%
 				String[] timezones = TimeZone.getAvailableIDs();
                for(String i : timezones){
                	out.println("<option>"+ i + "</option>");
                }
           
           %>
       </select>
       <button>Submit</button>
   </form>
  </div> 
</body>
</html>