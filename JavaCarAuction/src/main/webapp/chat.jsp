<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>

<title>채팅창</title>

</head>
<body>
	<fieldset>
		<input id="inputName" type="hidden" name="name" value="${user.acc_name}">
		<textarea id="messageWindow" rows="10" cols="50" readonly
			style="resize: none;"></textarea>
		<br /> <input id="inputMessage" type="text"> 
		<input type="submit" value="보내기" onclick="send()">
		<input type="submit" value="나가기" onclick="exit()">
	</fieldset>
</body>
<script type="text/javascript">
	var textarea = document.getElementById("messageWindow");
	var webSocket = new WebSocket('ws://192.168.0.79:80/broadcasting');
	var inputMessage = document.getElementById('inputMessage');
	var inputName = document.getElementById('inputName');
	webSocket.onerror = function(event) {
		onError(event)
	};
	webSocket.onopen = function(event) {
		onOpen(event)
	};
	webSocket.onclose = function(event) {
		onClose(event)
	};

	webSocket.onmessage = function(event) {
		onMessage(event)
	};

	function onMessage(event) {
		textarea.value += event.data + "\n";
	}
	function onOpen(event) {
		textarea.value += "채팅방에 입장하셨습니다.\n";
	}
	function onClose(event) {
		webSocket.send(inputName.value + "님이 채팅방을 나갔습니다.");
	}
	function onError(event) {
		alert(event.data);
	}
	function send() {
		textarea.value += "나: " + inputMessage.value + "\n";
		webSocket.send(inputName.value + ":" + inputMessage.value);
		inputMessage.value = "";

	}

	function exit() {
		alert("채팅방을 나갑니다.");
		onClose();
		window.close();
	}
</script>
</html>