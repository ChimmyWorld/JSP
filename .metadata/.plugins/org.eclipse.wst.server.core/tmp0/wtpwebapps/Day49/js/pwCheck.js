let userpw = document.getElementsByName('userpw');
		
userpw[1].onblur = () => {
	let msg = document.querySelector('.msg');
	
	if(userpw[0].value != userpw[1].value) {
		msg.innerText = '패스워드가 일치하지 않습니다'; 
		msg.style.color = 'red';
		
		userpw[0].focus();
		userpw[1].value = '';
	}
	else {
		msg.innerText = '패스워드가 일치합니다';
		msg.style.color = 'blue';
	}
}