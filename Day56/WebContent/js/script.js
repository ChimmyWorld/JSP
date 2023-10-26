function isDel(idx, cpath) {
	let del = confirm(idx + '번 글 삭제?');
	
	if (del) {
		location.href = cpath + '/board/delete.jsp?idx=' + idx; 
	}
}

function message(row, cpath, msg) {
	if (row != 0) {
		alert(`${msg} 완료`);
		location.href = cpath + '/home.jsp';
	}
	else {
		alert(`${msg} 실패`);
		history.back();
	}
}