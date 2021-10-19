var inputOneIsOn = false; 
var inputTwoIsOn = false;


function toggleImage() {
   var img1 = "http://doit.ub.edu.bz/pluginfile.php/14234/mod_resource/content/1/button-off-xxl.png";
   var img2 = "http://doit.ub.edu.bz/pluginfile.php/14235/mod_resource/content/1/button-on-xxl.png";
  
   
   var imgElement = document.getElementById('toggleImage');


   imgElement.src = (imgElement.src === img1)? img2 : img1;
   
   
}

  
function toggleImage2() {
   var img1 = "http://doit.ub.edu.bz/pluginfile.php/14234/mod_resource/content/1/button-off-xxl.png";
   var img2 = "http://doit.ub.edu.bz/pluginfile.php/14235/mod_resource/content/1/button-on-xxl.png";
  
   
   var imgElement = document.getElementById('toggleImage2');


   imgElement.src = (imgElement.src === img1)? img2 : img1;
   
   
}

    function toggleInputOne() { 
            inputOneIsOn = !inputOneIsOn; 
            
        } 

    function toggleInputTwo() { 
            inputTwoIsOn = !inputTwoIsOn; 
              
           
        } 



function and(){
    var a = inputOneIsOn;
    var b = inputTwoIsOn;
    
	  
            console.log('Input one is on: ', 
                                inputOneIsOn); 
								
	        console.log('Input two is on: ', 
                                inputTwoIsOn); 
	
    
    if(inputOneIsOn&&inputTwoIsOn)
        document.getElementById('andGate').src='and2on.png';
    else if (!inputOneIsOn && inputTwoIsOn) 
        document.getElementById('andGate').src='andoffon.png';
	else if (inputOneIsOn && !inputTwoIsOn) 
        document.getElementById('andGate').src='andonoff.png';
	else if (!inputOneIsOn && !inputTwoIsOn) 
        document.getElementById('andGate').src='and2off.png';
	}
