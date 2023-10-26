function logout(cpath) {
		let url = cpath + '/login';
		
		fetch(url, { method: 'delete'})
		.then(response => { 
			// console.log('로그아웃!!!');
		})
		
		//location.reload();
		msg(cpath, '로그아웃 완료');
	}

function msg(cpath, text) {
	alert(text);
	location.href = cpath;
}