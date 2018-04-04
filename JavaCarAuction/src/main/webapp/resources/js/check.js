var idCheck = 0;
var pwdCheck = 0;
var nicknameCheck = 0;
$(document).ready(function() {
	$('#inputid').on(
			'change', function() {
				var token = $("meta[name='_csrf']").attr("content");
            	var header = $("meta[name='_csrf_header']").attr("content");
				$.ajax({
					type : 'POST',
					headers : {header : token},
					url : '/account/checkId.do',
					data : { "acc_id" : $('#inputid').val()},
					beforeSend: function(xhr) {
                    	xhr.setRequestHeader(header, token); 
                    	},
					success : function(data) {
						var uid = $('#inputid').val();
						var idReg = /^[a-zA-Z]+[a-z0-9A-Z]{3,19}$/g;
						if (idReg.test(uid)) {
						if ($.trim(data) != 0) {
							$('#idmessage').html('<p style="color:red; font-size:15px;"> 이미 가입된 아이디 입니다.</p>');
							$("#account1").prop("disabled", true);
							$("#account1").css("background-color", "#aaaaaa");
							$("#inputid").css("background-color", "#FFCECE");
							idCheck = 0;
						} else if (data == '0') {
		                    $("#inputid").css("background-color", "#B0F6AC");
		                    $('#idmessage').html('<p style="color:green; font-size:15px;"> 사용하실 수 있습니다.</p>');
		                    idCheck = 1;
		                    if(idCheck==1 && pwdCheck == 1 && nicknameCheck==1) {
		                        $("#account1").prop("disabled", false);
		                        $("#account1").css("background-color", "#4CAF50");
		                        link();
		                    } 
		                } else if (data == '1') {
		                    $("#account1").prop("disabled", true);
		                    $("#account1").css("background-color", "#aaaaaa");
		                    $("#inputid").css("background-color", "#FFCECE");
		                    idCheck = 0;
		                } else {
							$('#idmessage').html('');
						}
					} else {
						$('#idmessage').html('<p style="color:red; font-size:15px;"> ID는 영소문자로 시작하는 4~20자리 영문자 또는 숫자로 하세요.</p>');
						$("#account1").prop("disabled", true);
						$("#account1").css("background-color", "#aaaaaa");
						$("#inputid").css("background-color", "#FFCECE");
					}
					}
						
				}); //end ajax    
			}); //end on    
});

$(document).ready(function() {
	$('#acc_nickname').on(
			'change', function() {
				if($('#acc_nickname').val().length > 2) {
					var token = $("meta[name='_csrf']").attr("content");
	            	var header = $("meta[name='_csrf_header']").attr("content");
					$.ajax({
						type : 'POST',
						headers : {header : token},
						url : '/account/checknickname.do',
						data : { "acc_nickname" : $('#acc_nickname').val()},
						beforeSend: function(xhr) {
	                    	xhr.setRequestHeader(header, token); 
	                    	},
						success : function(data) {
							if ($.trim(data) != 0) {
								$('#1nicknamemessage').html('<p style="color:red; font-size:15px;"> 중복 닉네임 입니다.</p>');
								$("#account1").prop("disabled", true);
								$("#account1").css("background-color", "#aaaaaa");
								$("#acc_nickname").css("background-color", "#FFCECE");
								nicknameCheck = 0;
							} else if (data == '0') {
			                    $("#acc_nickname").css("background-color", "#B0F6AC");
			                    $('#1nicknamemessage').html('<p style="color:green; font-size:15px;"> 사용하실 수 있습니다.</p>');
			                    nicknameCheck = 1;
			                    if(idCheck==1 && pwdCheck == 1 && nicknameCheck==1) {
			                        $("#account1").prop("disabled", false);
			                        $("#account1").css("background-color", "#4CAF50");
			                        link();
			                    } 
			                } else if (data == '1') {
			                    $("#account1").prop("disabled", true);
			                    $("#account1").css("background-color", "#aaaaaa");
			                    $("#acc_nickname").css("background-color", "#FFCECE");
			                    nicknameCheck = 0;
			                } else {
								$('#1nicknamemessage').html('');
							}
						}
					});
				} else {
					$('#1nicknamemessage').html('<p style="color:red; font-size:15px;"> 3자리수 이상이어야 합니다.</p>');
					$("#account1").prop("disabled", true);
					$("#account1").css("background-color", "#aaaaaa");
					$("#acc_nickname").css("background-color", "#FFCECE");
				}
			});
});

