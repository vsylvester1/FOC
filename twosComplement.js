function convert()
{
	   
        var num1 = parseInt(document.getElementById("firstNumber").value, 10);
		document.getElementById("displayFirstNumber").innerHTML = num1;
		
		if (num1 >= 0) {
			var convertedFirstNumber = num1.toString(2);
			document.getElementById("resultNumber1").innerHTML = convertedFirstNumber;
		}
		else
		{
			newnum1=num1+16;
			var convertedFirstNumber = newnum1.toString(2);
			document.getElementById("resultNumber1").innerHTML = convertedFirstNumber;
		}
		
        var num2 = parseInt(document.getElementById("secondNumber").value, 10);
		document.getElementById("displaySecondNumber").innerHTML = num2;
        if (num2 >= 0) {
			
			convertedSecondNumber = num2.toString(2);
			document.getElementById("resultNumber2").innerHTML = convertedSecondNumber;
		}
		else
		{
			newnum2=num2+16;
			convertedSecondNumber = newnum2.toString(2);
			document.getElementById("resultNumber2").innerHTML = convertedSecondNumber;
		}
	x = num1 + num2;
    if (x >= 0) {
		var positiveX=x.toString(2);
	document.getElementById("resultAddition").innerHTML = positiveX;
	}
    else
    {
       var newX = x+16;
	   negativeX=newX.toString(2);
	   document.getElementById("resultAddition").innerHTML = negativeX;
    }	   
	document.getElementById("intAddition").innerHTML = x;	
}

