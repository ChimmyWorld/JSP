function message(msg, row) {
	if (row != 0) {
	alert(msg);
	location.href= 'home.jsp';
	}
	else {
		alert(msg);
			history.back();
		}
}
