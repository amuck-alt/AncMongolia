function inputYMDNumber(obj) {
	if(event.keyCode != 8) {
		if(obj.value.replace(/[0-9 \-]/g, "").length == 0) {
			let number = obj.value.replace(/[^0-9]/g,"");
			let ymd = "";
			if(number.length < 4) {
				return number;
			} else if(number.length < 6){
				ymd += number.substr(0, 4);
				ymd += "-";
				ymd += number.substr(4);
			} else {
				ymd += number.substr(0, 4);
				ymd += "-";
				ymd += number.substr(4, 2);
				ymd += "-";
				ymd += number.substr(6);
			}
			obj.value = ymd;
		} else {
			alert("숫자 이외의 값은 입력하실 수 없습니다.");
			obj.value = obj.value.replace(/[^0-9 ^\-]/g,"");
			return false;
		}
	} else {
		return false;
	}
}


const autoHyphen = (target) => {
 target.value = target.value
   .replace(/[^0-9]/g, '')
   .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
}


    function inputTimeColon(time) {

        // 먼저 기존에 들어가 있을 수 있는 콜론(:)기호를 제거한다.
        var replaceTime = time.value.replace(/\:/g, "");

        // 글자수가 4 ~ 5개 사이일때만 동작하게 고정한다.
        if(replaceTime.length >= 4 && replaceTime.length < 5) {

            // 시간을 추출
            var hours = replaceTime.substring(0, 2);

            // 분을 추출
            var minute = replaceTime.substring(2, 4);

            // 시간은 24:00를 넘길 수 없게 세팅
            if(hours + minute > 2400) {
                alert("시간은 24시를 넘길 수 없습니다.");
                time.value = "24:00";
                return false;
            }

            // 분은 60분을 넘길 수 없게 세팅
            if(minute > 60) {
                alert("분은 60분을 넘길 수 없습니다.");
                time.value = hours + ":00";
                return false;
            }

            // 콜론을 넣어 시간을 완성하고 반환한다.
            time.value = hours + ":" + minute;
        }
    }

