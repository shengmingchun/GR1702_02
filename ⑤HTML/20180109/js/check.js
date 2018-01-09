function checkform(){
	if (document.solign.uesrname.value=="") {
		alert("用户名不能为空，请重新输入！！！");
		return false;
	}
	if (document.solign.password.value=="") {
		alert("密码不能为空，请重新输入！！！");
		return false;
	}
}