<%@page import="Member.MemberBean"%>
<%@page import="Member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	MemberDao mdao = MemberDao.getInstance();
	MemberBean mb = mdao.getMemberInfo(id,password);
	String url;
	
	if(mb != null){
		String _id = mb.getId();
		if(_id.equals("admin")){
			url = request.getContextPath() + "main.jsp";
		}else{
			url = request.getContextPath() + "main.jsp";
		}
		
		session.setAttribute("memid", id); 
		session.setAttribute("memno", mb.getNo()); 
		
	}else{
		url = request.getContextPath() + "loginForm.jsp";
%>	
		<script type="text/javascript">
			alert("가입하지 않은 회원입니다. 회원가입 후 이용하시기 바랍니다.");
		</script>			
<%
	}
%>

<script type="text/javascript">
	location.href = "<%= url %>";
</script>