<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<%@ include file="../../top.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>회원가입</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/script.js"></script>
</head>

<style type="text/css">
  	h2{
  		position: relative;
  		left: 350px;
  		
  	}
  	
  	.form-control3{
	    height: 34px;
	    padding: 6px 12px;
	    font-size: 14px;
	    line-height: 1.42857143;
	    color: #555;
	    background-color: #fff;
	    background-image: none;
	    border: 1px solid #ccc;
	    border-radius: 4px;
  	}
  	
  	.form-control2{
	    height: 34px;
	    padding: 6px 12px;
	    font-size: 14px;
	    line-height: 1.42857143;
	    color: #555;
	    background-color: #fff;
	    background-image: none;
	    border: 1px solid #ccc;
	    border-radius: 4px;
  	}
  	
  	.register{
  		border-collapse: separate;
    	border-spacing: 10px;
  	}
  	
  	h2{
  		position: relative;
  		left: 400px;
  	}
  	
</style>

<body>

<div class="container">
  <h2>신규회원 가입</h2>
  <hr>
  <form action="registerPro.jsp" method="post" onSubmit="return writeSave()">
    <table align="center" width="40%" id="register">
      <tr>
        <td><label for="id">ID</label></td>
       </tr>
       <tr>
        <td>
        	<input type="text" class="form-control2" id="id" placeholder="Enter ID" name="id">
        	<input type="button" value="중복체크" class="btn btn-default" onClick="return duplicate()">
			<span id="idmessage"></span>
        </td>
      </tr>
      <tr>
        <td>
        	<label for="password">비밀번호</label>
        </td>
       </tr>
       <tr>
        <td>
        	<input type="password" class="form-control2" id="password" placeholder="Enter password" name="password" onBlur="return passwordcheck()">
        	<span id="pwmessage"></span>
        </td>
      </tr>
      <tr>
        <td><label for="passwordcheck">비밀번호 확인</label></td>
      </tr>
       <tr>
        <td><input type="password" class="form-control2" id="passwordcheck" placeholder="Enter password" name="passwordcheck" onKeyUp="return passwordcheck_keyup()"></td>
      </tr>
      <tr>
        <td><label for="name">이름</label></td>
      </tr>
      <tr>
        <td><input type="text" class="form-control2" id="name" placeholder="Enter name" name="name"></td>
      </tr>
      <tr>
        <td><label for="ssn">주민등록번호</label></td>
      </tr>
      <tr>
        <td>
       		<input type="text" class="form-control2" id="ssn1" name="ssn1" size="6">-
       		<input type="text" class="form-control2" id="ssn2" name="ssn2" size="7">
        </td>
      </tr>
      <tr>
        <td><label for="email">Email</label></td>
      </tr>
      <tr>
        <td><input type="text" class="form-control2" id="email" placeholder="Enter Email" name="email"></td>
      </tr>
      <tr>
        <td><label for="hp">전화번호</label></td>
      </tr>
      <tr>
        <td>
       		<input type="text" class="form-control2" id="hp1" name="hp1" size="6">-
       		<input type="text" class="form-control2" id="hp2" name="hp2" size="7">-
       		<input type="text" class="form-control2" id="hp3" name="hp3" size="7">
        </td>
      </tr>
      <tr>
		 	<td><label for="purpose">가입목적</label></td>
      </tr>
      <tr>
        <td><input type="text" class="form-control" id="purpose" name="purpose"></td>
      </tr>
      <tr>
        <td colspan="2"><input type="submit" value="가입" class="btn btn-default"></td>
      </tr>
    </table>
  </form>
</div>

</body>
</html>


<%@ include file="../../bottom.jsp" %>