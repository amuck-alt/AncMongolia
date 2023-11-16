
function maxLengthCheck(object){
    if (object.value.length > object.maxLength){
        object.value = object.value.slice(0, object.maxLength);
    }    
}

function onlyKorean(inputId) { 
	var str = document.getElementById(inputId).value; 
	for (i = 0; i < str.length; i++) { 
		if (!((str.charCodeAt(i) > 0x3130 && str.charCodeAt(i) < 0x318F) || (str.charCodeAt(i) >= 0xAC00 && str.charCodeAt(i) <= 0xD7A3))) { 
			alert("한글만 입력해 주세요"); 
			document.getElementById(inputId).value=''; 
		} 
	} 
}
