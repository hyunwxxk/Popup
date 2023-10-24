<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="top.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <style type="text/css">
  	h2{
  		position: relative;
  		left: 400px;
  		
  	}
  </style>
</head>
<body>

<div class="container">
  <h2>로그인</h2>
  <hr>
  <form class="form-inline" action="<%= request.getContextPath() %>/shop/member/register.jsp">
    <table align="center">
      <tr>
        <td><label for="id">ID :</label></td>
        <td><input type="text" class="form-control" id="id" placeholder="Enter ID" name="id"></td>
      </tr>
      <tr>
        <td><label for="password">Password :</label></td>
        <td><input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password"></td>
      </tr>
      <tr>
        <td colspan="2">
        	<input type="submit" class="btn btn-default" value="로그인">
        	<input type="button" value="회원가입" class="btn btn-default" onclick="location.href='<%= request.getContextPath() %>/shop/member/register.jsp'">
			<input type="button" value="아이디 찾기" class="btn btn-default" onclick="location.href='findid.jsp'">
			<input type="button" value="비번 찾기" class="btn btn-default" onclick="location.href='findpassword.jsp'">
        </td>
      </tr>
    </table>
  </form>
</div>

</body>
</html>

<%@ include file="bottom.jsp" %>