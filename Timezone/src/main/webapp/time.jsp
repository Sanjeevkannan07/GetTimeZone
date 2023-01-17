<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Current Time</title>
<style>
   *{
       padding:0;
       margin:0;
       box-sizing:border-box;
   }
   body{
       display: flex;
       height: 100vh;
       justify-content: center;
       align-items: center;
   }
   .container{
		width: 450px;
		height: 350px;
		background-color: #fff;
	    filter: drop-shadow(5px 5px 5px rgba(0,0,0,0.2));
   }
   h2{
		background-color: #EB3649;
		color: #fff;
		width:100%;
		height: 60px;
		line-height: 60px;
		text-align: center;
    }
    h3{
	    text-align:center;
	    margin-top:110px;
    }
</style>
</head>
<body>
   <div class="container">
      <h2>Time</h2>
      <h3>
         <% 
           String time = (String)request.getAttribute("t");
           out.println(time);
         %>
      </h3>
   </div>
</body>
</html>