$(document).ready(function() {
	$('#inputPasswordCheck, #inputPassword').on(
			'change', function() {
				var inputed = $('#inputPassword').val();
		        var reinputed = $('#inputPasswordCheck').val();
		        var pwReg = /^[a-zA-Z]+[a-z0-9A-Z!,@,#,$,%,^,&,*,?,_,~]{7,16}$/g;
		        if (pwReg.test(inputed)) {
		        if(reinputed=="" && (inputed != reinputed || inputed == reinputed)){
		        	$('#pwmessage').html('<p style="color:red; font-size:15px;"> 비밀번호을 입력하세요.</p>');
		            $("#account1").prop("disabled", true);
		            $("#account1").css("background-color", "#aaaaaa");
		            $("#inputPasswordCheck").css("background-color", "#FFCECE");
		        }
		        else if (inputed == reinputed) {
		            $("#inputPasswordCheck").css("background-color", "#B0F6AC");
		            $('#pwmessage').html('');
		            pwdCheck = 1;
		            if(idCheck==1 && pwdCheck == 1 && nicknameCheck==1) {
		                $("#account1").prop("disabled", false);
		                $("#account1").css("background-color", "#4CAF50");
		                $('#pwmessage').html('');
		                link();
		            }
		        } else if (inputed != reinputed) {
		            pwdCheck = 0;
		            $('#pwmessage').html('<p style="color:red; font-size:15px;"> 비밀번호가 틀립니다.</p>');
		            $("#account1").prop("disabled", true);
		            $("#account1").css("background-color", "#aaaaaa");
		            $("#inputPasswordCheck").css("background-color", "#FFCECE");
		            
		        }
			} else {
				$('#pwmessage').html('<p style="color:red; font-size:15px;"> password는 영대소문자 , 숫자 , 특수기호를 써서 8~15자리로 입력하세요.</p>');
				$("#account1").prop("disabled", true);
	            $("#account1").css("background-color", "#aaaaaa");
	            $("#inputPasswordCheck").css("background-color", "#FFCECE");
			}
			}); //end on    
});
var link = null;
$(document).ready(function() {
	$('#inputName , #inputNickname , #email_select, #acc_hp, #inputBirthDay').on(
			'change', link = function signupCheck() {
				var nickname = $("#inputName").val();
		        var email = $("#inputNickname").val();
		        var acc_nickname = $("#acc_nickname").val();
		        var acc_hp = $("#acc_hp").val();
		        var acc_birthday = $("#inputBirthDay").val();
		        var pattern = /^[가-힣]{2,5}$/;
		        var pattern2 = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		        var year = Number(acc_birthday.substr(0,4)); 
		        var month = Number(acc_birthday.substr(4,2));
		        var day = Number(acc_birthday.substr(6,2));
		        var today = new Date(); // 날자 변수 선언
		        var yearNow = today.getFullYear();
		        var adultYear = yearNow-20;
		        if(nickname=="") {
		        	 $('#name_daymessage').html('<p style="color:red; font-size:15px;"> 이름입력.</p>');
		        	 $("#account1").prop("disabled", true);
			         $("#account1").css("background-color", "#aaaaaa");
			         return;
		        } else if(pattern.test(nickname)) {
		        	$("#account1").prop("disabled", false);
	                $("#account1").css("background-color", "#4CAF50");
		        	$('#name_daymessage').html('');
		        } else {
		        	$('#name_daymessage').html('<p style="color:red; font-size:15px;"> 자음,모음만있는 한글 이름불가함 자릿수 2~5.</p>');
		        	 $("#account1").prop("disabled", true);
			            $("#account1").css("background-color", "#aaaaaa");
			            return;
		        }
		        if(email=="" || $('#email_select').val() == ""){
		        	$('#nicknamemessage').html('<p style="color:red; font-size:15px;"> 이메일입력.</p>');
		        	$("#account1").prop("disabled", true);
		            $("#account1").css("background-color", "#aaaaaa");
		            return;
		        } else {
		        	$("#account1").prop("disabled", false);
	                $("#account1").css("background-color", "#4CAF50");
	                $('#nicknamemessage').html('');
		        }
		        if(acc_hp=="") {
		        	 $('#profilemessage').html('<p style="color:red; font-size:15px;"> 번호입력.</p>');
		        	 $("#account1").prop("disabled", true);
			            $("#account1").css("background-color", "#aaaaaa");
		        } else if (pattern2.test(acc_hp)) {
		        	$("#account1").prop("disabled", false);
	                $("#account1").css("background-color", "#4CAF50");
		        	$('#profilemessage').html('');
		        } else {
		        	$('#profilemessage').html('<p style="color:red; font-size:15px;"> 숫자,-를 포함 입력.</p>');
		        	 $("#account1").prop("disabled", true);
			            $("#account1").css("background-color", "#aaaaaa");
		        }
		        if(acc_birthday=="") {
		        	$('#name_daymessage').html('<p style="color:red; font-size:15px;"> 생년월일입력.</p>');
		        	$("#account1").prop("disabled", true);
			        $("#account1").css("background-color", "#aaaaaa");
		       } else if (year < 1900 || year > adultYear){
		    	   $('#name_daymessage').html('<p style="color:red; font-size:15px;"> 년도를 확인하세여.'+adultYear+'년생 이전 출생자만 등록 가능합니다</p>');
		    	   $("#account1").prop("disabled", true);
			       $("#account1").css("background-color", "#aaaaaa");
		       } else if (month < 1 || month > 12) {
		    	   $('#name_daymessage').html('<p style="color:red; font-size:15px;"> 달은 1월부터 12월까지 입력 가능합니다</p>');
		    	   $("#account1").prop("disabled", true);
			       $("#account1").css("background-color", "#aaaaaa");
		       } else if (day < 1 || day > 31) {
		    	   $('#name_daymessage').html('<p style="color:red; font-size:15px;"> 일은 1일부터 31일까지 입력 가능합니다</p>');
		    	   $("#account1").prop("disabled", true);
			       $("#account1").css("background-color", "#aaaaaa");
		       } else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
		    	   $('#name_daymessage').html('<p style="color:red; font-size:15px;"> '+month+'월은 31일이 존재하지 않습니다</p>');
		    	   $("#account1").prop("disabled", true);
			       $("#account1").css("background-color", "#aaaaaa");
		       } else if (month == 2) {
		            var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		            if (day>29 || (day==29 && !isleap)) {
		            	$('#name_daymessage').html('<p style="color:red; font-size:15px;"> '+year+'년 2월은 '+day+' 일이 없습니다</p>');
		            	$("#account1").prop("disabled", true);
					       $("#account1").css("background-color", "#aaaaaa");
		            }
		       } else {
		    	   $("#account1").prop("disabled", false);
	                $("#account1").css("background-color", "#4CAF50");
		        	$('#name_daymessage').html('');
		       }
			}); //end on    
});


