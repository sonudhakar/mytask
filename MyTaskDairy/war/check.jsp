<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js" type="text/javascript"></script>
   <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
 <script type="text/javascript" src="https://www.google.com/jsapi"></script>
 
 <script type="text/javascript">
 
 function call11()
 {
 	
 	 var servlet = "exchange";                //the name (URI) of your servlet
 	var oauthverifier="<%=request.getParameter("oauth_verifier") %>";
 	  var req = servlet+"?oauthverifier="+oauthverifier;           //compiling the request

 	  addrequest(req);                          //calls the addrequest function
 	  request.onreadystatechange = function(){
 	  	//this is used to listen for changes in the request's status
 	  	
 	  	  	if(request.readyState==4 && request.status==200){
 	  	  
 	  
 	  	  	}
 	}
 }
 	function addrequest(req) {
 	  try {                                     //create a request for netscape, mozilla, opera, etc.
 	      request = new XMLHttpRequest();
 	  }catch (e) {

 	      try {                                 //create a request for internet explorer
 	          request = new ActiveXObject("Microsoft.XMLHTTP");
 	      }catch (e) {                           //do some error-handling
 	         // alert("XMLHttpRequest error: " + e);
 	      }
 	  }

 	  request.open("GET",req,true);       //prepare the request
 	  request.send(null);                       //send it
 	  return request;                           //return the request
 	}
 
 </script>
</head>
<body onload="call11()">

</body>
</html>