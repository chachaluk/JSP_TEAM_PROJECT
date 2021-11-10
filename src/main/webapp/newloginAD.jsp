<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<meta content="text/html; chrset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {
	display:none;
}
</style>
<title>Insert title here</title>
</head>
<body>
<h2 class="w3-center">automatic</h2>

<div class="w3-content w3-section" style="max-width:500px">
	<img class="mySlides" src="img1.jpg" style="width:100%">
	<img class="mySlides" src="img2.jpg" style="width:100%">
	<img class="mySlides" src="img3.jpg" style="width:100%">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 1000); // Change image every 2 seconds
}
</script>
</body>
</html>