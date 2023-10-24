<%@page import="Member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="mb" class=Member.MemberBean></jsp:useBean>
<jsp:setProperty property="*" name="mb"/>

<%
	MemberDao mdao = MemberDao.getInstance();
	int cnt = mdao.insertMember(mb);
	String url, msg;
	
	if(cnt > 0){
		msg = "회원가입에 성공하였습니다.";
		url = request.getContextPath()+"/main.jsp";
	}else{
		msg = "회원가입에 실패하였습니다.";
   		url = request.getContextPath()+"/shop/member/register.jsp";
	}
%>

<script type="text/javascript">
	alert("<%= msg %>");
	location.href="<%= url %>"
</script>