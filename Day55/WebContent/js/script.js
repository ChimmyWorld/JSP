function isDel(idx, cpath) {
			let del = confirm(idx + '번 글을 삭제하시겠습니까?');
			
			if (del) {
				location.href= cpath + '/board/delete.jsp?idx=' + idx;
			}
		}

function message(row, cpath){
	
	if (row != 0) {
		alert('삭제 성공');
		location.href = cpath + '/home.jsp';
	}
	else {
		alert('삭제 실패');
		history.back();
	}
}