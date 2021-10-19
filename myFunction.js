function myFunction() {

  var num1 = parseInt(document.getElementById("firstNumber").value, 10);
  var n = num1.toString(2);
  document.getElementById("demo").innerHTML = n;
}