$("#end").click(function(){
    $("#inputid").val(null);
    $("#inputPassword").val('');
    $("#inputPasswordCheck").val('');
    $("#inputName").val('');
    $("#inputNickname").val('');
    $('#namemessage').html('');
    $('#nicknamemessage').html('');
    $('#pwmessage').html('<p class="help-block text-muted" id="pwmessage"> 비밀번호를 한번더 입력해주세요.</p>');
    $("#account1").prop("disabled", true);
    $("#account1").css("background-color", "#aaaaaa");
    $("#inputid").css("background-color", "#FFFFFF");
    $("#inputPasswordCheck").css("background-color", "#FFFFFF");
    $("#acc_nickname").css("background-color", "#FFFFFF");
    $('#nicknamemessage').html('');
});

$(function() {
	$('#email_select').change(function() {
		if ($('#email_select').val() == "1") {
			$("#last_email").val("");
			$("#last_email").prop("readonly", false);
		} else if ($('#email_select').val() == "") {
			$("#last_email").val("");
			$("#last_email").prop("readonly", true);
		} else {
			$("#last_email").val($('#email_select').val());
			$("#last_email").prop("readonly", true);
		}
	});
});

$('form#login').submit(
		function() {
			if ($('#inputLoginEmail').val() == '') {
				$('#loginemailmessage').html(
				'<p class="text-muted"> 아이디를 입력하세요 </p>');
				return false;
			} else {
				$('#loginemailmessage').html('');
			}

			if ($('#loginLoingPassword').val().length < 8) {
				$('#loginpwmessage').html(
				'<p class="text-muted"> 비밀번호가 너무 짧습니다. </p>')
				return false
			} else {
				$('#loginpwmessage').html('');
			}
			return true;
		});

$(document).ready(function(){
    
    $("#agreebut").click(function(){    
        if($("#agreebox1").is(":checked") == false){
            alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
            return;
        }else if($("#agreebox2").is(":checked") == false){
            alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다..");
            return;
        }else{
        	$('#agreeModal').modal('hide');
        	$('#registerModal').modal('show');
        }
    });    
});

    
$("#agreeand").click(function(){
	$("#agreebox1").prop("checked", false);
    $("#agreebox2").prop("checked", false);
});

//$(document).ready(function(){
//    // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
//    $(".menu>a").click(function(){
//        var submenu = $(this).next("ul");
//
//        // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
//        if( submenu.is(":visible") ){
//            submenu.slideUp();
//        }else{
//            submenu.slideDown();
//        }
//    });
//    $(".menu:eq(0)>a").click();
//});


