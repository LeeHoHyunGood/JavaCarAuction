<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- modal -->
<div id="loginModal" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title text-muted">로그인</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="login"
					action="j_spring_security_check" method="post">
					<div class="form-group">
						<div class="col-sm-6 center-block">
							<input class="form-control" id="inputLoginEmail" type="text"
								name="acc_id" placeholder="아이디">
							<div class="col-sm-6" id="loignemailmessage"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<input class="form-control" id="inputLoginPassword"
								type="password" name="acc_pw" placeholder="비밀번호">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							<div class="col-sm-6" id="loginpwmessage"></div>
						</div>
					</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-default" type="submit">로그인</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
			</form>
		</div>

	</div>
</div>

<div id="registerModal" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title text-muted">회원가입</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" action="accountjoin.do"
					method="post">
					<div class="form-group">
						<div class="col-sm-8 center">
							<input required class="form-control" id="inputid" type="text"
								name="acc_id" placeholder="아이디">
						</div>
						<div style="margin-bottom: -30px;">
						<p class="help-block" id="idmessage"></p>
					</div>
					</div>
					<div class="form-group" style="margin-bottom: -30px;">
						<div class="col-sm-6">
							<input required class="form-control" id="inputPassword"
								type="password" name="acc_pw" placeholder="비밀번호">
							<p class="help-block text-muted">숫자, 특수문자 포함 8자 이상</p>
						</div>
					</div>
					<div class="form-group" style="margin-bottom: -30px;">
						<div class="col-sm-6">
							<input class="form-control" name="reacc_pw"
								id="inputPasswordCheck" type="password" placeholder="비밀번호 확인">
							<p class="help-block text-muted" id="pwmessage">비밀번호를 한번 더
								입력해주세요.</p>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-8 center">
							<input required class="form-control" id="acc_nickname" type="text"
								name="acc_nickname" placeholder="닉네임">
							<p class="help-block" id="1nicknamemessage"></p>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<input class="form-control" id="inputName" type="text"
								name="acc_name" placeholder="이름">
								<input class="form-control" id="inputBirthDay" type="text"
								name="acc_birthday" placeholder="생년월일 예(: 19950228">
							<p class="help-block" id="name_daymessage"></p>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<input class="form-control" id="inputNickname" type="text"
								name="acc_email" placeholder="이메일"><input
								class="form-control" type="text" name="acc_email2"
								id="last_email" placeholder="이메일 뒷주소" /> <select
								class="form-control" id="email_select">
								<option value="" selected>::선택하기::</option>
								<option value="naver.com">naver.com</option>
								<option value="nate.com">nate.com</option>
								<option value="daum.net">daum.net</option>
								<option value="gmail.com">gmail.com</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="bondingedu.com">bondingedu.com</option>
								<option value="hanmir.com">hanmir.com</option>
								<option value="empas.com">empas.com</option>
								<option value="dreamwiz.com">dreamwiz.com</option>
								<option value="korea.com">korea.com</option>
								<option value="lycos.co.kr">lycos.co.kr</option>
								<option value="freechal.com">freechal.com</option>
								<option value="1">::직접입력::</option>
							</select>
							<p class="help-block" id="nicknamemessage"></p>
						</div>
					</div>

					<div class="form-group">
						<div class="radio">
							<label class="col-sm-4 control-label text-muted"> <input
								type="radio" name="acc_sex" id="optionsRadios1" value="M" checked>
								남자
							</label>
						</div>

						<div class="radio">
							<label class="col-sm-4 control-label text-muted"> <input
								type="radio" name="acc_sex" id="optionsRadios2" value="W">
								여자
							</label>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<input type="text" name="acc_hp" class="form-control" id="acc_hp"
								placeholder="전화번호 예(: 010-0000-0000 -포함시킬것">
							<p class="help-block" id="profilemessage"></p>
						</div>
					</div>
					<div class="modal-footer">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<button class="btn btn-primary" id="account1" type="submit"
							disabled="disabled" style="background-color: #aaaaaa">
							회원가입<i class="fa fa-check spaceLeft"></i>
						</button>
						<button class="btn btn-default" type="reset">다시작성</button>
						<button type="button" class="btn btn-default" id="end"
							data-dismiss="modal">닫기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<div id="agreeModal" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title text-muted">약관동의</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" action="accounts/register_proc.do"
					method="post">
					<div class="form-group">
						<div class="col-sm-8 center">
							<p class="help-block text-muted">회원가입을 위해서 아래 서비스 이용약관,
								개인정보수집 및 이용약관에 관한 안내를 읽고 동의해 주세요.</p>
							<p class="help-block text-muted">회사 이용약관</p>
							<textarea cols="80" rows="5" style="font-size: 1em; resize: none"
								readonly="readonly">제1장 총칙

제1조 목적

이용약관
이용약관
 제 1 장 총 칙  제 1 조- 목적 본 약관은 주식회사 회사 (이하 "회사")와 인터넷시설제공업 관련사업자 사업자 (이하 "사업자")간에 회사가 제공하는 온라인 회사에 대한 회사와 회원의 권리, 의무 및 기타 필요한 사항을 규정함을 목적으로 합니다.</textarea>
							<p class="help-block text-muted">
								<input type="checkbox" id="agreebox1" name="chk_affl_agree" />회사
								이용 약관에 동의합니다.
							</p>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<p class="help-block text-muted">회사 개인정보 보호정책</p>
							<textarea cols="80" rows="5" style="font-size: 1em; resize: none"
								readonly="readonly">제1장 총칙
수집하는 개인정보 항목 및 수집방법
가. 수집하는 개인정보의 항목
첫째, 회사는 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
<회원가입>
- 이름, 생년월일, 아이디, 비밀번호, 휴대폰 번호, 이메일(선택), 가입인증정보
둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록
셋째, 회사 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다.
넷째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.
- 신용카드 결제시 : 카드번호, 유효기간 등
- 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등
나. 개인정보 수집방법
회사는 다음과 같은 방법으로 개인정보를 수집합니다.
- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청
- 협력회사로부터의 제공
- 생성정보 수집 툴을 통한 수집</textarea>
							<p class="help-block text-muted">
								<input type="checkbox" id="agreebox2" name="chk_affl_agree" />회사
								개인정보 보호 정책에 동의합니다.
							</p>
						</div>
					</div>

					<div class="modal-footer">
					<li class="nav-item"><a class="spq"></a></li>
						<button class="btn btn-primary" id="agreebut" type="button">
							모두 동의합니다<i class="fa fa-check spaceLeft"></i>
							
						</button>
						<button class="btn btn-default" type="reset">동의 하지 않습니다</button>
						<button type="button" class="btn btn-default" id="agreeand"
							data-dismiss="modal">닫기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<div id="deleteaccount" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title text-muted">회원탈퇴</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" action="/deleteUser_proc.do"
					method="post">
					<div class="form-group">
						<div class="col-sm-8 center">
							<p style="color: black;">확인버튼을 눌르면 정말로 회원 탈퇴 됩니다 정말로 하시겠습니까</p>
					<input name="acc_idx" type="hidden" value="${user.acc_idx }" />
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-default" type="submit">
							확인<i class="fa fa-check spaceLeft"></i>
						</button>
						<button type="button" class="btn btn-default" id="end"
							data-dismiss="modal">닫기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>