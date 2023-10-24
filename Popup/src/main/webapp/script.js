var isCheck = false;
var use;
var pwuse;
var pwerror;

$(function(){
	$("input[name=id]").keydown(function(){
		$("idmessage").css('display','none');
		isCheck = false;
		use = "";
	});
});

function writeSave(){
	if($("input[name=id]").val() == ""){
		alert("아이디를 입력하세요.");
		$("input[name=id]").focus();
		isBlank = true;
		return false;
	}else if(use == "impossible"){
		alert("중복체크 먼저 하세요.");
		return false;
	}
	
	if($("input[name=password]").val() == ""){
		alert("비밀번호를 입력하세요");
		$("input[name=password]").focus();
		return false;
	}
	
	if($('input[name="repassword"]').val()==""){
		alert("비밀번호 확인을 입력하세요");
		$("input[name=repassword]").focus();
		return false;
	}
	
	if(pwuse == "nosame"){
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
	
	if(pwerror == "error"){
		alert("비밀번호 형식이 올바르지 않습니다.");
		return false;
	}
	alert(pwerror);
	
} // writeSave

function duplicate(){
	isCheck = true;
	
	if($("input[name=id]").val() == ""){
		alert("아이디를 입력하세요.");
		$("input[name=id]").focus();
		isBlank = true;
		return;
	}
	
	$.ajax({
			url : "id_check_proc.jsp",
			data : ({
				userid : $("input[name=id]").val() // userid=kim
			}),
			success : function(data){
				if($.trim(data) == "YES"){
					$("#idmessage").html("<font color=black>사용 가능한 아이디입니다.</font>")
					$("#idmessage").show();
					use = "possible";
				}else{
					$("#idmessage").html("<font color=red>중복된 아이디입니다.</font>")
					$("#idmessage").show();
					use = "impossible";
				}
			}
		}); // ajax
		
} // duplicate

function passwordcheck_keyup(){
	if($('input[name="password"]').val() == $('input[name="passwordcheck"]').val() ){
		$('#pwmessage').html("<font color=black>비밀번호가 일치합니다.</font");
		pwuse = "same";
	}else{
		$('#pwmessage').html("<font color=red>비밀번호가 일치하지 않습니다.</font");
		pwuse = "nosame";
	}
} // passwordcheck

function passwordcheck(){
	
	//alert(2);
	pvalue = $('input[name="password"]').val();
	var regexp = /^[a-z0-9]{8,12}$/;
	if(pvalue.search(regexp) == -1){
		alert('길이는 3~8로 입력하세요.');
		pwerror = "error";
		return false;
	}
	var chk_eng = pvalue.search(/[a-z]/i);
	var chk_num = pvalue.search(/[0-9]/);
	
	if(chk_eng<0 || chk_num<0){
		alert('영문 소문자/숫자 조합이 아닙니다.');
		pwerror = "error";
		return false;
	}else{
		pwerror = "";
	}
}