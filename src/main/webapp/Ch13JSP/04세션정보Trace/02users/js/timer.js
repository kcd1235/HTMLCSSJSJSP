	
	
	function counting(time)
	{
		var max = time;
		var timer = document.getElementById("timer");
		timer.innerHTML=max;
		max=max-1;
		if(max<0)
		{
			//반복종료
			clearInterval(tmp);
			alert("세션시간이 만료되어 로그인페이지로 이동합니다");
			location.href="../C04Login.jsp";
		}
	}
	tmp = setInterval(counting,1000);