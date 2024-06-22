function Check() {
		var id = document.getElementById("id");
		var pwd = document.getElementById("pwd");
		var name = document.getElementById("name");
		var email = document.getElementById("email");

		if (id.value == '') {
			alert('아이디를 입력해주세요.');
			id.focus();
			return false;
		}
		
		if (pwd.value.length < 4 || pwd.value.length > 10) {
			alert("[비밀번호]\n 최소 4자에서 최대 10자까지 입력하세요");
			pwd.focus();
			return false;
		}

		if (name.value.length < 1 || name.value.length > 10) {
			alert("[이름]\n 최소 1자에서 최대 10자까지 입력하세요");
			name.focus();
			return false;
		}


		if (email.value.indexOf('@') == -1 || email.value.indexOf('.') == -1) {
		    alert("[이메일]\n 올바른 이메일 형식이 아닙니다.");
		    email.focus();
		    return false;
		}

		document.update.submit();
		return true;
	}