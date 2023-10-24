<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="main.jsp">전시/팝업</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="main.jsp">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">팝업/전시 일정 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">팝업일정</a></li>
          <li><a href="#">전시일정</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">예매 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">팝업</a></li>
          <li><a href="#">전시</a></li>
        </ul>
      </li>
      <li><a href="#">자유게시판</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="<%= request.getContextPath() %>/shop/member/register.jsp"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
      <li><a href="loginForm.jsp"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
    </ul>
  </div>
</nav>

</body>
</html>