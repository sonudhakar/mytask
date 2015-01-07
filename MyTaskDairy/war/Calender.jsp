<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page 
    import="java.io.IOException"
import="java.io.PrintWriter"
import="java.text.DateFormat"
import="java.text.ParseException"
import="java.text.SimpleDateFormat"
import="java.util.ArrayList"
import="java.util.Date"
import="java.util.Iterator"
import="java.util.List"

import="javax.jdo.PersistenceManager"
import="javax.jdo.PersistenceManagerFactory"
import="javax.servlet.http.*"

import="org.json.JSONArray"
import="org.json.JSONException"
import="org.json.JSONObject"

import="com.google.appengine.api.datastore.KeyFactory"
import="com.google.appengine.api.datastore.Key"
    %>
<!DOCTYPE HTML>
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
var f=0;
var txtFocus;
var day;
var ttdate;
var m;
var d;
var globlecheck;
var dayji;
var dis=0;
var checkji=false;
var checkji1=false;
var y;
var self1=0;
var globletextid;
var total1=0;
var c=0;
var position;
var monthname;
var clickx=0;
var clicky=0;
var checkforcounterx=0;
var checkforcountery=0;
var checktop1=0;
var checktop2=0;
var checktop3=0;
var checktop4=0;
var checktop5=0;
var checktop6=0;
var checktop7=0;
var tasknamearray=new Array();
var taskduedatearray=new Array();
var taskcardid=new Array();
var taskboardid=new Array();
var yy;
x=0;
y=0;
function showcalender1()
{
	document.getElementById("statistics").style.display="none";
	document.getElementById("newtaskcreation").style.display="none";
	document.getElementById("taskview").style.display="block";
	var dd=new Date();
	 dayji = parseInt(dd.getDate());
	 ttdate=dayji;
    m = parseInt(dd.getMonth())+1; //January is 0!
    y = parseInt(dd.getFullYear());
    document.getElementById("taskdate").value=dayji+"/"+m+"/"+y;
    yy=y;
    if(m==1)
 	 {
 	 monthname="Jan";
 	 }
  else if(m==2)
 	 {
 	 monthname="Feb";
 	 }
  else if(m==3)
	 {
	 monthname="Mar";
	 }
  else if(m==4)
	 {
	 monthname="Apr";
	 }
  else if(m==5)
	 {
	 monthname="May";
	 }
  else if(m==6)
	 {
	 monthname="Jun";
	 }
  else if(m==7)
	 {
	 monthname="Jul";
	 }
  else if(m==8)
	 {
	 monthname="Aug";
	 }
  else if(m==9)
	 {
	 monthname="Sep";
	 }
  else if(m==10)
	 {
	 monthname="Oct";
	 }
  else if(m==11)
	 {
	 monthname="Nov";
	 }
  else if(m==12)
	 {
	 monthname="Dec";
	 }
		document.getElementById("monthpanel").innerHTML=monthname;
		document.getElementById("yearpanel").innerHTML=y;
    showcalender(m,y);
    
}

function plus()
{
	checktop1=0;
	checktop2=0;
	checktop3=0;
	checktop4=0;
	checktop5=0;
	checktop6=0;
	checktop7=0;
	document.getElementById("d1").style.backgroundColor="white";
	document.getElementById("d2").style.backgroundColor="white";
	document.getElementById("d3").style.backgroundColor="white";
	document.getElementById("d4").style.backgroundColor="white";
	document.getElementById("d5").style.backgroundColor="white";
	document.getElementById("d6").style.backgroundColor="white";
	document.getElementById("d7").style.backgroundColor="white";
	document.getElementById("d8").style.backgroundColor="white";
	document.getElementById("d9").style.backgroundColor="white";
	document.getElementById("d10").style.backgroundColor="white";
	document.getElementById("d11").style.backgroundColor="white";
	document.getElementById("d12").style.backgroundColor="white";
	document.getElementById("d13").style.backgroundColor="white";
	document.getElementById("d14").style.backgroundColor="white";
	document.getElementById("d15").style.backgroundColor="white";
	document.getElementById("d16").style.backgroundColor="white";
	document.getElementById("d17").style.backgroundColor="white";
	document.getElementById("d18").style.backgroundColor="white";
	document.getElementById("d19").style.backgroundColor="white";
	document.getElementById("d20").style.backgroundColor="white";
	document.getElementById("d21").style.backgroundColor="white";
	document.getElementById("d22").style.backgroundColor="white";
	document.getElementById("d23").style.backgroundColor="white";
	document.getElementById("d24").style.backgroundColor="white";
	document.getElementById("d25").style.backgroundColor="white";
	document.getElementById("d26").style.backgroundColor="white";
	document.getElementById("d27").style.backgroundColor="white";
	document.getElementById("d28").style.backgroundColor="white";
	document.getElementById("d29").style.backgroundColor="white";
	document.getElementById("d30").style.backgroundColor="white";
	document.getElementById("d31").style.backgroundColor="white";
	document.getElementById("d32").style.backgroundColor="white";
	document.getElementById("d33").style.backgroundColor="white";
	document.getElementById("d34").style.backgroundColor="white";
	document.getElementById("d35").style.backgroundColor="white";
	document.getElementById("d36").style.backgroundColor="white";
	document.getElementById("d37").style.backgroundColor="white";
	
	if(checkforcounterx==0 && checkforcountery==0)
	{
	
	var monthconversion=document.getElementById("monthpanel").innerHTML;
	var yearconversion=document.getElementById("yearpanel").innerHTML;
	if(monthconversion=="Jan")
	 {
	m=1;
	 }
else if(monthconversion=="Feb")
	 {
	 m=2;
	 }
	else if(monthconversion=="Mar")
	{
		m=3;
	}
	else if(monthconversion=="Apr")
	{
	 m=4;
	 }
	 else if(monthconversion=="May")
	 {
		 m=5;
	}
	 else if(monthconversion=="Jun")
	 {
	 m=6;
	 }
	 else if(monthconversion=="Jul")
	 {
	 m=7;
	 }
	 else if(monthconversion=="Aug")
	 {
	 m=8;
	 }
	 else if(monthconversion=="Sep")
	 {
	 m=9;
	 }
	 else if(monthconversion=="Oct")
	 {
	 m=10;
	 }
	 else if(monthconversion=="Nov")
	 {
	 m=11;
	 }
	 else if(monthconversion=="Dec")
	 {
	 m=12;
	 }
	yy=parseInt(yearconversion);
	if(m==12)
	{
	
	yy++;
	
	m=1;
	
	if(m==1)
 	 {
 	 monthname="Jan";
 	 }
  else if(m==2)
 	 {
 	 monthname="Feb";
 	 }
  else if(m==3)
	 {
	 monthname="Mar";
	 }
  else if(m==4)
	 {
	 monthname="Apr";
	 }
  else if(m==5)
	 {
	 monthname="May";
	 }
  else if(m==6)
	 {
	 monthname="Jun";
	 }
  else if(m==7)
	 {
	 monthname="Jul";
	 }
  else if(m==8)
	 {
	 monthname="Aug";
	 }
  else if(m==9)
	 {
	 monthname="Sep";
	 }
  else if(m==10)
	 {
	 monthname="Oct";
	 }
  else if(m==11)
	 {
	 monthname="Nov";
	 }
  else if(m==12)
	 {
	 monthname="Dec";
	 }
		document.getElementById("monthpanel").innerHTML=monthname;
		document.getElementById("yearpanel").innerHTML=yy;
	showcalender(m,yy);
	}
else
	{
	m++;
	
	if(m==1)
  	 {
  	 monthname="Jan";
  	 }
   else if(m==2)
  	 {
  	 monthname="Feb";
  	 }
   else if(m==3)
	 {
	 monthname="Mar";
	 }
   else if(m==4)
	 {
	 monthname="Apr";
	 }
   else if(m==5)
	 {
	 monthname="May";
	 }
   else if(m==6)
	 {
	 monthname="Jun";
	 }
   else if(m==7)
	 {
	 monthname="Jul";
	 }
   else if(m==8)
	 {
	 monthname="Aug";
	 }
   else if(m==9)
	 {
	 monthname="Sep";
	 }
   else if(m==10)
	 {
	 monthname="Oct";
	 }
   else if(m==11)
	 {
	 monthname="Nov";
	 }
   else if(m==12)
	 {
	 monthname="Dec";
	 }
		document.getElementById("monthpanel").innerHTML=monthname;
		document.getElementById("yearpanel").innerHTML=yy;
		showcalender(m,yy);
	}
	
	
	}
else if(checkforcounterx==1 && checkforcountery==1)
	{
	// coding for the text control whether textboxes are focused or not
	if(f==0)
		{
	var monthconversion=document.getElementById("month").value;
	var yearconversion=document.getElementById("year").value;
	if(monthconversion=="Jan")
	 {
	m=1;
	 }
else if(monthconversion=="Feb")
	 {
	 m=2;
	 }
	else if(monthconversion=="Mar")
	{
		m=3;
	}
	else if(monthconversion=="Apr")
	{
	 m=4;
	 }
	 else if(monthconversion=="May")
	 {
		 m=5;
	}
	 else if(monthconversion=="Jun")
	 {
	 m=6;
	 }
	 else if(monthconversion=="Jul")
	 {
	 m=7;
	 }
	 else if(monthconversion=="Aug")
	 {
	 m=8;
	 }
	 else if(monthconversion=="Sep")
	 {
	 m=9;
	 }
	 else if(monthconversion=="Oct")
	 {
	 m=10;
	 }
	 else if(monthconversion=="Nov")
	 {
	 m=11;
	 }
	 else if(monthconversion=="Dec")
	 {
	 m=12;
	 }
	yy=parseInt(yearconversion);
	if(m==12)
		{
		
		yy++;
		
		m=1;
		
		if(m==1)
   	 {
   	 monthname="Jan";
   	 }
    else if(m==2)
   	 {
   	 monthname="Feb";
   	 }
    else if(m==3)
	 {
	 monthname="Mar";
	 }
    else if(m==4)
	 {
	 monthname="Apr";
	 }
    else if(m==5)
	 {
	 monthname="May";
	 }
    else if(m==6)
	 {
	 monthname="Jun";
	 }
    else if(m==7)
	 {
	 monthname="Jul";
	 }
    else if(m==8)
	 {
	 monthname="Aug";
	 }
    else if(m==9)
	 {
	 monthname="Sep";
	 }
    else if(m==10)
	 {
	 monthname="Oct";
	 }
    else if(m==11)
	 {
	 monthname="Nov";
	 }
    else if(m==12)
	 {
	 monthname="Dec";
	 }
		document.getElementById("month").value=monthname;
		document.getElementById("year").value=yy;
		showcalender(m,yy);
		}
	else
		{
		m++;
		
		if(m==1)
	   	 {
	   	 monthname="Jan";
	   	 }
	    else if(m==2)
	   	 {
	   	 monthname="Feb";
	   	 }
	    else if(m==3)
		 {
		 monthname="Mar";
		 }
	    else if(m==4)
		 {
		 monthname="Apr";
		 }
	    else if(m==5)
		 {
		 monthname="May";
		 }
	    else if(m==6)
		 {
		 monthname="Jun";
		 }
	    else if(m==7)
		 {
		 monthname="Jul";
		 }
	    else if(m==8)
		 {
		 monthname="Aug";
		 }
	    else if(m==9)
		 {
		 monthname="Sep";
		 }
	    else if(m==10)
		 {
		 monthname="Oct";
		 }
	    else if(m==11)
		 {
		 monthname="Nov";
		 }
	    else if(m==12)
		 {
		 monthname="Dec";
		 }
			document.getElementById("month").value=monthname;
			document.getElementById("year").value=yy;
			showcalender(m,yy);
		}
	
	
	}
	else if(f==1)
		{
		
		if(txtFocus)
			{
			
			var monthconversion=document.getElementById("month").value;
			var yearconversion=document.getElementById("year").value;
			if(monthconversion=="Jan")
			 {
			m=1;
			 }
		else if(monthconversion=="Feb")
			 {
			 m=2;
			 }
			else if(monthconversion=="Mar")
			{
				m=3;
			}
			else if(monthconversion=="Apr")
			{
			 m=4;
			 }
			 else if(monthconversion=="May")
			 {
				 m=5;
			}
			 else if(monthconversion=="Jun")
			 {
			 m=6;
			 }
			 else if(monthconversion=="Jul")
			 {
			 m=7;
			 }
			 else if(monthconversion=="Aug")
			 {
			 m=8;
			 }
			 else if(monthconversion=="Sep")
			 {
			 m=9;
			 }
			 else if(monthconversion=="Oct")
			 {
			 m=10;
			 }
			 else if(monthconversion=="Nov")
			 {
			 m=11;
			 }
			 else if(monthconversion=="Dec")
			 {
			 m=12;
			 }
			yy=parseInt(yearconversion);
			yy++;
				
				if(m==1)
		   	 {
		   	 monthname="Jan";
		   	 }
		    else if(m==2)
		   	 {
		   	 monthname="Feb";
		   	 }
		    else if(m==3)
			 {
			 monthname="Mar";
			 }
		    else if(m==4)
			 {
			 monthname="Apr";
			 }
		    else if(m==5)
			 {
			 monthname="May";
			 }
		    else if(m==6)
			 {
			 monthname="Jun";
			 }
		    else if(m==7)
			 {
			 monthname="Jul";
			 }
		    else if(m==8)
			 {
			 monthname="Aug";
			 }
		    else if(m==9)
			 {
			 monthname="Sep";
			 }
		    else if(m==10)
			 {
			 monthname="Oct";
			 }
		    else if(m==11)
			 {
			 monthname="Nov";
			 }
		    else if(m==12)
			 {
			 monthname="Dec";
			 }
				document.getElementById("month").value=monthname;
				document.getElementById("year").value=yy;
				showcalender(m,yy);
				
			
			}
		
		}
	}
else if(checkforcounterx==0 && checkforcountery==1)
	{
	if(f==0)
	{
var monthconversion=document.getElementById("monthpanel").innerHTML;
var yearconversion=document.getElementById("year").value;
if(monthconversion=="Jan")
 {
m=1;
 }
else if(monthconversion=="Feb")
 {
 m=2;
 }
else if(monthconversion=="Mar")
{
	m=3;
}
else if(monthconversion=="Apr")
{
 m=4;
 }
 else if(monthconversion=="May")
 {
	 m=5;
}
 else if(monthconversion=="Jun")
 {
 m=6;
 }
 else if(monthconversion=="Jul")
 {
 m=7;
 }
 else if(monthconversion=="Aug")
 {
 m=8;
 }
 else if(monthconversion=="Sep")
 {
 m=9;
 }
 else if(monthconversion=="Oct")
 {
 m=10;
 }
 else if(monthconversion=="Nov")
 {
 m=11;
 }
 else if(monthconversion=="Dec")
 {
 m=12;
 }
yy=parseInt(yearconversion);
if(m==12)
	{
	
	yy++;
	
	m=1;
	
	if(m==1)
	 {
	 monthname="Jan";
	 }
else if(m==2)
	 {
	 monthname="Feb";
	 }
else if(m==3)
 {
 monthname="Mar";
 }
else if(m==4)
 {
 monthname="Apr";
 }
else if(m==5)
 {
 monthname="May";
 }
else if(m==6)
 {
 monthname="Jun";
 }
else if(m==7)
 {
 monthname="Jul";
 }
else if(m==8)
 {
 monthname="Aug";
 }
else if(m==9)
 {
 monthname="Sep";
 }
else if(m==10)
 {
 monthname="Oct";
 }
else if(m==11)
 {
 monthname="Nov";
 }
else if(m==12)
 {
 monthname="Dec";
 }
	document.getElementById("monthpanel").innerHTML=monthname;
	document.getElementById("year").value=yy;
	showcalender(m,yy);
	}
else
	{
	m++;
	
	if(m==1)
   	 {
   	 monthname="Jan";
   	 }
    else if(m==2)
   	 {
   	 monthname="Feb";
   	 }
    else if(m==3)
	 {
	 monthname="Mar";
	 }
    else if(m==4)
	 {
	 monthname="Apr";
	 }
    else if(m==5)
	 {
	 monthname="May";
	 }
    else if(m==6)
	 {
	 monthname="Jun";
	 }
    else if(m==7)
	 {
	 monthname="Jul";
	 }
    else if(m==8)
	 {
	 monthname="Aug";
	 }
    else if(m==9)
	 {
	 monthname="Sep";
	 }
    else if(m==10)
	 {
	 monthname="Oct";
	 }
    else if(m==11)
	 {
	 monthname="Nov";
	 }
    else if(m==12)
	 {
	 monthname="Dec";
	 }
		document.getElementById("monthpanel").innerHTML=monthname;
		document.getElementById("year").value=yy;
		showcalender(m,yy);
	}


}
else if(f==1)
	{
	
	if(txtFocus)
		{
		
		var monthconversion=document.getElementById("monthpanel").innerHTML;
		var yearconversion=document.getElementById("year").value;
		if(monthconversion=="Jan")
		 {
		m=1;
		 }
	else if(monthconversion=="Feb")
		 {
		 m=2;
		 }
		else if(monthconversion=="Mar")
		{
			m=3;
		}
		else if(monthconversion=="Apr")
		{
		 m=4;
		 }
		 else if(monthconversion=="May")
		 {
			 m=5;
		}
		 else if(monthconversion=="Jun")
		 {
		 m=6;
		 }
		 else if(monthconversion=="Jul")
		 {
		 m=7;
		 }
		 else if(monthconversion=="Aug")
		 {
		 m=8;
		 }
		 else if(monthconversion=="Sep")
		 {
		 m=9;
		 }
		 else if(monthconversion=="Oct")
		 {
		 m=10;
		 }
		 else if(monthconversion=="Nov")
		 {
		 m=11;
		 }
		 else if(monthconversion=="Dec")
		 {
		 m=12;
		 }
		yy=parseInt(yearconversion);
		yy++;
			
			if(m==1)
	   	 {
	   	 monthname="Jan";
	   	 }
	    else if(m==2)
	   	 {
	   	 monthname="Feb";
	   	 }
	    else if(m==3)
		 {
		 monthname="Mar";
		 }
	    else if(m==4)
		 {
		 monthname="Apr";
		 }
	    else if(m==5)
		 {
		 monthname="May";
		 }
	    else if(m==6)
		 {
		 monthname="Jun";
		 }
	    else if(m==7)
		 {
		 monthname="Jul";
		 }
	    else if(m==8)
		 {
		 monthname="Aug";
		 }
	    else if(m==9)
		 {
		 monthname="Sep";
		 }
	    else if(m==10)
		 {
		 monthname="Oct";
		 }
	    else if(m==11)
		 {
		 monthname="Nov";
		 }
	    else if(m==12)
		 {
		 monthname="Dec";
		 }
			document.getElementById("monthpanel").innerHTML=monthname;
			document.getElementById("year").value=yy;
			showcalender(m,yy);
			
		
		}
	
	}
	}
else if(checkforcounterx==1 && checkforcountery==0)
	{
	if(f==0)
	{
var monthconversion=document.getElementById("month").value;
var yearconversion=document.getElementById("yearpanel").innerHTML;
if(monthconversion=="Jan")
 {
m=1;
 }
else if(monthconversion=="Feb")
 {
 m=2;
 }
else if(monthconversion=="Mar")
{
	m=3;
}
else if(monthconversion=="Apr")
{
 m=4;
 }
 else if(monthconversion=="May")
 {
	 m=5;
}
 else if(monthconversion=="Jun")
 {
 m=6;
 }
 else if(monthconversion=="Jul")
 {
 m=7;
 }
 else if(monthconversion=="Aug")
 {
 m=8;
 }
 else if(monthconversion=="Sep")
 {
 m=9;
 }
 else if(monthconversion=="Oct")
 {
 m=10;
 }
 else if(monthconversion=="Nov")
 {
 m=11;
 }
 else if(monthconversion=="Dec")
 {
 m=12;
 }
yy=parseInt(yearconversion);
if(m==12)
	{
	
	yy++;
	
	m=1;
	
	if(m==1)
	 {
	 monthname="Jan";
	 }
else if(m==2)
	 {
	 monthname="Feb";
	 }
else if(m==3)
 {
 monthname="Mar";
 }
else if(m==4)
 {
 monthname="Apr";
 }
else if(m==5)
 {
 monthname="May";
 }
else if(m==6)
 {
 monthname="Jun";
 }
else if(m==7)
 {
 monthname="Jul";
 }
else if(m==8)
 {
 monthname="Aug";
 }
else if(m==9)
 {
 monthname="Sep";
 }
else if(m==10)
 {
 monthname="Oct";
 }
else if(m==11)
 {
 monthname="Nov";
 }
else if(m==12)
 {
 monthname="Dec";
 }
	document.getElementById("month").value=monthname;
	document.getElementById("yearpanel").innerHTML=yy;
	showcalender(m,yy);
	}
else
	{
	m++;
	
	if(m==1)
   	 {
   	 monthname="Jan";
   	 }
    else if(m==2)
   	 {
   	 monthname="Feb";
   	 }
    else if(m==3)
	 {
	 monthname="Mar";
	 }
    else if(m==4)
	 {
	 monthname="Apr";
	 }
    else if(m==5)
	 {
	 monthname="May";
	 }
    else if(m==6)
	 {
	 monthname="Jun";
	 }
    else if(m==7)
	 {
	 monthname="Jul";
	 }
    else if(m==8)
	 {
	 monthname="Aug";
	 }
    else if(m==9)
	 {
	 monthname="Sep";
	 }
    else if(m==10)
	 {
	 monthname="Oct";
	 }
    else if(m==11)
	 {
	 monthname="Nov";
	 }
    else if(m==12)
	 {
	 monthname="Dec";
	 }
		document.getElementById("month").value=monthname;
		document.getElementById("yearpanel").innerHTML=yy;
		showcalender(m,yy);
	}


}
else if(f==1)
	{
	
	if(txtFocus)
		{
		
		var monthconversion=document.getElementById("month").value;
		var yearconversion=document.getElementById("yearpanel").innerHTML;
		if(monthconversion=="Jan")
		 {
		m=1;
		 }
	else if(monthconversion=="Feb")
		 {
		 m=2;
		 }
		else if(monthconversion=="Mar")
		{
			m=3;
		}
		else if(monthconversion=="Apr")
		{
		 m=4;
		 }
		 else if(monthconversion=="May")
		 {
			 m=5;
		}
		 else if(monthconversion=="Jun")
		 {
		 m=6;
		 }
		 else if(monthconversion=="Jul")
		 {
		 m=7;
		 }
		 else if(monthconversion=="Aug")
		 {
		 m=8;
		 }
		 else if(monthconversion=="Sep")
		 {
		 m=9;
		 }
		 else if(monthconversion=="Oct")
		 {
		 m=10;
		 }
		 else if(monthconversion=="Nov")
		 {
		 m=11;
		 }
		 else if(monthconversion=="Dec")
		 {
		 m=12;
		 }
		yy=parseInt(yearconversion);
		yy++;
			
			if(m==1)
	   	 {
	   	 monthname="Jan";
	   	 }
	    else if(m==2)
	   	 {
	   	 monthname="Feb";
	   	 }
	    else if(m==3)
		 {
		 monthname="Mar";
		 }
	    else if(m==4)
		 {
		 monthname="Apr";
		 }
	    else if(m==5)
		 {
		 monthname="May";
		 }
	    else if(m==6)
		 {
		 monthname="Jun";
		 }
	    else if(m==7)
		 {
		 monthname="Jul";
		 }
	    else if(m==8)
		 {
		 monthname="Aug";
		 }
	    else if(m==9)
		 {
		 monthname="Sep";
		 }
	    else if(m==10)
		 {
		 monthname="Oct";
		 }
	    else if(m==11)
		 {
		 monthname="Nov";
		 }
	    else if(m==12)
		 {
		 monthname="Dec";
		 }
			document.getElementById("month").value=monthname;
			document.getElementById("yearpanel").innerHTML=yy;
			showcalender(m,yy);
			
		
		}
	
	}
	}
}

function minus()
{
	checktop1=0;
	checktop2=0;
	checktop3=0;
	checktop4=0;
	checktop5=0;
	checktop6=0;
	checktop7=0;
	document.getElementById("d1").style.backgroundColor="white";
	document.getElementById("d2").style.backgroundColor="white";
	document.getElementById("d3").style.backgroundColor="white";
	document.getElementById("d4").style.backgroundColor="white";
	document.getElementById("d5").style.backgroundColor="white";
	document.getElementById("d6").style.backgroundColor="white";
	document.getElementById("d7").style.backgroundColor="white";
	document.getElementById("d8").style.backgroundColor="white";
	document.getElementById("d9").style.backgroundColor="white";
	document.getElementById("d10").style.backgroundColor="white";
	document.getElementById("d11").style.backgroundColor="white";
	document.getElementById("d12").style.backgroundColor="white";
	document.getElementById("d13").style.backgroundColor="white";
	document.getElementById("d14").style.backgroundColor="white";
	document.getElementById("d15").style.backgroundColor="white";
	document.getElementById("d16").style.backgroundColor="white";
	document.getElementById("d17").style.backgroundColor="white";
	document.getElementById("d18").style.backgroundColor="white";
	document.getElementById("d19").style.backgroundColor="white";
	document.getElementById("d20").style.backgroundColor="white";
	document.getElementById("d21").style.backgroundColor="white";
	document.getElementById("d22").style.backgroundColor="white";
	document.getElementById("d23").style.backgroundColor="white";
	document.getElementById("d24").style.backgroundColor="white";
	document.getElementById("d25").style.backgroundColor="white";
	document.getElementById("d26").style.backgroundColor="white";
	document.getElementById("d27").style.backgroundColor="white";
	document.getElementById("d28").style.backgroundColor="white";
	document.getElementById("d29").style.backgroundColor="white";
	document.getElementById("d30").style.backgroundColor="white";
	document.getElementById("d31").style.backgroundColor="white";
	document.getElementById("d32").style.backgroundColor="white";
	document.getElementById("d33").style.backgroundColor="white";
	document.getElementById("d34").style.backgroundColor="white";
	document.getElementById("d35").style.backgroundColor="white";
	document.getElementById("d36").style.backgroundColor="white";
	document.getElementById("d37").style.backgroundColor="white";
	
	
	if(checkforcounterx==0 && checkforcountery==0)
	{
	
	
	var monthconversion=document.getElementById("monthpanel").innerHTML;
	var yearconversion=document.getElementById("yearpanel").innerHTML;
	if(monthconversion=="Jan")
	 {
	m=1;
	 }
else if(monthconversion=="Feb")
	 {
	 m=2;
	 }
	else if(monthconversion=="Mar")
	{
		m=3;
	}
	else if(monthconversion=="Apr")
	{
	 m=4;
	 }
	 else if(monthconversion=="May")
	 {
		 m=5;
	}
	 else if(monthconversion=="Jun")
	 {
	 m=6;
	 }
	 else if(monthconversion=="Jul")
	 {
	 m=7;
	 }
	 else if(monthconversion=="Aug")
	 {
	 m=8;
	 }
	 else if(monthconversion=="Sep")
	 {
	 m=9;
	 }
	 else if(monthconversion=="Oct")
	 {
	 m=10;
	 }
	 else if(monthconversion=="Nov")
	 {
	 m=11;
	 }
	 else if(monthconversion=="Dec")
	 {
	 m=12;
	 }
	yy=parseInt(yearconversion);
	if(m==1)
	{
	
	yy--;
	
	m=12;
	
	if(m==1)
 	 {
 	 monthname="Jan";
 	 }
  else if(m==2)
 	 {
 	 monthname="Feb";
 	 }
  else if(m==3)
	 {
	 monthname="Mar";
	 }
  else if(m==4)
	 {
	 monthname="Apr";
	 }
  else if(m==5)
	 {
	 monthname="May";
	 }
  else if(m==6)
	 {
	 monthname="Jun";
	 }
  else if(m==7)
	 {
	 monthname="Jul";
	 }
  else if(m==8)
	 {
	 monthname="Aug";
	 }
  else if(m==9)
	 {
	 monthname="Sep";
	 }
  else if(m==10)
	 {
	 monthname="Oct";
	 }
  else if(m==11)
	 {
	 monthname="Nov";
	 }
  else if(m==12)
	 {
	 monthname="Dec";
	 }
		document.getElementById("monthpanel").innerHTML=monthname;
		document.getElementById("yearpanel").innerHTML=yy;
	showcalender(m,yy);
	}
else
	{
	m--;
	
	if(m==1)
  	 {
  	 monthname="Jan";
  	 }
   else if(m==2)
  	 {
  	 monthname="Feb";
  	 }
   else if(m==3)
	 {
	 monthname="Mar";
	 }
   else if(m==4)
	 {
	 monthname="Apr";
	 }
   else if(m==5)
	 {
	 monthname="May";
	 }
   else if(m==6)
	 {
	 monthname="Jun";
	 }
   else if(m==7)
	 {
	 monthname="Jul";
	 }
   else if(m==8)
	 {
	 monthname="Aug";
	 }
   else if(m==9)
	 {
	 monthname="Sep";
	 }
   else if(m==10)
	 {
	 monthname="Oct";
	 }
   else if(m==11)
	 {
	 monthname="Nov";
	 }
   else if(m==12)
	 {
	 monthname="Dec";
	 }
		document.getElementById("monthpanel").innerHTML=monthname;
		document.getElementById("yearpanel").innerHTML=yy;
		showcalender(m,yy);
	}
	
	
	}
else if(checkforcounterx==1 && checkforcountery==1)

	{
	// coding for counter the month and year
	if(f==0)
		{
	var monthconversion=document.getElementById("month").value;
	var yearconversion=document.getElementById("year").value;
	
	if(txtFocus)
		{
		
		}
	else
		{
		
		}
	
	if(monthconversion=="Jan")
	 {
	m=1;
	 }
else if(monthconversion=="Feb")
	 {
	 m=2;
	 }
	else if(monthconversion=="Mar")
	{
		m=3;
	}
	else if(monthconversion=="Apr")
	{
	 m=4;
	 }
	 else if(monthconversion=="May")
	 {
		 m=5;
	}
	 else if(monthconversion=="Jun")
	 {
	 m=6;
	 }
	 else if(monthconversion=="Jul")
	 {
	 m=7;
	 }
	 else if(monthconversion=="Aug")
	 {
	 m=8;
	 }
	 else if(monthconversion=="Sep")
	 {
	 m=9;
	 }
	 else if(monthconversion=="Oct")
	 {
	 m=10;
	 }
	 else if(monthconversion=="Nov")
	 {
	 m=11;
	 }
	 else if(monthconversion=="Dec")
	 {
	 m=12;
	 }
	yy=parseInt(yearconversion);
	if(m==1)
		{
		
		yy--;
		
		m=12;
		
		if(m==1)
   	 {
   	 monthname="Jan";
   	 }
    else if(m==2)
   	 {
   	 monthname="Feb";
   	 }
    else if(m==3)
	 {
	 monthname="Mar";
	 }
    else if(m==4)
	 {
	 monthname="Apr";
	 }
    else if(m==5)
	 {
	 monthname="May";
	 }
    else if(m==6)
	 {
	 monthname="Jun";
	 }
    else if(m==7)
	 {
	 monthname="Jul";
	 }
    else if(m==8)
	 {
	 monthname="Aug";
	 }
    else if(m==9)
	 {
	 monthname="Sep";
	 }
    else if(m==10)
	 {
	 monthname="Oct";
	 }
    else if(m==11)
	 {
	 monthname="Nov";
	 }
    else if(m==12)
	 {
	 monthname="Dec";
	 }
		document.getElementById("month").value=monthname;
		document.getElementById("year").value=yy;
		showcalender(m,yy);
		}
	else
		{
		m--;
		
		if(m==1)
	   	 {
	   	 monthname="Jan";
	   	 }
	    else if(m==2)
	   	 {
	   	 monthname="Feb";
	   	 }
	    else if(m==3)
		 {
		 monthname="Mar";
		 }
	    else if(m==4)
		 {
		 monthname="Apr";
		 }
	    else if(m==5)
		 {
		 monthname="May";
		 }
	    else if(m==6)
		 {
		 monthname="Jun";
		 }
	    else if(m==7)
		 {
		 monthname="Jul";
		 }
	    else if(m==8)
		 {
		 monthname="Aug";
		 }
	    else if(m==9)
		 {
		 monthname="Sep";
		 }
	    else if(m==10)
		 {
		 monthname="Oct";
		 }
	    else if(m==11)
		 {
		 monthname="Nov";
		 }
	    else if(m==12)
		 {
		 monthname="Dec";
		 }
			document.getElementById("month").value=monthname;
			document.getElementById("year").value=yy;
			showcalender(m,yy);
		}
	
	
	}
	else if(f==1)
		{
		
		if(txtFocus)
			{
			
			var monthconversion=document.getElementById("month").value;
			var yearconversion=document.getElementById("year").value;
			if(monthconversion=="Jan")
			 {
			m=1;
			 }
		else if(monthconversion=="Feb")
			 {
			 m=2;
			 }
			else if(monthconversion=="Mar")
			{
				m=3;
			}
			else if(monthconversion=="Apr")
			{
			 m=4;
			 }
			 else if(monthconversion=="May")
			 {
				 m=5;
			}
			 else if(monthconversion=="Jun")
			 {
			 m=6;
			 }
			 else if(monthconversion=="Jul")
			 {
			 m=7;
			 }
			 else if(monthconversion=="Aug")
			 {
			 m=8;
			 }
			 else if(monthconversion=="Sep")
			 {
			 m=9;
			 }
			 else if(monthconversion=="Oct")
			 {
			 m=10;
			 }
			 else if(monthconversion=="Nov")
			 {
			 m=11;
			 }
			 else if(monthconversion=="Dec")
			 {
			 m=12;
			 }
			yy=parseInt(yearconversion);
			yy--;
				
				if(m==1)
		   	 {
		   	 monthname="Jan";
		   	 }
		    else if(m==2)
		   	 {
		   	 monthname="Feb";
		   	 }
		    else if(m==3)
			 {
			 monthname="Mar";
			 }
		    else if(m==4)
			 {
			 monthname="Apr";
			 }
		    else if(m==5)
			 {
			 monthname="May";
			 }
		    else if(m==6)
			 {
			 monthname="Jun";
			 }
		    else if(m==7)
			 {
			 monthname="Jul";
			 }
		    else if(m==8)
			 {
			 monthname="Aug";
			 }
		    else if(m==9)
			 {
			 monthname="Sep";
			 }
		    else if(m==10)
			 {
			 monthname="Oct";
			 }
		    else if(m==11)
			 {
			 monthname="Nov";
			 }
		    else if(m==12)
			 {
			 monthname="Dec";
			 }
				document.getElementById("month").value=monthname;
				document.getElementById("year").value=yy;
				showcalender(m,yy);
				
			
			}
		
		}
	
	
	}
else if(checkforcounterx==0 && checkforcountery==1)
	{
	
	if(f==0)
	{
var monthconversion=document.getElementById("monthpanel").innerHTML;
var yearconversion=document.getElementById("year").value;

if(txtFocus)
	{
	
	}
else
	{
	
	}

if(monthconversion=="Jan")
 {
m=1;
 }
else if(monthconversion=="Feb")
 {
 m=2;
 }
else if(monthconversion=="Mar")
{
	m=3;
}
else if(monthconversion=="Apr")
{
 m=4;
 }
 else if(monthconversion=="May")
 {
	 m=5;
}
 else if(monthconversion=="Jun")
 {
 m=6;
 }
 else if(monthconversion=="Jul")
 {
 m=7;
 }
 else if(monthconversion=="Aug")
 {
 m=8;
 }
 else if(monthconversion=="Sep")
 {
 m=9;
 }
 else if(monthconversion=="Oct")
 {
 m=10;
 }
 else if(monthconversion=="Nov")
 {
 m=11;
 }
 else if(monthconversion=="Dec")
 {
 m=12;
 }
yy=parseInt(yearconversion);
if(m==1)
	{
	
	yy--;
	
	m=12;
	
	if(m==1)
	 {
	 monthname="Jan";
	 }
else if(m==2)
	 {
	 monthname="Feb";
	 }
else if(m==3)
 {
 monthname="Mar";
 }
else if(m==4)
 {
 monthname="Apr";
 }
else if(m==5)
 {
 monthname="May";
 }
else if(m==6)
 {
 monthname="Jun";
 }
else if(m==7)
 {
 monthname="Jul";
 }
else if(m==8)
 {
 monthname="Aug";
 }
else if(m==9)
 {
 monthname="Sep";
 }
else if(m==10)
 {
 monthname="Oct";
 }
else if(m==11)
 {
 monthname="Nov";
 }
else if(m==12)
 {
 monthname="Dec";
 }
	document.getElementById("monthpanel").innerHTML=monthname;
	document.getElementById("year").value=yy;
	showcalender(m,yy);
	}
else
	{
	m--;
	
	if(m==1)
   	 {
   	 monthname="Jan";
   	 }
    else if(m==2)
   	 {
   	 monthname="Feb";
   	 }
    else if(m==3)
	 {
	 monthname="Mar";
	 }
    else if(m==4)
	 {
	 monthname="Apr";
	 }
    else if(m==5)
	 {
	 monthname="May";
	 }
    else if(m==6)
	 {
	 monthname="Jun";
	 }
    else if(m==7)
	 {
	 monthname="Jul";
	 }
    else if(m==8)
	 {
	 monthname="Aug";
	 }
    else if(m==9)
	 {
	 monthname="Sep";
	 }
    else if(m==10)
	 {
	 monthname="Oct";
	 }
    else if(m==11)
	 {
	 monthname="Nov";
	 }
    else if(m==12)
	 {
	 monthname="Dec";
	 }
		document.getElementById("monthpanel").innerHTML=monthname;
		document.getElementById("year").value=yy;
		showcalender(m,yy);
	}


}
else if(f==1)
	{
	
	if(txtFocus)
		{
		
		var monthconversion=document.getElementById("monthpanel").innerHTML;
		var yearconversion=document.getElementById("year").value;
		if(monthconversion=="Jan")
		 {
		m=1;
		 }
	else if(monthconversion=="Feb")
		 {
		 m=2;
		 }
		else if(monthconversion=="Mar")
		{
			m=3;
		}
		else if(monthconversion=="Apr")
		{
		 m=4;
		 }
		 else if(monthconversion=="May")
		 {
			 m=5;
		}
		 else if(monthconversion=="Jun")
		 {
		 m=6;
		 }
		 else if(monthconversion=="Jul")
		 {
		 m=7;
		 }
		 else if(monthconversion=="Aug")
		 {
		 m=8;
		 }
		 else if(monthconversion=="Sep")
		 {
		 m=9;
		 }
		 else if(monthconversion=="Oct")
		 {
		 m=10;
		 }
		 else if(monthconversion=="Nov")
		 {
		 m=11;
		 }
		 else if(monthconversion=="Dec")
		 {
		 m=12;
		 }
		yy=parseInt(yearconversion);
		yy--;
			
			if(m==1)
	   	 {
	   	 monthname="Jan";
	   	 }
	    else if(m==2)
	   	 {
	   	 monthname="Feb";
	   	 }
	    else if(m==3)
		 {
		 monthname="Mar";
		 }
	    else if(m==4)
		 {
		 monthname="Apr";
		 }
	    else if(m==5)
		 {
		 monthname="May";
		 }
	    else if(m==6)
		 {
		 monthname="Jun";
		 }
	    else if(m==7)
		 {
		 monthname="Jul";
		 }
	    else if(m==8)
		 {
		 monthname="Aug";
		 }
	    else if(m==9)
		 {
		 monthname="Sep";
		 }
	    else if(m==10)
		 {
		 monthname="Oct";
		 }
	    else if(m==11)
		 {
		 monthname="Nov";
		 }
	    else if(m==12)
		 {
		 monthname="Dec";
		 }
			document.getElementById("monthpanel").innerHTML=monthname;
			document.getElementById("year").value=yy;
			showcalender(m,yy);
			
		
		}
	
	}
	
	}
else if(checkforcounterx==1 && checkforcountery==0)
{

	if(f==0)
	{
var monthconversion=document.getElementById("month").value;
var yearconversion=document.getElementById("yearpanel").innerHTML;

if(txtFocus)
	{
	
	}
else
	{
	
	}

if(monthconversion=="Jan")
 {
m=1;
 }
else if(monthconversion=="Feb")
 {
 m=2;
 }
else if(monthconversion=="Mar")
{
	m=3;
}
else if(monthconversion=="Apr")
{
 m=4;
 }
 else if(monthconversion=="May")
 {
	 m=5;
}
 else if(monthconversion=="Jun")
 {
 m=6;
 }
 else if(monthconversion=="Jul")
 {
 m=7;
 }
 else if(monthconversion=="Aug")
 {
 m=8;
 }
 else if(monthconversion=="Sep")
 {
 m=9;
 }
 else if(monthconversion=="Oct")
 {
 m=10;
 }
 else if(monthconversion=="Nov")
 {
 m=11;
 }
 else if(monthconversion=="Dec")
 {
 m=12;
 }
yy=parseInt(yearconversion);
if(m==1)
	{
	
	yy--;
	
	m=12;
	
	if(m==1)
	 {
	 monthname="Jan";
	 }
else if(m==2)
	 {
	 monthname="Feb";
	 }
else if(m==3)
 {
 monthname="Mar";
 }
else if(m==4)
 {
 monthname="Apr";
 }
else if(m==5)
 {
 monthname="May";
 }
else if(m==6)
 {
 monthname="Jun";
 }
else if(m==7)
 {
 monthname="Jul";
 }
else if(m==8)
 {
 monthname="Aug";
 }
else if(m==9)
 {
 monthname="Sep";
 }
else if(m==10)
 {
 monthname="Oct";
 }
else if(m==11)
 {
 monthname="Nov";
 }
else if(m==12)
 {
 monthname="Dec";
 }
	document.getElementById("month").value=monthname;
	document.getElementById("yearpanel").innerHTML=yy;
	showcalender(m,yy);
	}
else
	{
	m--;
	
	if(m==1)
   	 {
   	 monthname="Jan";
   	 }
    else if(m==2)
   	 {
   	 monthname="Feb";
   	 }
    else if(m==3)
	 {
	 monthname="Mar";
	 }
    else if(m==4)
	 {
	 monthname="Apr";
	 }
    else if(m==5)
	 {
	 monthname="May";
	 }
    else if(m==6)
	 {
	 monthname="Jun";
	 }
    else if(m==7)
	 {
	 monthname="Jul";
	 }
    else if(m==8)
	 {
	 monthname="Aug";
	 }
    else if(m==9)
	 {
	 monthname="Sep";
	 }
    else if(m==10)
	 {
	 monthname="Oct";
	 }
    else if(m==11)
	 {
	 monthname="Nov";
	 }
    else if(m==12)
	 {
	 monthname="Dec";
	 }
		document.getElementById("month").value=monthname;
		document.getElementById("yearpanel").innerHTML=yy;
		showcalender(m,yy);
	}


}
else if(f==1)
	{
	
	if(txtFocus)
		{
		
		var monthconversion=document.getElementById("month").value;
		var yearconversion=document.getElementById("yearpanel").innerHTML;
		if(monthconversion=="Jan")
		 {
		m=1;
		 }
	else if(monthconversion=="Feb")
		 {
		 m=2;
		 }
		else if(monthconversion=="Mar")
		{
			m=3;
		}
		else if(monthconversion=="Apr")
		{
		 m=4;
		 }
		 else if(monthconversion=="May")
		 {
			 m=5;
		}
		 else if(monthconversion=="Jun")
		 {
		 m=6;
		 }
		 else if(monthconversion=="Jul")
		 {
		 m=7;
		 }
		 else if(monthconversion=="Aug")
		 {
		 m=8;
		 }
		 else if(monthconversion=="Sep")
		 {
		 m=9;
		 }
		 else if(monthconversion=="Oct")
		 {
		 m=10;
		 }
		 else if(monthconversion=="Nov")
		 {
		 m=11;
		 }
		 else if(monthconversion=="Dec")
		 {
		 m=12;
		 }
		yy=parseInt(yearconversion);
		yy--;
			
			if(m==1)
	   	 {
	   	 monthname="Jan";
	   	 }
	    else if(m==2)
	   	 {
	   	 monthname="Feb";
	   	 }
	    else if(m==3)
		 {
		 monthname="Mar";
		 }
	    else if(m==4)
		 {
		 monthname="Apr";
		 }
	    else if(m==5)
		 {
		 monthname="May";
		 }
	    else if(m==6)
		 {
		 monthname="Jun";
		 }
	    else if(m==7)
		 {
		 monthname="Jul";
		 }
	    else if(m==8)
		 {
		 monthname="Aug";
		 }
	    else if(m==9)
		 {
		 monthname="Sep";
		 }
	    else if(m==10)
		 {
		 monthname="Oct";
		 }
	    else if(m==11)
		 {
		 monthname="Nov";
		 }
	    else if(m==12)
		 {
		 monthname="Dec";
		 }
			document.getElementById("month").value=monthname;
			document.getElementById("yearpanel").innerHTML=yy;
			showcalender(m,yy);
			
		
		}
	
	}
	
}


}

function showcalender(m,y)
{
	
	var leapArray = [31,29,31,30,31,30,31,31,30,31,30,31];
	var notleapArray = [31,28,31,30,31,30,31,31,30,31,30,31];
	
     
      d=1;
      daystotal=0;
	for (year = 1; year <= y-1; year++)
	{
	       if(year%4==0)
	    	   {
	    	   daystotal=daystotal+2;
	    	   
	    	   }
	       else
	    	   {
	    	   
	    	  daystotal=daystotal+1;
	    	   }
	       
	}
	daystotal=daystotal-1;
	if(y%4==0)
	   {
		for(mm=0;mm<m-1;mm++)
		{
	   daystotal=daystotal+leapArray[mm];
		}
	   }
       else
	   {
	   for(mm=0;mm<m-1;mm++)
		{
	   daystotal=daystotal+notleapArray[mm];
		}
	   }
		
	
		
	//daystotal=daystotal+1;
	
	
	
	
	
	day=daystotal%7;
	
	if(day==6)
		{
		var daycheck=dayji;
		position=daycheck;
		checktop1=1;
		if(daycheck==1)
			{
			document.getElementById("d1").style.backgroundColor="LightSkyBlue";
			}
		else if(daycheck==2)
			{
			document.getElementById("d2").style.backgroundColor="LightSkyBlue";
			}
		else if(daycheck==3)
		{
			document.getElementById("d3").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==4)
		{
			document.getElementById("d4").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==5)
		{
			document.getElementById("d5").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==6)
		{
			document.getElementById("d6").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==7)
		{
			document.getElementById("d7").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==8)
		{
			document.getElementById("d8").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==9)
		{
			document.getElementById("d9").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==10)
		{
			document.getElementById("d10").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==11)
		{
			document.getElementById("d11").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==12)
		{
			document.getElementById("d12").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==13)
		{
			document.getElementById("d13").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==14)
		{
			document.getElementById("d14").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==15)
		{
			document.getElementById("d15").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==16)
		{
			document.getElementById("d16").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==17)
		{
			document.getElementById("d17").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==18)
		{
			document.getElementById("d18").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==19)
		{
			document.getElementById("d19").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==20)
		{
			document.getElementById("d20").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==21)
		{
			document.getElementById("d21").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==22)
		{
			document.getElementById("d22").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==23)
		{
			document.getElementById("d23").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==24)
		{
			document.getElementById("d24").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==25)
		{
			document.getElementById("d25").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==26)
		{
			document.getElementById("d26").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==27)
		{
			document.getElementById("d27").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==28)
		{
			document.getElementById("d28").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==29)
		{
			document.getElementById("d29").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==30)
		{
			document.getElementById("d30").style.backgroundColor="LightSkyBlue";
		}
		else if(daycheck==31)
		{
			document.getElementById("d31").style.backgroundColor="LightSkyBlue";
		}
		
		
		
		}
	else if(day==0)
		{
		var daycheck=dayji+1;
		position=daycheck;
		checktop2=1;
		if(daycheck==1)
		{
		document.getElementById("d1").style.backgroundColor="LightSkyBlue";
		}
	else if(daycheck==2)
		{
		document.getElementById("d2").style.backgroundColor="LightSkyBlue";
		}
	else if(daycheck==3)
	{
		document.getElementById("d3").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==4)
	{
		document.getElementById("d4").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==5)
	{
		document.getElementById("d5").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==6)
	{
		document.getElementById("d6").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==7)
	{
		document.getElementById("d7").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==8)
	{
		document.getElementById("d8").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==9)
	{
		document.getElementById("d9").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==10)
	{
		document.getElementById("d10").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==11)
	{
		document.getElementById("d11").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==12)
	{
		document.getElementById("d12").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==13)
	{
		document.getElementById("d13").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==14)
	{
		document.getElementById("d14").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==15)
	{
		document.getElementById("d15").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==16)
	{
		document.getElementById("d16").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==17)
	{
		document.getElementById("d17").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==18)
	{
		document.getElementById("d18").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==19)
	{
		document.getElementById("d19").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==20)
	{
		document.getElementById("d20").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==21)
	{
		document.getElementById("d21").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==22)
	{
		document.getElementById("d22").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==23)
	{
		document.getElementById("d23").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==24)
	{
		document.getElementById("d24").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==25)
	{
		document.getElementById("d25").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==26)
	{
		document.getElementById("d26").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==27)
	{
		document.getElementById("d27").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==28)
	{
		document.getElementById("d28").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==29)
	{
		document.getElementById("d29").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==30)
	{
		document.getElementById("d30").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==31)
	{
		document.getElementById("d31").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==32)
	{
		document.getElementById("d32").style.backgroundColor="LightSkyBlue";
	}
		}
	else if(day==1)
	{
		var daycheck=dayji+2;
		position=daycheck;
		checktop3=1;
		if(daycheck==1)
		{
		document.getElementById("d1").style.backgroundColor="LightSkyBlue";
		}
	else if(daycheck==2)
		{
		document.getElementById("d2").style.backgroundColor="LightSkyBlue";
		}
	else if(daycheck==3)
	{
		document.getElementById("d3").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==4)
	{
		document.getElementById("d4").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==5)
	{
		document.getElementById("d5").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==6)
	{
		document.getElementById("d6").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==7)
	{
		document.getElementById("d7").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==8)
	{
		document.getElementById("d8").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==9)
	{
		document.getElementById("d9").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==10)
	{
		document.getElementById("d10").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==11)
	{
		document.getElementById("d11").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==12)
	{
		document.getElementById("d12").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==13)
	{
		document.getElementById("d13").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==14)
	{
		document.getElementById("d14").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==15)
	{
		document.getElementById("d15").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==16)
	{
		document.getElementById("d16").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==17)
	{
		document.getElementById("d17").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==18)
	{
		document.getElementById("d18").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==19)
	{
		document.getElementById("d19").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==20)
	{
		document.getElementById("d20").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==21)
	{
		document.getElementById("d21").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==22)
	{
		document.getElementById("d22").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==23)
	{
		document.getElementById("d23").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==24)
	{
		document.getElementById("d24").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==25)
	{
		document.getElementById("d25").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==26)
	{
		document.getElementById("d26").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==27)
	{
		document.getElementById("d27").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==28)
	{
		document.getElementById("d28").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==29)
	{
		document.getElementById("d29").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==30)
	{
		document.getElementById("d30").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==31)
	{
		document.getElementById("d31").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==32)
	{
		document.getElementById("d32").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==33)
	{
		document.getElementById("d33").style.backgroundColor="LightSkyBlue";
	}
	}
	else if(day==2)
	{
		var daycheck=dayji+3;
		position=daycheck;
		checktop4=1;
		if(daycheck==1)
		{
		document.getElementById("d1").style.backgroundColor="LightSkyBlue";
		}
	else if(daycheck==2)
		{
		document.getElementById("d2").style.backgroundColor="LightSkyBlue";
		}
	else if(daycheck==3)
	{
		document.getElementById("d3").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==4)
	{
		document.getElementById("d4").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==5)
	{
		document.getElementById("d5").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==6)
	{
		document.getElementById("d6").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==7)
	{
		document.getElementById("d7").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==8)
	{
		document.getElementById("d8").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==9)
	{
		document.getElementById("d9").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==10)
	{
		document.getElementById("d10").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==11)
	{
		document.getElementById("d11").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==12)
	{
		document.getElementById("d12").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==13)
	{
		document.getElementById("d13").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==14)
	{
		document.getElementById("d14").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==15)
	{
		document.getElementById("d15").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==16)
	{
		document.getElementById("d16").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==17)
	{
		document.getElementById("d17").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==18)
	{
		document.getElementById("d18").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==19)
	{
		document.getElementById("d19").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==20)
	{
		document.getElementById("d20").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==21)
	{
		document.getElementById("d21").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==22)
	{
		document.getElementById("d22").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==23)
	{
		document.getElementById("d23").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==24)
	{
		document.getElementById("d24").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==25)
	{
		document.getElementById("d25").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==26)
	{
		document.getElementById("d26").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==27)
	{
		document.getElementById("d27").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==28)
	{
		document.getElementById("d28").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==29)
	{
		document.getElementById("d29").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==30)
	{
		document.getElementById("d30").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==31)
	{
		document.getElementById("d31").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==32)
	{
		document.getElementById("d32").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==33)
	{
		document.getElementById("d33").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==34)
	{
		document.getElementById("d34").style.backgroundColor="LightSkyBlue";
	}
		
	}
	else if(day==3)
	{
		var daycheck=dayji+4;
		position=daycheck;
		checktop5=1;
		if(daycheck==1)
		{
		document.getElementById("d1").style.backgroundColor="LightSkyBlue";
		}
	else if(daycheck==2)
		{
		document.getElementById("d2").style.backgroundColor="LightSkyBlue";
		}
	else if(daycheck==3)
	{
		document.getElementById("d3").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==4)
	{
		document.getElementById("d4").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==5)
	{
		document.getElementById("d5").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==6)
	{
		document.getElementById("d6").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==7)
	{
		document.getElementById("d7").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==8)
	{
		document.getElementById("d8").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==9)
	{
		document.getElementById("d9").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==10)
	{
		document.getElementById("d10").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==11)
	{
		document.getElementById("d11").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==12)
	{
		document.getElementById("d12").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==13)
	{
		document.getElementById("d13").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==14)
	{
		document.getElementById("d14").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==15)
	{
		document.getElementById("d15").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==16)
	{
		document.getElementById("d16").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==17)
	{
		document.getElementById("d17").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==18)
	{
		document.getElementById("d18").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==19)
	{
		document.getElementById("d19").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==20)
	{
		document.getElementById("d20").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==21)
	{
		document.getElementById("d21").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==22)
	{
		document.getElementById("d22").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==23)
	{
		document.getElementById("d23").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==24)
	{
		document.getElementById("d24").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==25)
	{
		document.getElementById("d25").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==26)
	{
		document.getElementById("d26").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==27)
	{
		document.getElementById("d27").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==28)
	{
		document.getElementById("d28").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==29)
	{
		document.getElementById("d29").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==30)
	{
		document.getElementById("d30").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==31)
	{
		document.getElementById("d31").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==32)
	{
		document.getElementById("d32").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==33)
	{
		document.getElementById("d33").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==34)
	{
		document.getElementById("d34").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==35)
	{
		document.getElementById("d35").style.backgroundColor="LightSkyBlue";
	}
		
		
	}
	else if(day==4)
	{
		var daycheck=dayji+5;
		position=daycheck;
		checktop6=1;
		// set 1 for control top  control
		if(daycheck==1)
		{
		document.getElementById("d1").style.backgroundColor="LightSkyBlue";
		}
	else if(daycheck==2)
		{
		document.getElementById("d2").style.backgroundColor="LightSkyBlue";
		}
	else if(daycheck==3)
	{
		document.getElementById("d3").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==4)
	{
		document.getElementById("d4").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==5)
	{
		document.getElementById("d5").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==6)
	{
		document.getElementById("d6").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==7)
	{
		document.getElementById("d7").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==8)
	{
		document.getElementById("d8").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==9)
	{
		document.getElementById("d9").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==10)
	{
		document.getElementById("d10").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==11)
	{
		document.getElementById("d11").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==12)
	{
		document.getElementById("d12").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==13)
	{
		document.getElementById("d13").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==14)
	{
		document.getElementById("d14").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==15)
	{
		document.getElementById("d15").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==16)
	{
		document.getElementById("d16").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==17)
	{
		document.getElementById("d17").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==18)
	{
		document.getElementById("d18").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==19)
	{
		document.getElementById("d19").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==20)
	{
		document.getElementById("d20").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==21)
	{
		document.getElementById("d21").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==22)
	{
		document.getElementById("d22").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==23)
	{
		document.getElementById("d23").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==24)
	{
		document.getElementById("d24").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==25)
	{
		document.getElementById("d25").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==26)
	{
		document.getElementById("d26").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==27)
	{
		document.getElementById("d27").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==28)
	{
		document.getElementById("d28").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==29)
	{
		document.getElementById("d29").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==30)
	{
		document.getElementById("d30").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==31)
	{
		document.getElementById("d31").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==32)
	{
		document.getElementById("d32").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==33)
	{
		document.getElementById("d33").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==34)
	{
		document.getElementById("d34").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==35)
	{
		document.getElementById("d35").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==36)
	{
		document.getElementById("d36").style.backgroundColor="LightSkyBlue";
	}
		
	}
	else if(day==5)
	{
		var daycheck=dayji+6;
		position=daycheck;
		checktop7=1;
		// set 1 for top key control
		if(daycheck==1)
		{
		document.getElementById("d1").style.backgroundColor="LightSkyBlue";
		}
	else if(daycheck==2)
		{
		document.getElementById("d2").style.backgroundColor="LightSkyBlue";
		}
	else if(daycheck==3)
	{
		document.getElementById("d3").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==4)
	{
		document.getElementById("d4").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==5)
	{
		document.getElementById("d5").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==6)
	{
		document.getElementById("d6").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==7)
	{
		document.getElementById("d7").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==8)
	{
		document.getElementById("d8").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==9)
	{
		document.getElementById("d9").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==10)
	{
		document.getElementById("d10").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==11)
	{
		document.getElementById("d11").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==12)
	{
		document.getElementById("d12").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==13)
	{
		document.getElementById("d13").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==14)
	{
		document.getElementById("d14").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==15)
	{
		document.getElementById("d15").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==16)
	{
		document.getElementById("d16").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==17)
	{
		document.getElementById("d17").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==18)
	{
		document.getElementById("d18").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==19)
	{
		document.getElementById("d19").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==20)
	{
		document.getElementById("d20").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==21)
	{
		document.getElementById("d21").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==22)
	{
		document.getElementById("d22").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==23)
	{
		document.getElementById("d23").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==24)
	{
		document.getElementById("d24").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==25)
	{
		document.getElementById("d25").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==26)
	{
		document.getElementById("d26").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==27)
	{
		document.getElementById("d27").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==28)
	{
		document.getElementById("d28").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==29)
	{
		document.getElementById("d29").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==30)
	{
		document.getElementById("d30").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==31)
	{
		document.getElementById("d31").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==32)
	{
		document.getElementById("d32").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==33)
	{
		document.getElementById("d33").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==34)
	{
		document.getElementById("d34").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==35)
	{
		document.getElementById("d35").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==36)
	{
		document.getElementById("d36").style.backgroundColor="LightSkyBlue";
	}
	else if(daycheck==37)
	{
		document.getElementById("d37").style.backgroundColor="LightSkyBlue";
	}
		
	}
	
	//alert(day+""+m+""+y);
	if(m==1 || m==3 || m==5 || m==7 || m==8 || m==10 || m==12)
		{
		// jan,march,may,july,august,octomber,december codding
	if(day==6)
		{
		// coding for sunday
		document.getElementById("d1").innerHTML="1";
		document.getElementById("d2").innerHTML="2";
		document.getElementById("d3").innerHTML="3";
		document.getElementById("d4").innerHTML="4";
		document.getElementById("d5").innerHTML="5";
		document.getElementById("d6").innerHTML="6";
		document.getElementById("d7").innerHTML="7";
		document.getElementById("d8").innerHTML="8";
		document.getElementById("d9").innerHTML="9";
		document.getElementById("d10").innerHTML="10";
		document.getElementById("d11").innerHTML="11";
		document.getElementById("d12").innerHTML="12";
		document.getElementById("d13").innerHTML="13";
		document.getElementById("d14").innerHTML="14";
		document.getElementById("d15").innerHTML="15";
		document.getElementById("d16").innerHTML="16";
		document.getElementById("d17").innerHTML="17";
		document.getElementById("d18").innerHTML="18";
		document.getElementById("d19").innerHTML="19";
		document.getElementById("d20").innerHTML="20";
		document.getElementById("d21").innerHTML="21";
		document.getElementById("d22").innerHTML="22";
		document.getElementById("d23").innerHTML="23";
		document.getElementById("d24").innerHTML="24";
		document.getElementById("d25").innerHTML="25";
		document.getElementById("d26").innerHTML="26";
		document.getElementById("d27").innerHTML="27";
		document.getElementById("d28").innerHTML="28";
		document.getElementById("d29").innerHTML="29";
		document.getElementById("d30").innerHTML="30";
		document.getElementById("d31").innerHTML="31";
		document.getElementById("d32").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else if(day==0)
		{
		// coding for monday
		document.getElementById("d2").innerHTML="1";
		document.getElementById("d3").innerHTML="2";
		document.getElementById("d4").innerHTML="3";
		document.getElementById("d5").innerHTML="4";
		document.getElementById("d6").innerHTML="5";
		document.getElementById("d7").innerHTML="6";
		document.getElementById("d8").innerHTML="7";
		document.getElementById("d9").innerHTML="8";
		document.getElementById("d10").innerHTML="9";
		document.getElementById("d11").innerHTML="10";
		document.getElementById("d12").innerHTML="11";
		document.getElementById("d13").innerHTML="12";
		document.getElementById("d14").innerHTML="13";
		document.getElementById("d15").innerHTML="14";
		document.getElementById("d16").innerHTML="15";
		document.getElementById("d17").innerHTML="16";
		document.getElementById("d18").innerHTML="17";
		document.getElementById("d19").innerHTML="18";
		document.getElementById("d20").innerHTML="19";
		document.getElementById("d21").innerHTML="20";
		document.getElementById("d22").innerHTML="21";
		document.getElementById("d23").innerHTML="22";
		document.getElementById("d24").innerHTML="23";
		document.getElementById("d25").innerHTML="24";
		document.getElementById("d26").innerHTML="25";
		document.getElementById("d27").innerHTML="26";
		document.getElementById("d28").innerHTML="27";
		document.getElementById("d29").innerHTML="28";
		document.getElementById("d30").innerHTML="29";
		document.getElementById("d31").innerHTML="30";
		document.getElementById("d32").innerHTML="31";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		
		}
	else if(day==1)
		{
		// coding for tuesday
		document.getElementById("d3").innerHTML="1";
		document.getElementById("d4").innerHTML="2";
		document.getElementById("d5").innerHTML="3";
		document.getElementById("d6").innerHTML="4";
		document.getElementById("d7").innerHTML="5";
		document.getElementById("d8").innerHTML="6";
		document.getElementById("d9").innerHTML="7";
		document.getElementById("d10").innerHTML="8";
		document.getElementById("d11").innerHTML="9";
		document.getElementById("d12").innerHTML="10";
		document.getElementById("d13").innerHTML="11";
		document.getElementById("d14").innerHTML="12";
		document.getElementById("d15").innerHTML="13";
		document.getElementById("d16").innerHTML="14";
		document.getElementById("d17").innerHTML="15";
		document.getElementById("d18").innerHTML="16";
		document.getElementById("d19").innerHTML="17";
		document.getElementById("d20").innerHTML="18";
		document.getElementById("d21").innerHTML="19";
		document.getElementById("d22").innerHTML="20";
		document.getElementById("d23").innerHTML="21";
		document.getElementById("d24").innerHTML="22";
		document.getElementById("d25").innerHTML="23";
		document.getElementById("d26").innerHTML="24";
		document.getElementById("d27").innerHTML="25";
		document.getElementById("d28").innerHTML="26";
		document.getElementById("d29").innerHTML="27";
		document.getElementById("d30").innerHTML="28";
		document.getElementById("d31").innerHTML="29";
		document.getElementById("d32").innerHTML="30";
		document.getElementById("d33").innerHTML="31";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
	
		}
	else if(day==2)
		{
		// coding for wednesday
		document.getElementById("d4").innerHTML="1";
		document.getElementById("d5").innerHTML="2";
		document.getElementById("d6").innerHTML="3";
		document.getElementById("d7").innerHTML="4";
		document.getElementById("d8").innerHTML="5";
		document.getElementById("d9").innerHTML="6";
		document.getElementById("d10").innerHTML="7";
		document.getElementById("d11").innerHTML="8";
		document.getElementById("d12").innerHTML="9";
		document.getElementById("d13").innerHTML="10";
		document.getElementById("d14").innerHTML="11";
		document.getElementById("d15").innerHTML="12";
		document.getElementById("d16").innerHTML="13";
		document.getElementById("d17").innerHTML="14";
		document.getElementById("d18").innerHTML="15";
		document.getElementById("d19").innerHTML="16";
		document.getElementById("d20").innerHTML="17";
		document.getElementById("d21").innerHTML="18";
		document.getElementById("d22").innerHTML="19";
		document.getElementById("d23").innerHTML="20";
		document.getElementById("d24").innerHTML="21";
		document.getElementById("d25").innerHTML="22";
		document.getElementById("d26").innerHTML="23";
		document.getElementById("d27").innerHTML="24";
		document.getElementById("d28").innerHTML="25";
		document.getElementById("d29").innerHTML="26";
		document.getElementById("d30").innerHTML="27";
		document.getElementById("d31").innerHTML="28";
		document.getElementById("d32").innerHTML="29";
		document.getElementById("d33").innerHTML="30";
		document.getElementById("d34").innerHTML="31";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else if(day==3)
		{
		// coding for thursday
		document.getElementById("d5").innerHTML="1";
		document.getElementById("d6").innerHTML="2";
		document.getElementById("d7").innerHTML="3";
		document.getElementById("d8").innerHTML="4";
		document.getElementById("d9").innerHTML="5";
		document.getElementById("d10").innerHTML="6";
		document.getElementById("d11").innerHTML="7";
		document.getElementById("d12").innerHTML="8";
		document.getElementById("d13").innerHTML="9";
		document.getElementById("d14").innerHTML="10";
		document.getElementById("d15").innerHTML="11";
		document.getElementById("d16").innerHTML="12";
		document.getElementById("d17").innerHTML="13";
		document.getElementById("d18").innerHTML="14";
		document.getElementById("d19").innerHTML="15";
		document.getElementById("d20").innerHTML="16";
		document.getElementById("d21").innerHTML="17";
		document.getElementById("d22").innerHTML="18";
		document.getElementById("d23").innerHTML="19";
		document.getElementById("d24").innerHTML="20";
		document.getElementById("d25").innerHTML="21";
		document.getElementById("d26").innerHTML="22";
		document.getElementById("d27").innerHTML="23";
		document.getElementById("d28").innerHTML="24";
		document.getElementById("d29").innerHTML="25";
		document.getElementById("d30").innerHTML="26";
		document.getElementById("d31").innerHTML="27";
		document.getElementById("d32").innerHTML="28";
		document.getElementById("d33").innerHTML="29";
		document.getElementById("d34").innerHTML="30";
		document.getElementById("d35").innerHTML="31";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d4").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else if(day==4)
		{
		// coding for friday
		document.getElementById("d6").innerHTML="1";
		document.getElementById("d7").innerHTML="2";
		document.getElementById("d8").innerHTML="3";
		document.getElementById("d9").innerHTML="4";
		document.getElementById("d10").innerHTML="5";
		document.getElementById("d11").innerHTML="6";
		document.getElementById("d12").innerHTML="7";
		document.getElementById("d13").innerHTML="8";
		document.getElementById("d14").innerHTML="9";
		document.getElementById("d15").innerHTML="10";
		document.getElementById("d16").innerHTML="11";
		document.getElementById("d17").innerHTML="12";
		document.getElementById("d18").innerHTML="13";
		document.getElementById("d19").innerHTML="14";
		document.getElementById("d20").innerHTML="15";
		document.getElementById("d21").innerHTML="16";
		document.getElementById("d22").innerHTML="17";
		document.getElementById("d23").innerHTML="18";
		document.getElementById("d24").innerHTML="19";
		document.getElementById("d25").innerHTML="20";
		document.getElementById("d26").innerHTML="21";
		document.getElementById("d27").innerHTML="22";
		document.getElementById("d28").innerHTML="23";
		document.getElementById("d29").innerHTML="24";
		document.getElementById("d30").innerHTML="25";
		document.getElementById("d31").innerHTML="26";
		document.getElementById("d32").innerHTML="27";
		document.getElementById("d33").innerHTML="28";
		document.getElementById("d34").innerHTML="29";
		document.getElementById("d35").innerHTML="30";
		document.getElementById("d36").innerHTML="31";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d4").innerHTML="";
		document.getElementById("d5").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else
		{
		// coding for suterday
		document.getElementById("d7").innerHTML="1";
		document.getElementById("d8").innerHTML="2";
		document.getElementById("d9").innerHTML="3";
		document.getElementById("d10").innerHTML="4";
		document.getElementById("d11").innerHTML="5";
		document.getElementById("d12").innerHTML="6";
		document.getElementById("d13").innerHTML="7";
		document.getElementById("d14").innerHTML="8";
		document.getElementById("d15").innerHTML="9";
		document.getElementById("d16").innerHTML="10";
		document.getElementById("d17").innerHTML="11";
		document.getElementById("d18").innerHTML="12";
		document.getElementById("d19").innerHTML="13";
		document.getElementById("d20").innerHTML="14";
		document.getElementById("d21").innerHTML="15";
		document.getElementById("d22").innerHTML="16";
		document.getElementById("d23").innerHTML="17";
		document.getElementById("d24").innerHTML="18";
		document.getElementById("d25").innerHTML="19";
		document.getElementById("d26").innerHTML="20";
		document.getElementById("d27").innerHTML="21";
		document.getElementById("d28").innerHTML="22";
		document.getElementById("d29").innerHTML="23";
		document.getElementById("d30").innerHTML="24";
		document.getElementById("d31").innerHTML="25";
		document.getElementById("d32").innerHTML="26";
		document.getElementById("d33").innerHTML="27";
		document.getElementById("d34").innerHTML="28";
		document.getElementById("d35").innerHTML="29";
		document.getElementById("d36").innerHTML="30";
		document.getElementById("d37").innerHTML="31";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d4").innerHTML="";
		document.getElementById("d5").innerHTML="";
		document.getElementById("d6").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
		}
	else if(m==4 || m==6 ||m==9 || m==11)
		{
		// april,june,september,november codding
		if(day==6)
		{
		// coding for sunday
		document.getElementById("d1").innerHTML="1";
		document.getElementById("d2").innerHTML="2";
		document.getElementById("d3").innerHTML="3";
		document.getElementById("d4").innerHTML="4";
		document.getElementById("d5").innerHTML="5";
		document.getElementById("d6").innerHTML="6";
		document.getElementById("d7").innerHTML="7";
		document.getElementById("d8").innerHTML="8";
		document.getElementById("d9").innerHTML="9";
		document.getElementById("d10").innerHTML="10";
		document.getElementById("d11").innerHTML="11";
		document.getElementById("d12").innerHTML="12";
		document.getElementById("d13").innerHTML="13";
		document.getElementById("d14").innerHTML="14";
		document.getElementById("d15").innerHTML="15";
		document.getElementById("d16").innerHTML="16";
		document.getElementById("d17").innerHTML="17";
		document.getElementById("d18").innerHTML="18";
		document.getElementById("d19").innerHTML="19";
		document.getElementById("d20").innerHTML="20";
		document.getElementById("d21").innerHTML="21";
		document.getElementById("d22").innerHTML="22";
		document.getElementById("d23").innerHTML="23";
		document.getElementById("d24").innerHTML="24";
		document.getElementById("d25").innerHTML="25";
		document.getElementById("d26").innerHTML="26";
		document.getElementById("d27").innerHTML="27";
		document.getElementById("d28").innerHTML="28";
		document.getElementById("d29").innerHTML="29";
		document.getElementById("d30").innerHTML="30";
		document.getElementById("d31").innerHTML="";
		document.getElementById("d32").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else if(day==0)
		{
		// coding for monday
		document.getElementById("d2").innerHTML="1";
		document.getElementById("d3").innerHTML="2";
		document.getElementById("d4").innerHTML="3";
		document.getElementById("d5").innerHTML="4";
		document.getElementById("d6").innerHTML="5";
		document.getElementById("d7").innerHTML="6";
		document.getElementById("d8").innerHTML="7";
		document.getElementById("d9").innerHTML="8";
		document.getElementById("d10").innerHTML="9";
		document.getElementById("d11").innerHTML="10";
		document.getElementById("d12").innerHTML="11";
		document.getElementById("d13").innerHTML="12";
		document.getElementById("d14").innerHTML="13";
		document.getElementById("d15").innerHTML="14";
		document.getElementById("d16").innerHTML="15";
		document.getElementById("d17").innerHTML="16";
		document.getElementById("d18").innerHTML="17";
		document.getElementById("d19").innerHTML="18";
		document.getElementById("d20").innerHTML="19";
		document.getElementById("d21").innerHTML="20";
		document.getElementById("d22").innerHTML="21";
		document.getElementById("d23").innerHTML="22";
		document.getElementById("d24").innerHTML="23";
		document.getElementById("d25").innerHTML="24";
		document.getElementById("d26").innerHTML="25";
		document.getElementById("d27").innerHTML="26";
		document.getElementById("d28").innerHTML="27";
		document.getElementById("d29").innerHTML="28";
		document.getElementById("d30").innerHTML="29";
		document.getElementById("d31").innerHTML="30";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d32").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
	
		}
	else if(day==1)
		{
		// coding for tuesday
		document.getElementById("d3").innerHTML="1";
		document.getElementById("d4").innerHTML="2";
		document.getElementById("d5").innerHTML="3";
		document.getElementById("d6").innerHTML="4";
		document.getElementById("d7").innerHTML="5";
		document.getElementById("d8").innerHTML="6";
		document.getElementById("d9").innerHTML="7";
		document.getElementById("d10").innerHTML="8";
		document.getElementById("d11").innerHTML="9";
		document.getElementById("d12").innerHTML="10";
		document.getElementById("d13").innerHTML="11";
		document.getElementById("d14").innerHTML="12";
		document.getElementById("d15").innerHTML="13";
		document.getElementById("d16").innerHTML="14";
		document.getElementById("d17").innerHTML="15";
		document.getElementById("d18").innerHTML="16";
		document.getElementById("d19").innerHTML="17";
		document.getElementById("d20").innerHTML="18";
		document.getElementById("d21").innerHTML="19";
		document.getElementById("d22").innerHTML="20";
		document.getElementById("d23").innerHTML="21";
		document.getElementById("d24").innerHTML="22";
		document.getElementById("d25").innerHTML="23";
		document.getElementById("d26").innerHTML="24";
		document.getElementById("d27").innerHTML="25";
		document.getElementById("d28").innerHTML="26";
		document.getElementById("d29").innerHTML="27";
		document.getElementById("d30").innerHTML="28";
		document.getElementById("d31").innerHTML="29";
		document.getElementById("d32").innerHTML="30";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else if(day==2)
		{
		// coding for wednesday
		document.getElementById("d4").innerHTML="1";
		document.getElementById("d5").innerHTML="2";
		document.getElementById("d6").innerHTML="3";
		document.getElementById("d7").innerHTML="4";
		document.getElementById("d8").innerHTML="5";
		document.getElementById("d9").innerHTML="6";
		document.getElementById("d10").innerHTML="7";
		document.getElementById("d11").innerHTML="8";
		document.getElementById("d12").innerHTML="9";
		document.getElementById("d13").innerHTML="10";
		document.getElementById("d14").innerHTML="11";
		document.getElementById("d15").innerHTML="12";
		document.getElementById("d16").innerHTML="13";
		document.getElementById("d17").innerHTML="14";
		document.getElementById("d18").innerHTML="15";
		document.getElementById("d19").innerHTML="16";
		document.getElementById("d20").innerHTML="17";
		document.getElementById("d21").innerHTML="18";
		document.getElementById("d22").innerHTML="19";
		document.getElementById("d23").innerHTML="20";
		document.getElementById("d24").innerHTML="21";
		document.getElementById("d25").innerHTML="22";
		document.getElementById("d26").innerHTML="23";
		document.getElementById("d27").innerHTML="24";
		document.getElementById("d28").innerHTML="25";
		document.getElementById("d29").innerHTML="26";
		document.getElementById("d30").innerHTML="27";
		document.getElementById("d31").innerHTML="28";
		document.getElementById("d32").innerHTML="29";
		document.getElementById("d33").innerHTML="30";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else if(day==3)
		{
		// coding for thursday
		document.getElementById("d5").innerHTML="1";
		document.getElementById("d6").innerHTML="2";
		document.getElementById("d7").innerHTML="3";
		document.getElementById("d8").innerHTML="4";
		document.getElementById("d9").innerHTML="5";
		document.getElementById("d10").innerHTML="6";
		document.getElementById("d11").innerHTML="7";
		document.getElementById("d12").innerHTML="8";
		document.getElementById("d13").innerHTML="9";
		document.getElementById("d14").innerHTML="10";
		document.getElementById("d15").innerHTML="11";
		document.getElementById("d16").innerHTML="12";
		document.getElementById("d17").innerHTML="13";
		document.getElementById("d18").innerHTML="14";
		document.getElementById("d19").innerHTML="15";
		document.getElementById("d20").innerHTML="16";
		document.getElementById("d21").innerHTML="17";
		document.getElementById("d22").innerHTML="18";
		document.getElementById("d23").innerHTML="19";
		document.getElementById("d24").innerHTML="20";
		document.getElementById("d25").innerHTML="21";
		document.getElementById("d26").innerHTML="22";
		document.getElementById("d27").innerHTML="23";
		document.getElementById("d28").innerHTML="24";
		document.getElementById("d29").innerHTML="25";
		document.getElementById("d30").innerHTML="26";
		document.getElementById("d31").innerHTML="27";
		document.getElementById("d32").innerHTML="28";
		document.getElementById("d33").innerHTML="29";
		document.getElementById("d34").innerHTML="30";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d4").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
	
		}
	else if(day==4)
		{
		// coding for friday
		document.getElementById("d6").innerHTML="1";
		document.getElementById("d7").innerHTML="2";
		document.getElementById("d8").innerHTML="3";
		document.getElementById("d9").innerHTML="4";
		document.getElementById("d10").innerHTML="5";
		document.getElementById("d11").innerHTML="6";
		document.getElementById("d12").innerHTML="7";
		document.getElementById("d13").innerHTML="8";
		document.getElementById("d14").innerHTML="9";
		document.getElementById("d15").innerHTML="10";
		document.getElementById("d16").innerHTML="11";
		document.getElementById("d17").innerHTML="12";
		document.getElementById("d18").innerHTML="13";
		document.getElementById("d19").innerHTML="14";
		document.getElementById("d20").innerHTML="15";
		document.getElementById("d21").innerHTML="16";
		document.getElementById("d22").innerHTML="17";
		document.getElementById("d23").innerHTML="18";
		document.getElementById("d24").innerHTML="19";
		document.getElementById("d25").innerHTML="20";
		document.getElementById("d26").innerHTML="21";
		document.getElementById("d27").innerHTML="22";
		document.getElementById("d28").innerHTML="23";
		document.getElementById("d29").innerHTML="24";
		document.getElementById("d30").innerHTML="25";
		document.getElementById("d31").innerHTML="26";
		document.getElementById("d32").innerHTML="27";
		document.getElementById("d33").innerHTML="28";
		document.getElementById("d34").innerHTML="29";
		document.getElementById("d35").innerHTML="30";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d4").innerHTML="";
		document.getElementById("d5").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else
		{
		// coding for suterday
		document.getElementById("d7").innerHTML="1";
		document.getElementById("d8").innerHTML="2";
		document.getElementById("d9").innerHTML="3";
		document.getElementById("d10").innerHTML="4";
		document.getElementById("d11").innerHTML="5";
		document.getElementById("d12").innerHTML="6";
		document.getElementById("d13").innerHTML="7";
		document.getElementById("d14").innerHTML="8";
		document.getElementById("d15").innerHTML="9";
		document.getElementById("d16").innerHTML="10";
		document.getElementById("d17").innerHTML="11";
		document.getElementById("d18").innerHTML="12";
		document.getElementById("d19").innerHTML="13";
		document.getElementById("d20").innerHTML="14";
		document.getElementById("d21").innerHTML="15";
		document.getElementById("d22").innerHTML="16";
		document.getElementById("d23").innerHTML="17";
		document.getElementById("d24").innerHTML="18";
		document.getElementById("d25").innerHTML="19";
		document.getElementById("d26").innerHTML="20";
		document.getElementById("d27").innerHTML="21";
		document.getElementById("d28").innerHTML="22";
		document.getElementById("d29").innerHTML="23";
		document.getElementById("d30").innerHTML="24";
		document.getElementById("d31").innerHTML="25";
		document.getElementById("d32").innerHTML="26";
		document.getElementById("d33").innerHTML="27";
		document.getElementById("d34").innerHTML="28";
		document.getElementById("d35").innerHTML="29";
		document.getElementById("d36").innerHTML="30";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d4").innerHTML="";
		document.getElementById("d5").innerHTML="";
		document.getElementById("d6").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
		
		}
	else
		{
		//fabruary codding
		if(year%4==0 || year%400==0)
			{
			//leap year codding
			if(day==6)
		{
		// coding for sunday
		document.getElementById("d1").innerHTML="1";
		document.getElementById("d2").innerHTML="2";
		document.getElementById("d3").innerHTML="3";
		document.getElementById("d4").innerHTML="4";
		document.getElementById("d5").innerHTML="5";
		document.getElementById("d6").innerHTML="6";
		document.getElementById("d7").innerHTML="7";
		document.getElementById("d8").innerHTML="8";
		document.getElementById("d9").innerHTML="9";
		document.getElementById("d10").innerHTML="10";
		document.getElementById("d11").innerHTML="11";
		document.getElementById("d12").innerHTML="12";
		document.getElementById("d13").innerHTML="13";
		document.getElementById("d14").innerHTML="14";
		document.getElementById("d15").innerHTML="15";
		document.getElementById("d16").innerHTML="16";
		document.getElementById("d17").innerHTML="17";
		document.getElementById("d18").innerHTML="18";
		document.getElementById("d19").innerHTML="19";
		document.getElementById("d20").innerHTML="20";
		document.getElementById("d21").innerHTML="21";
		document.getElementById("d22").innerHTML="22";
		document.getElementById("d23").innerHTML="23";
		document.getElementById("d24").innerHTML="24";
		document.getElementById("d25").innerHTML="25";
		document.getElementById("d26").innerHTML="26";
		document.getElementById("d27").innerHTML="27";
		document.getElementById("d28").innerHTML="28";
		document.getElementById("d29").innerHTML="29";
		document.getElementById("d30").innerHTML="";
		document.getElementById("d31").innerHTML="";
		document.getElementById("d32").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else if(day==0)
		{
		// coding for monday
		document.getElementById("d2").innerHTML="1";
		document.getElementById("d3").innerHTML="2";
		document.getElementById("d4").innerHTML="3";
		document.getElementById("d5").innerHTML="4";
		document.getElementById("d6").innerHTML="5";
		document.getElementById("d7").innerHTML="6";
		document.getElementById("d8").innerHTML="7";
		document.getElementById("d9").innerHTML="8";
		document.getElementById("d10").innerHTML="9";
		document.getElementById("d11").innerHTML="10";
		document.getElementById("d12").innerHTML="11";
		document.getElementById("d13").innerHTML="12";
		document.getElementById("d14").innerHTML="13";
		document.getElementById("d15").innerHTML="14";
		document.getElementById("d16").innerHTML="15";
		document.getElementById("d17").innerHTML="16";
		document.getElementById("d18").innerHTML="17";
		document.getElementById("d19").innerHTML="18";
		document.getElementById("d20").innerHTML="19";
		document.getElementById("d21").innerHTML="20";
		document.getElementById("d22").innerHTML="21";
		document.getElementById("d23").innerHTML="22";
		document.getElementById("d24").innerHTML="23";
		document.getElementById("d25").innerHTML="24";
		document.getElementById("d26").innerHTML="25";
		document.getElementById("d27").innerHTML="26";
		document.getElementById("d28").innerHTML="27";
		document.getElementById("d29").innerHTML="28";
		document.getElementById("d30").innerHTML="29";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d31").innerHTML="";
		document.getElementById("d32").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else if(day==1)
		{
		// coding for tuesday
		document.getElementById("d3").innerHTML="1";
		document.getElementById("d4").innerHTML="2";
		document.getElementById("d5").innerHTML="3";
		document.getElementById("d6").innerHTML="4";
		document.getElementById("d7").innerHTML="5";
		document.getElementById("d8").innerHTML="6";
		document.getElementById("d9").innerHTML="7";
		document.getElementById("d10").innerHTML="8";
		document.getElementById("d11").innerHTML="9";
		document.getElementById("d12").innerHTML="10";
		document.getElementById("d13").innerHTML="11";
		document.getElementById("d14").innerHTML="12";
		document.getElementById("d15").innerHTML="13";
		document.getElementById("d16").innerHTML="14";
		document.getElementById("d17").innerHTML="15";
		document.getElementById("d18").innerHTML="16";
		document.getElementById("d19").innerHTML="17";
		document.getElementById("d20").innerHTML="18";
		document.getElementById("d21").innerHTML="19";
		document.getElementById("d22").innerHTML="20";
		document.getElementById("d23").innerHTML="21";
		document.getElementById("d24").innerHTML="22";
		document.getElementById("d25").innerHTML="23";
		document.getElementById("d26").innerHTML="24";
		document.getElementById("d27").innerHTML="25";
		document.getElementById("d28").innerHTML="26";
		document.getElementById("d29").innerHTML="27";
		document.getElementById("d30").innerHTML="28";
		document.getElementById("d31").innerHTML="29";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d32").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else if(day==2)
		{
		// coding for wednesday
		document.getElementById("d4").innerHTML="1";
		document.getElementById("d5").innerHTML="2";
		document.getElementById("d6").innerHTML="3";
		document.getElementById("d7").innerHTML="4";
		document.getElementById("d8").innerHTML="5";
		document.getElementById("d9").innerHTML="6";
		document.getElementById("d10").innerHTML="7";
		document.getElementById("d11").innerHTML="8";
		document.getElementById("d12").innerHTML="9";
		document.getElementById("d13").innerHTML="10";
		document.getElementById("d14").innerHTML="11";
		document.getElementById("d15").innerHTML="12";
		document.getElementById("d16").innerHTML="13";
		document.getElementById("d17").innerHTML="14";
		document.getElementById("d18").innerHTML="15";
		document.getElementById("d19").innerHTML="16";
		document.getElementById("d20").innerHTML="17";
		document.getElementById("d21").innerHTML="18";
		document.getElementById("d22").innerHTML="19";
		document.getElementById("d23").innerHTML="20";
		document.getElementById("d24").innerHTML="21";
		document.getElementById("d25").innerHTML="22";
		document.getElementById("d26").innerHTML="23";
		document.getElementById("d27").innerHTML="24";
		document.getElementById("d28").innerHTML="25";
		document.getElementById("d29").innerHTML="26";
		document.getElementById("d30").innerHTML="27";
		document.getElementById("d31").innerHTML="28";
		document.getElementById("d32").innerHTML="29";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else if(day==3)
		{
		// coding for thursday
		document.getElementById("d5").innerHTML="1";
		document.getElementById("d6").innerHTML="2";
		document.getElementById("d7").innerHTML="3";
		document.getElementById("d8").innerHTML="4";
		document.getElementById("d9").innerHTML="5";
		document.getElementById("d10").innerHTML="6";
		document.getElementById("d11").innerHTML="7";
		document.getElementById("d12").innerHTML="8";
		document.getElementById("d13").innerHTML="9";
		document.getElementById("d14").innerHTML="10";
		document.getElementById("d15").innerHTML="11";
		document.getElementById("d16").innerHTML="12";
		document.getElementById("d17").innerHTML="13";
		document.getElementById("d18").innerHTML="14";
		document.getElementById("d19").innerHTML="15";
		document.getElementById("d20").innerHTML="16";
		document.getElementById("d21").innerHTML="17";
		document.getElementById("d22").innerHTML="18";
		document.getElementById("d23").innerHTML="19";
		document.getElementById("d24").innerHTML="20";
		document.getElementById("d25").innerHTML="21";
		document.getElementById("d26").innerHTML="22";
		document.getElementById("d27").innerHTML="23";
		document.getElementById("d28").innerHTML="24";
		document.getElementById("d29").innerHTML="25";
		document.getElementById("d30").innerHTML="26";
		document.getElementById("d31").innerHTML="27";
		document.getElementById("d32").innerHTML="28";
		document.getElementById("d33").innerHTML="29";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d4").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else if(day==4)
		{
		// coding for friday
		document.getElementById("d6").innerHTML="1";
		document.getElementById("d7").innerHTML="2";
		document.getElementById("d8").innerHTML="3";
		document.getElementById("d9").innerHTML="4";
		document.getElementById("d10").innerHTML="5";
		document.getElementById("d11").innerHTML="6";
		document.getElementById("d12").innerHTML="7";
		document.getElementById("d13").innerHTML="8";
		document.getElementById("d14").innerHTML="9";
		document.getElementById("d15").innerHTML="10";
		document.getElementById("d16").innerHTML="11";
		document.getElementById("d17").innerHTML="12";
		document.getElementById("d18").innerHTML="13";
		document.getElementById("d19").innerHTML="14";
		document.getElementById("d20").innerHTML="15";
		document.getElementById("d21").innerHTML="16";
		document.getElementById("d22").innerHTML="17";
		document.getElementById("d23").innerHTML="18";
		document.getElementById("d24").innerHTML="19";
		document.getElementById("d25").innerHTML="20";
		document.getElementById("d26").innerHTML="21";
		document.getElementById("d27").innerHTML="22";
		document.getElementById("d28").innerHTML="23";
		document.getElementById("d29").innerHTML="24";
		document.getElementById("d30").innerHTML="25";
		document.getElementById("d31").innerHTML="26";
		document.getElementById("d32").innerHTML="27";
		document.getElementById("d33").innerHTML="28";
		document.getElementById("d34").innerHTML="29";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d4").innerHTML="";
		document.getElementById("d5").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
	else
		{
		// coding for suterday
		document.getElementById("d7").innerHTML="1";
		document.getElementById("d8").innerHTML="2";
		document.getElementById("d9").innerHTML="3";
		document.getElementById("d10").innerHTML="4";
		document.getElementById("d11").innerHTML="5";
		document.getElementById("d12").innerHTML="6";
		document.getElementById("d13").innerHTML="7";
		document.getElementById("d14").innerHTML="8";
		document.getElementById("d15").innerHTML="9";
		document.getElementById("d16").innerHTML="10";
		document.getElementById("d17").innerHTML="11";
		document.getElementById("d18").innerHTML="12";
		document.getElementById("d19").innerHTML="13";
		document.getElementById("d20").innerHTML="14";
		document.getElementById("d21").innerHTML="15";
		document.getElementById("d22").innerHTML="16";
		document.getElementById("d23").innerHTML="17";
		document.getElementById("d24").innerHTML="18";
		document.getElementById("d25").innerHTML="19";
		document.getElementById("d26").innerHTML="20";
		document.getElementById("d27").innerHTML="21";
		document.getElementById("d28").innerHTML="22";
		document.getElementById("d29").innerHTML="23";
		document.getElementById("d30").innerHTML="24";
		document.getElementById("d31").innerHTML="25";
		document.getElementById("d32").innerHTML="26";
		document.getElementById("d33").innerHTML="27";
		document.getElementById("d34").innerHTML="28";
		document.getElementById("d35").innerHTML="29";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d4").innerHTML="";
		document.getElementById("d5").innerHTML="";
		document.getElementById("d6").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		}
			
			}
		else
			{
			// non leap year codding
			if(day==6)
		{
		// coding for sunday
		document.getElementById("d1").innerHTML="1";
		document.getElementById("d2").innerHTML="2";
		document.getElementById("d3").innerHTML="3";
		document.getElementById("d4").innerHTML="4";
		document.getElementById("d5").innerHTML="5";
		document.getElementById("d6").innerHTML="6";
		document.getElementById("d7").innerHTML="7";
		document.getElementById("d8").innerHTML="8";
		document.getElementById("d9").innerHTML="9";
		document.getElementById("d10").innerHTML="10";
		document.getElementById("d11").innerHTML="11";
		document.getElementById("d12").innerHTML="12";
		document.getElementById("d13").innerHTML="13";
		document.getElementById("d14").innerHTML="14";
		document.getElementById("d15").innerHTML="15";
		document.getElementById("d16").innerHTML="16";
		document.getElementById("d17").innerHTML="17";
		document.getElementById("d18").innerHTML="18";
		document.getElementById("d19").innerHTML="19";
		document.getElementById("d20").innerHTML="20";
		document.getElementById("d21").innerHTML="21";
		document.getElementById("d22").innerHTML="22";
		document.getElementById("d23").innerHTML="23";
		document.getElementById("d24").innerHTML="24";
		document.getElementById("d25").innerHTML="25";
		document.getElementById("d26").innerHTML="26";
		document.getElementById("d27").innerHTML="27";
		document.getElementById("d28").innerHTML="28";
		document.getElementById("d29").innerHTML="";
		document.getElementById("d30").innerHTML="";
		document.getElementById("d31").innerHTML="";
		document.getElementById("d32").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		
		}
	else if(day==0)
		{
		// coding for monday
		document.getElementById("d2").innerHTML="1";
		document.getElementById("d3").innerHTML="2";
		document.getElementById("d4").innerHTML="3";
		document.getElementById("d5").innerHTML="4";
		document.getElementById("d6").innerHTML="5";
		document.getElementById("d7").innerHTML="6";
		document.getElementById("d8").innerHTML="7";
		document.getElementById("d9").innerHTML="8";
		document.getElementById("d10").innerHTML="9";
		document.getElementById("d11").innerHTML="10";
		document.getElementById("d12").innerHTML="11";
		document.getElementById("d13").innerHTML="12";
		document.getElementById("d14").innerHTML="13";
		document.getElementById("d15").innerHTML="14";
		document.getElementById("d16").innerHTML="15";
		document.getElementById("d17").innerHTML="16";
		document.getElementById("d18").innerHTML="17";
		document.getElementById("d19").innerHTML="18";
		document.getElementById("d20").innerHTML="19";
		document.getElementById("d21").innerHTML="20";
		document.getElementById("d22").innerHTML="21";
		document.getElementById("d23").innerHTML="22";
		document.getElementById("d24").innerHTML="23";
		document.getElementById("d25").innerHTML="24";
		document.getElementById("d26").innerHTML="25";
		document.getElementById("d27").innerHTML="26";
		document.getElementById("d28").innerHTML="27";
		document.getElementById("d29").innerHTML="28";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d30").innerHTML="";
		document.getElementById("d31").innerHTML="";
		document.getElementById("d32").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
	
		
		}
	else if(day==1)
		{
		// coding for tuesday
		document.getElementById("d3").innerHTML="1";
		document.getElementById("d4").innerHTML="2";
		document.getElementById("d5").innerHTML="3";
		document.getElementById("d6").innerHTML="4";
		document.getElementById("d7").innerHTML="5";
		document.getElementById("d8").innerHTML="6";
		document.getElementById("d9").innerHTML="7";
		document.getElementById("d10").innerHTML="8";
		document.getElementById("d11").innerHTML="9";
		document.getElementById("d12").innerHTML="10";
		document.getElementById("d13").innerHTML="11";
		document.getElementById("d14").innerHTML="12";
		document.getElementById("d15").innerHTML="13";
		document.getElementById("d16").innerHTML="14";
		document.getElementById("d17").innerHTML="15";
		document.getElementById("d18").innerHTML="16";
		document.getElementById("d19").innerHTML="17";
		document.getElementById("d20").innerHTML="18";
		document.getElementById("d21").innerHTML="19";
		document.getElementById("d22").innerHTML="20";
		document.getElementById("d23").innerHTML="21";
		document.getElementById("d24").innerHTML="22";
		document.getElementById("d25").innerHTML="23";
		document.getElementById("d26").innerHTML="24";
		document.getElementById("d27").innerHTML="25";
		document.getElementById("d28").innerHTML="26";
		document.getElementById("d29").innerHTML="27";
		document.getElementById("d30").innerHTML="28";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d31").innerHTML="";
		document.getElementById("d32").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
	
		
		}
	else if(day==2)
		{
		// coding for wednesday
		document.getElementById("d4").innerHTML="1";
		document.getElementById("d5").innerHTML="2";
		document.getElementById("d6").innerHTML="3";
		document.getElementById("d7").innerHTML="4";
		document.getElementById("d8").innerHTML="5";
		document.getElementById("d9").innerHTML="6";
		document.getElementById("d10").innerHTML="7";
		document.getElementById("d11").innerHTML="8";
		document.getElementById("d12").innerHTML="9";
		document.getElementById("d13").innerHTML="10";
		document.getElementById("d14").innerHTML="11";
		document.getElementById("d15").innerHTML="12";
		document.getElementById("d16").innerHTML="13";
		document.getElementById("d17").innerHTML="14";
		document.getElementById("d18").innerHTML="15";
		document.getElementById("d19").innerHTML="16";
		document.getElementById("d20").innerHTML="17";
		document.getElementById("d21").innerHTML="18";
		document.getElementById("d22").innerHTML="19";
		document.getElementById("d23").innerHTML="20";
		document.getElementById("d24").innerHTML="21";
		document.getElementById("d25").innerHTML="22";
		document.getElementById("d26").innerHTML="23";
		document.getElementById("d27").innerHTML="24";
		document.getElementById("d28").innerHTML="25";
		document.getElementById("d29").innerHTML="26";
		document.getElementById("d30").innerHTML="27";
		document.getElementById("d31").innerHTML="28";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d32").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
	
		
		}
	else if(day==3)
		{
		// coding for thursday
		document.getElementById("d5").innerHTML="1";
		document.getElementById("d6").innerHTML="2";
		document.getElementById("d7").innerHTML="3";
		document.getElementById("d8").innerHTML="4";
		document.getElementById("d9").innerHTML="5";
		document.getElementById("d10").innerHTML="6";
		document.getElementById("d11").innerHTML="7";
		document.getElementById("d12").innerHTML="8";
		document.getElementById("d13").innerHTML="9";
		document.getElementById("d14").innerHTML="10";
		document.getElementById("d15").innerHTML="11";
		document.getElementById("d16").innerHTML="12";
		document.getElementById("d17").innerHTML="13";
		document.getElementById("d18").innerHTML="14";
		document.getElementById("d19").innerHTML="15";
		document.getElementById("d20").innerHTML="16";
		document.getElementById("d21").innerHTML="17";
		document.getElementById("d22").innerHTML="18";
		document.getElementById("d23").innerHTML="19";
		document.getElementById("d24").innerHTML="20";
		document.getElementById("d25").innerHTML="21";
		document.getElementById("d26").innerHTML="22";
		document.getElementById("d27").innerHTML="23";
		document.getElementById("d28").innerHTML="24";
		document.getElementById("d29").innerHTML="25";
		document.getElementById("d30").innerHTML="26";
		document.getElementById("d31").innerHTML="27";
		document.getElementById("d32").innerHTML="28";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d4").innerHTML="";
		document.getElementById("d33").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		
		}
	else if(day==4)
		{
		// coding for friday
		document.getElementById("d6").innerHTML="1";
		document.getElementById("d7").innerHTML="2";
		document.getElementById("d8").innerHTML="3";
		document.getElementById("d9").innerHTML="4";
		document.getElementById("d10").innerHTML="5";
		document.getElementById("d11").innerHTML="6";
		document.getElementById("d12").innerHTML="7";
		document.getElementById("d13").innerHTML="8";
		document.getElementById("d14").innerHTML="9";
		document.getElementById("d15").innerHTML="10";
		document.getElementById("d16").innerHTML="11";
		document.getElementById("d17").innerHTML="12";
		document.getElementById("d18").innerHTML="13";
		document.getElementById("d19").innerHTML="14";
		document.getElementById("d20").innerHTML="15";
		document.getElementById("d21").innerHTML="16";
		document.getElementById("d22").innerHTML="17";
		document.getElementById("d23").innerHTML="18";
		document.getElementById("d24").innerHTML="19";
		document.getElementById("d25").innerHTML="20";
		document.getElementById("d26").innerHTML="21";
		document.getElementById("d27").innerHTML="22";
		document.getElementById("d28").innerHTML="23";
		document.getElementById("d29").innerHTML="24";
		document.getElementById("d30").innerHTML="25";
		document.getElementById("d31").innerHTML="26";
		document.getElementById("d32").innerHTML="27";
		document.getElementById("d33").innerHTML="28";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d4").innerHTML="";
		document.getElementById("d5").innerHTML="";
		document.getElementById("d34").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		
		}
	else
		{
		// coding for suterday
		document.getElementById("d7").innerHTML="1";
		document.getElementById("d8").innerHTML="2";
		document.getElementById("d9").innerHTML="3";
		document.getElementById("d10").innerHTML="4";
		document.getElementById("d11").innerHTML="5";
		document.getElementById("d12").innerHTML="6";
		document.getElementById("d13").innerHTML="7";
		document.getElementById("d14").innerHTML="8";
		document.getElementById("d15").innerHTML="9";
		document.getElementById("d16").innerHTML="10";
		document.getElementById("d17").innerHTML="11";
		document.getElementById("d18").innerHTML="12";
		document.getElementById("d19").innerHTML="13";
		document.getElementById("d20").innerHTML="14";
		document.getElementById("d21").innerHTML="15";
		document.getElementById("d22").innerHTML="16";
		document.getElementById("d23").innerHTML="17";
		document.getElementById("d24").innerHTML="18";
		document.getElementById("d25").innerHTML="19";
		document.getElementById("d26").innerHTML="20";
		document.getElementById("d27").innerHTML="21";
		document.getElementById("d28").innerHTML="22";
		document.getElementById("d29").innerHTML="23";
		document.getElementById("d30").innerHTML="24";
		document.getElementById("d31").innerHTML="25";
		document.getElementById("d32").innerHTML="26";
		document.getElementById("d33").innerHTML="27";
		document.getElementById("d34").innerHTML="28";
		document.getElementById("d1").innerHTML="";
		document.getElementById("d2").innerHTML="";
		document.getElementById("d3").innerHTML="";
		document.getElementById("d4").innerHTML="";
		document.getElementById("d5").innerHTML="";
		document.getElementById("d6").innerHTML="";
		document.getElementById("d35").innerHTML="";
		document.getElementById("d36").innerHTML="";
		document.getElementById("d37").innerHTML="";
		document.getElementById("d38").innerHTML="";
		document.getElementById("d39").innerHTML="";
		document.getElementById("d40").innerHTML="";
		document.getElementById("d41").innerHTML="";
		document.getElementById("d42").innerHTML="";
		
		
		}
			
			
			}
		
		}
	//taskview11();
}
function monthfocus()
{
	
f=0;
txtFocus=false;
x=1;

}
function yearfocus()
{
f=1;
txtFocus=true;
y=1;

}

function showmonth()
{
	checktop1=0;
	checktop2=0;
	checktop3=0;
	checktop4=0;
	checktop5=0;
	checktop6=0;
	checktop7=0;
	document.getElementById("d1").style.backgroundColor="white";
	document.getElementById("d2").style.backgroundColor="white";
	document.getElementById("d3").style.backgroundColor="white";
	document.getElementById("d4").style.backgroundColor="white";
	document.getElementById("d5").style.backgroundColor="white";
	document.getElementById("d6").style.backgroundColor="white";
	document.getElementById("d7").style.backgroundColor="white";
	document.getElementById("d8").style.backgroundColor="white";
	document.getElementById("d9").style.backgroundColor="white";
	document.getElementById("d10").style.backgroundColor="white";
	document.getElementById("d11").style.backgroundColor="white";
	document.getElementById("d12").style.backgroundColor="white";
	document.getElementById("d13").style.backgroundColor="white";
	document.getElementById("d14").style.backgroundColor="white";
	document.getElementById("d15").style.backgroundColor="white";
	document.getElementById("d16").style.backgroundColor="white";
	document.getElementById("d17").style.backgroundColor="white";
	document.getElementById("d18").style.backgroundColor="white";
	document.getElementById("d19").style.backgroundColor="white";
	document.getElementById("d20").style.backgroundColor="white";
	document.getElementById("d21").style.backgroundColor="white";
	document.getElementById("d22").style.backgroundColor="white";
	document.getElementById("d23").style.backgroundColor="white";
	document.getElementById("d24").style.backgroundColor="white";
	document.getElementById("d25").style.backgroundColor="white";
	document.getElementById("d26").style.backgroundColor="white";
	document.getElementById("d27").style.backgroundColor="white";
	document.getElementById("d28").style.backgroundColor="white";
	document.getElementById("d29").style.backgroundColor="white";
	document.getElementById("d30").style.backgroundColor="white";
	document.getElementById("d31").style.backgroundColor="white";
	document.getElementById("d32").style.backgroundColor="white";
	document.getElementById("d33").style.backgroundColor="white";
	document.getElementById("d34").style.backgroundColor="white";
	document.getElementById("d35").style.backgroundColor="white";
	document.getElementById("d36").style.backgroundColor="white";
	document.getElementById("d37").style.backgroundColor="white";
	
	if(checkforcounterx==1 && checkforcountery==1)
		{
		  
		   var searchy=parseInt(document.getElementById("year").value);
		   yy=searchy;
		   if(typeof(document.getElementById("month").value)=="number")
			   {
			   var searchz=document.getElementById("month").value;
			   if(searchz>=1 && searchz<=12)
			   {
			   showcalender(searchz,searchy);
			   }
		   else
			   {
			   alert("please enter correct month");
			   }
			   }
		   else
			   {
			   var searchx=document.getElementById("month").value;
			   if(searchx.length==3)
				   {
			   var kk=searchx.charAt(0);
			   kk=kk.toUpperCase();
			   var kk1=searchx.substr(1, 2);
			   kk1=kk1.toLowerCase();
			   searchx=kk+kk1;
			   document.getElementById("month").value=searchx;
			   if(searchx=="Jan")
			   {
			   showcalender(1,searchy);
			   }
		   else if(searchx=="Feb")
			   {
			   showcalender(2,searchy);
			   }
		   else if(searchx=="Mar")
		   {
		   showcalender(3,searchy);
		   }
		   else if(searchx=="Apr")
		   {
		   showcalender(4,searchy);
		   }
		   else if(searchx=="May")
		   {
		   showcalender(5,searchy);
		   }
		   else if(searchx=="Jun")
		   {
		   showcalender(6,searchy);
		   }
		   else if(searchx=="Jul")
		   {
		   showcalender(7,searchy);
		   }
		   else if(searchx=="Aug")
		   {
		   showcalender(8,searchy);
		   }
		   else if(searchx=="Sep")
		   {
		   showcalender(9,searchy);
		   }
		   else if(searchx=="Oct")
		   {
		   showcalender(10,searchy);
		   }
		   else if(searchx=="Nov")
		   {
		   showcalender(11,searchy);
		   }
		   else if(searchx=="Dec")
		   {
		   showcalender(12,searchy);
		   }
				   }
			   }
		   
		  
		   
		  
		   
		   
		   
		}
	else if(checkforcounterx==1 && checkforcountery==0)
		{
		var searchy=parseInt(document.getElementById("yearpanel").innerHTML);
		yy=searchy;
		   if(typeof(document.getElementById("month").value)=="number")
			   {
			   var searchz=document.getElementById("month").value;
			   if(searchz>=1 && searchz<=12)
			   {
			   showcalender(searchz,searchy);
			   }
		   else
			   {
			   alert("please enter correct month");
			   }
			   }
		   else
			   {
			   var searchx=document.getElementById("month").value;
			   if(searchx.length==3)
				   {
			   var kk=searchx.charAt(0);
			   kk=kk.toUpperCase();
			   var kk1=searchx.substr(1, 2);
			   kk1=kk1.toLowerCase();
			   searchx=kk+kk1;
			   document.getElementById("month").value=searchx;
			   if(searchx=="Jan")
			   {
			   showcalender(1,searchy);
			   }
		   else if(searchx=="Feb")
			   {
			   showcalender(2,searchy);
			   }
		   else if(searchx=="Mar")
		   {
		   showcalender(3,searchy);
		   }
		   else if(searchx=="Apr")
		   {
		   showcalender(4,searchy);
		   }
		   else if(searchx=="May")
		   {
		   showcalender(5,searchy);
		   }
		   else if(searchx=="Jun")
		   {
		   showcalender(6,searchy);
		   }
		   else if(searchx=="Jul")
		   {
		   showcalender(7,searchy);
		   }
		   else if(searchx=="Aug")
		   {
		   showcalender(8,searchy);
		   }
		   else if(searchx=="Sep")
		   {
		   showcalender(9,searchy);
		   }
		   else if(searchx=="Oct")
		   {
		   showcalender(10,searchy);
		   }
		   else if(searchx=="Nov")
		   {
		   showcalender(11,searchy);
		   }
		   else if(searchx=="Dec")
		   {
		   showcalender(12,searchy);
		   }
				   }
			   }
		
		}
	

}

function showyear()
{
	checktop1=0;
	checktop2=0;
	checktop3=0;
	checktop4=0;
	checktop5=0;
	checktop6=0;
	checktop7=0;
	document.getElementById("d1").style.backgroundColor="white";
	document.getElementById("d2").style.backgroundColor="white";
	document.getElementById("d3").style.backgroundColor="white";
	document.getElementById("d4").style.backgroundColor="white";
	document.getElementById("d5").style.backgroundColor="white";
	document.getElementById("d6").style.backgroundColor="white";
	document.getElementById("d7").style.backgroundColor="white";
	document.getElementById("d8").style.backgroundColor="white";
	document.getElementById("d9").style.backgroundColor="white";
	document.getElementById("d10").style.backgroundColor="white";
	document.getElementById("d11").style.backgroundColor="white";
	document.getElementById("d12").style.backgroundColor="white";
	document.getElementById("d13").style.backgroundColor="white";
	document.getElementById("d14").style.backgroundColor="white";
	document.getElementById("d15").style.backgroundColor="white";
	document.getElementById("d16").style.backgroundColor="white";
	document.getElementById("d17").style.backgroundColor="white";
	document.getElementById("d18").style.backgroundColor="white";
	document.getElementById("d19").style.backgroundColor="white";
	document.getElementById("d20").style.backgroundColor="white";
	document.getElementById("d21").style.backgroundColor="white";
	document.getElementById("d22").style.backgroundColor="white";
	document.getElementById("d23").style.backgroundColor="white";
	document.getElementById("d24").style.backgroundColor="white";
	document.getElementById("d25").style.backgroundColor="white";
	document.getElementById("d26").style.backgroundColor="white";
	document.getElementById("d27").style.backgroundColor="white";
	document.getElementById("d28").style.backgroundColor="white";
	document.getElementById("d29").style.backgroundColor="white";
	document.getElementById("d30").style.backgroundColor="white";
	document.getElementById("d31").style.backgroundColor="white";
	document.getElementById("d32").style.backgroundColor="white";
	document.getElementById("d33").style.backgroundColor="white";
	document.getElementById("d34").style.backgroundColor="white";
	document.getElementById("d35").style.backgroundColor="white";
	document.getElementById("d36").style.backgroundColor="white";
	document.getElementById("d37").style.backgroundColor="white";
	
	if(checkforcounterx==0 && checkforcountery==1)
		{
		
		var searchx=document.getElementById("monthpanel").innerHTML;
		var searchy=document.getElementById("year").value;
		yy=searchy;
		if(searchy.length==4)
			{
			searchy=parseInt(searchy);
			 if(searchx=="Jan")
			   {
			   showcalender(1,searchy);
			   }
		   else if(searchx=="Feb")
			   {
			   showcalender(2,searchy);
			   }
		   else if(searchx=="Mar")
		   {
		   showcalender(3,searchy);
		   }
		   else if(searchx=="Apr")
		   {
		   showcalender(4,searchy);
		   }
		   else if(searchx=="May")
		   {
		   showcalender(5,searchy);
		   }
		   else if(searchx=="Jun")
		   {
		   showcalender(6,searchy);
		   }
		   else if(searchx=="Jul")
		   {
		   showcalender(7,searchy);
		   }
		   else if(searchx=="Aug")
		   {
		   showcalender(8,searchy);
		   }
		   else if(searchx=="Sep")
		   {
		   showcalender(9,searchy);
		   }
		   else if(searchx=="Oct")
		   {
		   showcalender(10,searchy);
		   }
		   else if(searchx=="Nov")
		   {
		   showcalender(11,searchy);
		   }
		   else if(searchx=="Dec")
		   {
		   showcalender(12,searchy);
		   }
		   else
			   {
			   alert("please check month or year");
			   }
			}
		
		}
	else if(checkforcounterx==1 && checkforcountery==1)
		{
		
		var searchx=document.getElementById("month").value;
		var searchy=document.getElementById("year").value;
		yy=searchy;
		if(searchy.length==4)
			{
			searchy=parseInt(searchy);
			 if(searchx=="Jan")
			   {
			   showcalender(1,searchy);
			   }
		   else if(searchx=="Feb")
			   {
			   showcalender(2,searchy);
			   }
		   else if(searchx=="Mar")
		   {
		   showcalender(3,searchy);
		   }
		   else if(searchx=="Apr")
		   {
		   showcalender(4,searchy);
		   }
		   else if(searchx=="May")
		   {
		   showcalender(5,searchy);
		   }
		   else if(searchx=="Jun")
		   {
		   showcalender(6,searchy);
		   }
		   else if(searchx=="Jul")
		   {
		   showcalender(7,searchy);
		   }
		   else if(searchx=="Aug")
		   {
		   showcalender(8,searchy);
		   }
		   else if(searchx=="Sep")
		   {
		   showcalender(9,searchy);
		   }
		   else if(searchx=="Oct")
		   {
		   showcalender(10,searchy);
		   }
		   else if(searchx=="Nov")
		   {
		   showcalender(11,searchy);
		   }
		   else if(searchx=="Dec")
		   {
		   showcalender(12,searchy);
		   }
		   else
			   {
			   alert("please check month or year");
			   }
			}
		
		}
	
}

document.onkeydown = function(e) {
    switch (e.keyCode) {
        case 37:
           left();
            break;
        case 38:
           up();
            break;
        case 39:
          right();
            break;
        case 40:
          down();
            break;
    }
};

function left()
{
	if(parseInt(ttdate)==1)
		{
		minus();
		}
	var pop=position;
	if(checktop1==1){
		
		if(pop==1)
			{
			
			}
		else
			{
			pop=pop-1;
			ttdate=pop;
			showcolor(pop);
			}
	}
	else if(checktop2==1)
		{
		
		if(pop==2)
		{
		
		}
	else
		{
		pop=pop-1;
		ttdate=pop-1;
		showcolor(pop);
		}
		}
	else if(checktop3==1)
	{
		
		if(pop==3)
		{
		
		}
	else
		{
		pop=pop-1;
		ttdate=pop-2;
		showcolor(pop);
		}
	}
	else if(checktop4==1)
	{
		
		if(pop==4)
		{
		
		}
	else
		{
		pop=pop-1;
		ttdate=pop-3;
		showcolor(pop);
		}
	}
	else if(checktop5==1)
	{
		
		if(pop==5)
		{
		
		}
	else
		{
		pop=pop-1;
		ttdate=pop-4;
		showcolor(pop);
		}
	}
	else if(checktop6==1)
	{
		
		if(pop==6)
		{
		
		}
	else
		{
		pop=pop-1;
		ttdate=pop-5;
		showcolor(pop);
		}
	}
	else if(checktop7==1)
	{
		
		if(pop==7)
		{
		
		}
	else
		{
		pop=pop-1;
		ttdate=pop-6;
		showcolor(pop);
		}
	}
}
function up()
{
	if(checktop1==1)
	{
		var pop=position;
		
		if(pop==1 || pop==2 || pop==3 || pop==4 || pop==5 || pop==6 || pop==7)
		{
			
		}
		else
		{
			pop=pop-7;
			ttdate=pop;
			showcolor(pop);
		}
	}
else if(checktop2==1)
	{
	var pop=position;
	
		if(pop==2 || pop==3 || pop==4 || pop==5 || pop==6 || pop==7 || pop==8)
		{
			
		}
		else
		{
			pop=pop-7;
			ttdate=pop-1;
			showcolor(pop);
		}
	}
else if(checktop3==1)
{
var pop=position;

	if(pop==3 || pop==4 || pop==5 || pop==6 || pop==7 || pop==8 || pop==9)
	{
		
		
	}
	else
	{
			pop=pop-7;
			ttdate=pop-2;
			showcolor(pop);
	}
}
else if(checktop4==1)
{
var pop=position;

	if(pop==4 || pop==5 || pop==6 || pop==7 || pop==8 || pop==9 || pop==10)
	{
		
	}
	else
	{
		pop=pop-7;
		ttdate=pop-3;
		showcolor(pop);
	}
}
else if(checktop5==1)
{
var pop=position;

	if(pop==5 || pop==6 || pop==7 || pop==8 || pop==9 || pop==10 || pop==11)
	{
		
	}
	else
	{
		pop=pop-7;
		ttdate=pop-4;
		showcolor(pop);
	}
}
else if(checktop6==1)
{
var pop=position;

	if(pop==6 || pop==7 || pop==8 || pop==9 || pop==10 || pop==11 || pop==12)
	{
		
	}
	else
	{
		pop=pop-7;
		ttdate=pop-5;
		showcolor(pop);
	}
}
else if(checktop7==1)
	{
	var pop=position;
	
		if(pop==7 || pop==8 || pop==9 || pop==10 || pop==11 || pop==12 || pop==13)
		{
			
		}
		else
		{
			pop=pop-7;
			ttdate=pop-6;
			showcolor(pop);
		}
	}
}
function right()
{
	
	if(m==1 || m==3 || m==5 || m==7 || m==8 || m==10 || m==12)
	{
		// coding for the 31 days of month
	if(parseInt(ttdate)==31)
	{
	plus();
	}
	var pop=position;
		if(checktop1==1){
			
			if(pop==31)
				{
				
				}
			else
				{
				pop=pop+1;
				ttdate=pop;
				showcolor(pop);
				}
		}
		else if(checktop2==1)
			{
			
			if(pop==32)
			{
			
			}
		else
			{
			pop=pop+1;
			ttdate=pop-1;
			showcolor(pop);
			}
			}
		else if(checktop3==1)
		{
			
			if(pop==33)
			{
			
			}
		else
			{
			pop=pop+1;
			ttdate=pop-2;
			showcolor(pop);
			}
		}
		else if(checktop4==1)
		{
			
			if(pop==34)
			{
			
			}
		else
			{
			pop=pop+1;
			ttdate=pop-3;
			showcolor(pop);
			}
		}
		else if(checktop5==1)
		{
			
			if(pop==35)
			{
			
			}
		else
			{
			pop=pop+1;
			ttdate=pop-4;
			showcolor(pop);
			}
		}
		else if(checktop6==1)
		{
			
			if(pop==36)
			{
			
			}
		else
			{
			pop=pop+1;
			ttdate=pop-5;
			showcolor(pop);
			}
		}
		else if(checktop7==1)
		{
			
			if(pop==37)
			{
			
			}
		else
			{
			pop=pop+1;
			ttdate=pop-6;
			showcolor(pop);
			}
		}
	}
	else if(m==4 || m==6 || m==9 || m==11)
		{
		// coding for 30 days of month
		if(parseInt(ttdate)==30)
		{
			plus();
		}
		
		var pop=position;
		if(checktop1==1){
			
			if(pop==30)
				{
				
				}
			else
				{
				pop=pop+1;
				ttdate=pop;
				showcolor(pop);
				}
		}
		else if(checktop2==1)
			{
			
			if(pop==31)
			{
			
			}
		else
			{
			pop=pop+1;
			ttdate=pop-1;
			showcolor(pop);
			}
			}
		else if(checktop3==1)
		{
			
			if(pop==32)
			{
			
			}
		else
			{
			pop=pop+1;
			ttdate=pop-2;
			showcolor(pop);
			}
		}
		else if(checktop4==1)
		{
			
			if(pop==33)
			{
			
			}
		else
			{
			pop=pop+1;
			ttdate=pop-3;
			showcolor(pop);
			}
		}
		else if(checktop5==1)
		{
			
			if(pop==34)
			{
			
			}
		else
			{
			pop=pop+1;
			ttdate=pop-4;
			showcolor(pop);
			}
		}
		else if(checktop6==1)
		{
			
			if(pop==35)
			{
			
			}
		else
			{
			pop=pop+1;
			ttdate=pop-5;
			showcolor(pop);
			}
		}
		else if(checktop7==1)
		{
			
			if(pop==36)
			{
			
			}
		else
			{
			pop=pop+1;
			ttdate=pop-6;
			showcolor(pop);
			}
		}
		
		}
	else if(m==2)
		{
		 if(yy%4==0)
			 {
			 // coding for 29 days of month
			 
			 if(parseInt(ttdate)==29)
			{
				plus();
			}
			 var pop=position;
				if(checktop1==1){
					
					if(pop==29)
						{
						
						}
					else
						{
						pop=pop+1;
						ttdate=pop;
						showcolor(pop);
						}
				}
				else if(checktop2==1)
					{
					
					if(pop==30)
					{
					
					}
				else
					{
					pop=pop+1;
					ttdate=pop-1;
					showcolor(pop);
					}
					}
				else if(checktop3==1)
				{
					
					if(pop==31)
					{
					
					}
				else
					{
					pop=pop+1;
					ttdate=pop-2;
					showcolor(pop);
					}
				}
				else if(checktop4==1)
				{
					
					if(pop==32)
					{
					
					}
				else
					{
					pop=pop+1;
					ttdate=pop-3;
					showcolor(pop);
					}
				}
				else if(checktop5==1)
				{
					
					if(pop==33)
					{
					
					}
				else
					{
					pop=pop+1;
					ttdate=pop-4;
					showcolor(pop);
					}
				}
				else if(checktop6==1)
				{
					
					if(pop==34)
					{
					
					}
				else
					{
					pop=pop+1;
					ttdate=pop-5;
					showcolor(pop);
					}
				}
				else if(checktop7==1)
				{
					
					if(pop==35)
					{
					
					}
				else
					{
					pop=pop+1;
					ttdate=pop-6;
					showcolor(pop);
					}
				}
			 
			 }
		 else
			 {
			 // coding for 28 days of month
			 
			 if(parseInt(ttdate)==28)
			{
				plus();
			}
			 var pop=position;
				if(checktop1==1){
					
					if(pop==28)
						{
						
						}
					else
						{
						pop=pop+1;
						ttdate=pop;
						showcolor(pop);
						}
				}
				else if(checktop2==1)
					{
					
					if(pop==29)
					{
					
					}
				else
					{
					pop=pop+1;
					ttdate=pop-1;
					showcolor(pop);
					}
					}
				else if(checktop3==1)
				{
					
					if(pop==30)
					{
					
					}
				else
					{
					pop=pop+1;
					ttdate=pop-2;
					showcolor(pop);
					}
				}
				else if(checktop4==1)
				{
					
					if(pop==31)
					{
					
					}
				else
					{
					pop=pop+1;
					ttdate=pop-3;
					showcolor(pop);
					}
				}
				else if(checktop5==1)
				{
					
					if(pop==32)
					{
					
					}
				else
					{
					pop=pop+1;
					ttdate=pop-4;
					showcolor(pop);
					}
				}
				else if(checktop6==1)
				{
					
					if(pop==33)
					{
					
					}
				else
					{
					pop=pop+1;
					ttdate=pop-5;
					showcolor(pop);
					}
				}
				else if(checktop7==1)
				{
					
					if(pop==34)
					{
					
					}
				else
					{
					pop=pop+1;
					ttdate=pop-6;
					showcolor(pop);
					}
				}
			 
			 }
		}
}
function down()
{
	if(m==1 || m==3 || m==5 || m==7 || m==8 || m==10 || m==12)
		{
		//coding for 31 days of month
	if(checktop1==1)
		{
			var pop=position;
			
			if(pop==29 || pop==30 || pop==31 || pop==28 || pop==27 || pop==26 || pop==25)
			{
				
			}
			else
			{
				pop=pop+7;
				ttdate=pop;
				showcolor(pop);
			}
		}
	else if(checktop2==1)
		{
		var pop=position;
		
			if(pop==29 || pop==30 || pop==31 || pop==32 || pop==28 || pop==27 || pop==26)
			{
				
			}
			else
			{
				pop=pop+7;
				ttdate=pop-1;
				showcolor(pop);
			}
		}
	else if(checktop3==1)
	{
	var pop=position;
	
		if(pop==29 || pop==30 || pop==31 || pop==32 || pop==33 || pop==28 || pop==27)
		{
			
			
		}
		else
		{
				pop=pop+7;
				ttdate=pop-2;
				showcolor(pop);
		}
	}
	else if(checktop4==1)
	{
	var pop=position;
	
		if(pop==29 || pop==30 || pop==31 || pop==32 || pop==33 || pop==34 || pop==28)
		{
			
		}
		else
		{
			pop=pop+7;
			ttdate=pop-3;
			showcolor(pop);
		}
	}
	else if(checktop5==1)
	{
	var pop=position;
	
		if(pop==29 || pop==30 || pop==31 || pop==32 || pop==33 || pop==34 || pop==35)
		{
			
		}
		else
		{
			pop=pop+7;
			ttdate=pop-4;
			showcolor(pop);
		}
	}
	else if(checktop6==1)
	{
	var pop=position;
	
		if(pop==30 || pop==31 || pop==32 || pop==33 || pop==34 || pop==35 || pop==36)
		{
			
		}
		else
		{
			pop=pop+7;
			ttdate=pop-5;
			showcolor(pop);
		}
	}
	else if(checktop7==1)
		{
		var pop=position;
	
			if(pop==31 || pop==32 || pop==33 || pop==34 || pop==35 || pop==36 || pop==37)
			{
				
			}
			else
			{
				pop=pop+7;
				ttdate=pop-6;
				showcolor(pop);
			}
		}
		}
	else if(m==4 || m==6 || m==9 || m==11)
		{
		//coding for the 30 days of month
		if(checktop1==1)
		{
			var pop=position;
			
			if(pop==29 || pop==30 || pop==24 || pop==28 || pop==27 || pop==26 || pop==25)
			{
				
			}
			else
			{
				pop=pop+7;
				ttdate=pop;
				showcolor(pop);
			}
		}
	else if(checktop2==1)
		{
		var pop=position;
		
			if(pop==29 || pop==30 || pop==31 || pop==25 || pop==28 || pop==27 || pop==26)
			{
				
			}
			else
			{
				pop=pop+7;
				ttdate=pop-1;
				showcolor(pop);
			}
		}
	else if(checktop3==1)
	{
	var pop=position;
	
		if(pop==29 || pop==30 || pop==31 || pop==32 || pop==26 || pop==28 || pop==27)
		{
			
			
		}
		else
		{
				pop=pop+7;
				ttdate=pop-2;
				showcolor(pop);
		}
	}
	else if(checktop4==1)
	{
	var pop=position;
	
		if(pop==29 || pop==30 || pop==31 || pop==32 || pop==33 || pop==28 || pop==27)
		{
			
		}
		else
		{
			pop=pop+7;
			ttdate=pop-3;
			showcolor(pop);
		}
	}
	else if(checktop5==1)
	{
	var pop=position;
	
		if(pop==29 || pop==30 || pop==31 || pop==32 || pop==33 || pop==34 || pop==28)
		{
			
		}
		else
		{
			pop=pop+7;
			ttdate=pop-4;
			showcolor(pop);
		}
	}
	else if(checktop6==1)
	{
	var pop=position;
	
		if(pop==30 || pop==31 || pop==32 || pop==33 || pop==34 || pop==35 || pop==29)
		{
			
		}
		else
		{
			pop=pop+7;
			ttdate=pop-5;
			showcolor(pop);
		}
	}
	else if(checktop7==1)
		{
		var pop=position;
		
			if(pop==31 || pop==32 || pop==33 || pop==34 || pop==35 || pop==36 || pop==30)
			{
				
			}
			else
			{
				pop=pop+7;
				ttdate=pop-6;
				showcolor(pop);
			}
		}
		}
	else if(m==2)
		{
		if(yy%4==0)
			{
			//coding for 29 days of february month
			if(checktop1==1)
			{
				var pop=position;
				
				if(pop==29 || pop==28 || pop==27 || pop==26 || pop==25 || pop==24 || pop==23)
				{
					
				}
				else
				{
					pop=pop+7;
					ttdate=pop;
					showcolor(pop);
				}
			}
		else if(checktop2==1)
			{
			var pop=position;
			ttdate=pop-1;
				if(pop==30 || pop==29 || pop==28 || pop==27 || pop==26 || pop==25 || pop==24)
				{
					
				}
				else
				{
					pop=pop+7;
					showcolor(pop);
				}
			}
		else if(checktop3==1)
		{
		var pop=position;
		
			if(pop==31 || pop==30 || pop==29 || pop==28 || pop==27 || pop==26 || pop==25)
			{
				
				
			}
			else
			{
					pop=pop+7;
					ttdate=pop-2;
					showcolor(pop);
			}
		}
		else if(checktop4==1)
		{
		var pop=position;
		
			if(pop==32 || pop==31 || pop==30 || pop==29 || pop==28 || pop==27 || pop==26)
			{
				
			}
			else
			{
				pop=pop+7;
				ttdate=pop-3;
				showcolor(pop);
			}
		}
		else if(checktop5==1)
		{
		var pop=position;
		
			if(pop==33 || pop==32 || pop==31 || pop==30 || pop==29 || pop==28 || pop==27)
			{
				
			}
			else
			{
				pop=pop+7;
				ttdate=pop-4;
				showcolor(pop);
			}
		}
		else if(checktop6==1)
		{
		var pop=position;
		
			if(pop==34 || pop==33 || pop==32 || pop==31 || pop==30 || pop==29 || pop==28)
			{
				
			}
			else
			{
				pop=pop+7;
				ttdate=pop-5;
				showcolor(pop);
			}
		}
		else if(checktop7==1)
			{
			var pop=position;
			
				if(pop==35 || pop==34 || pop==33 || pop==32 || pop==31 || pop==30 || pop==29)
				{
					
				}
				else
				{
					pop=pop+7;
					ttdate=pop-6;
					showcolor(pop);
				}
			}
			}
		else
			{
			// coding for 28 days of february
			if(checktop1==1)
			{
				var pop=position;
				
				if(pop==22 || pop==23 || pop==24 || pop==25 || pop==26 || pop==27 || pop==28)
				{
					
				}
				else
				{
					pop=pop+7;
					ttdate=pop;
					showcolor(pop);
				}
			}
		else if(checktop2==1)
			{
			var pop=position;
			
				if(pop==29 || pop==28 || pop==27 || pop==26 || pop==25 || pop==24 || pop==23)
				{
					
				}
				else
				{
					pop=pop+7;
					ttdate=pop-1;
					showcolor(pop);
				}
			}
		else if(checktop3==1)
		{
		var pop=position;
		
			if(pop==30 || pop==29 || pop==28 || pop==27 || pop==26 || pop==25 || pop==24)
			{
				
				
			}
			else
			{
					pop=pop+7;
					ttdate=pop-2;
					showcolor(pop);
			}
		}
		else if(checktop4==1)
		{
		var pop=position;
		
			if(pop==31 || pop==30 || pop==29 || pop==28 || pop==27 || pop==26 || pop==25)
			{
				
			}
			else
			{
				pop=pop+7;
				ttdate=pop-3;
				showcolor(pop);
			}
		}
		else if(checktop5==1)
		{
		var pop=position;
		
			if(pop==32 || pop==31 || pop==30 || pop==29 || pop==28 || pop==27 || pop==26)
			{
				
			}
			else
			{
				pop=pop+7;
				ttdate=pop-4;
				showcolor(pop);
			}
		}
		else if(checktop6==1)
		{
		var pop=position;
		
			if(pop==33 || pop==32 || pop==31 || pop==30 || pop==29 || pop==28 || pop==27)
			{
				
			}
			else
			{
				pop=pop+7;
				ttdate=pop-5;
				showcolor(pop);
			}
		}
		else if(checktop7==1)
			{
			var pop=position;
			
				if(pop==34 || pop==33 || pop==32 || pop==31 || pop==30 || pop==29 || pop==28)
				{
					
				}
				else
				{
					pop=pop+7;
					ttdate=pop-6;
					showcolor(pop);
				}
			}
			}
		}
}

function showcolor(daycheck)
{
    position=daycheck;
    document.getElementById("taskdate").value=ttdate+"/"+m+"/"+yy;
    taskview11();
    document.getElementById("d1").style.backgroundColor="white";
	document.getElementById("d2").style.backgroundColor="white";
	document.getElementById("d3").style.backgroundColor="white";
	document.getElementById("d4").style.backgroundColor="white";
	document.getElementById("d5").style.backgroundColor="white";
	document.getElementById("d6").style.backgroundColor="white";
	document.getElementById("d7").style.backgroundColor="white";
	document.getElementById("d8").style.backgroundColor="white";
	document.getElementById("d9").style.backgroundColor="white";
	document.getElementById("d10").style.backgroundColor="white";
	document.getElementById("d11").style.backgroundColor="white";
	document.getElementById("d12").style.backgroundColor="white";
	document.getElementById("d13").style.backgroundColor="white";
	document.getElementById("d14").style.backgroundColor="white";
	document.getElementById("d15").style.backgroundColor="white";
	document.getElementById("d16").style.backgroundColor="white";
	document.getElementById("d17").style.backgroundColor="white";
	document.getElementById("d18").style.backgroundColor="white";
	document.getElementById("d19").style.backgroundColor="white";
	document.getElementById("d20").style.backgroundColor="white";
	document.getElementById("d21").style.backgroundColor="white";
	document.getElementById("d22").style.backgroundColor="white";
	document.getElementById("d23").style.backgroundColor="white";
	document.getElementById("d24").style.backgroundColor="white";
	document.getElementById("d25").style.backgroundColor="white";
	document.getElementById("d26").style.backgroundColor="white";
	document.getElementById("d27").style.backgroundColor="white";
	document.getElementById("d28").style.backgroundColor="white";
	document.getElementById("d29").style.backgroundColor="white";
	document.getElementById("d30").style.backgroundColor="white";
	document.getElementById("d31").style.backgroundColor="white";
	document.getElementById("d32").style.backgroundColor="white";
	document.getElementById("d33").style.backgroundColor="white";
	document.getElementById("d34").style.backgroundColor="white";
	document.getElementById("d35").style.backgroundColor="white";
	document.getElementById("d36").style.backgroundColor="white";
	document.getElementById("d37").style.backgroundColor="white";
    
	if(daycheck==1)
	{
	document.getElementById("d1").style.backgroundColor="LightSkyBlue";
	}
else if(daycheck==2)
	{
	document.getElementById("d2").style.backgroundColor="LightSkyBlue";
	}
else if(daycheck==3)
{
	document.getElementById("d3").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==4)
{
	document.getElementById("d4").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==5)
{
	document.getElementById("d5").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==6)
{
	document.getElementById("d6").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==7)
{
	document.getElementById("d7").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==8)
{
	document.getElementById("d8").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==9)
{
	document.getElementById("d9").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==10)
{
	document.getElementById("d10").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==11)
{
	document.getElementById("d11").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==12)
{
	document.getElementById("d12").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==13)
{
	document.getElementById("d13").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==14)
{
	document.getElementById("d14").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==15)
{
	document.getElementById("d15").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==16)
{
	document.getElementById("d16").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==17)
{
	document.getElementById("d17").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==18)
{
	document.getElementById("d18").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==19)
{
	document.getElementById("d19").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==20)
{
	document.getElementById("d20").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==21)
{
	document.getElementById("d21").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==22)
{
	document.getElementById("d22").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==23)
{
	document.getElementById("d23").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==24)
{
	document.getElementById("d24").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==25)
{
	document.getElementById("d25").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==26)
{
	document.getElementById("d26").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==27)
{
	document.getElementById("d27").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==28)
{
	document.getElementById("d28").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==29)
{
	document.getElementById("d29").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==30)
{
	document.getElementById("d30").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==31)
{
	document.getElementById("d31").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==32)
{
	document.getElementById("d32").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==33)
{
	document.getElementById("d33").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==34)
{
	document.getElementById("d34").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==35)
{
	document.getElementById("d35").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==36)
{
	document.getElementById("d36").style.backgroundColor="LightSkyBlue";
}
else if(daycheck==37)
{
	document.getElementById("d37").style.backgroundColor="LightSkyBlue";
}
	
}


function dosomething()
{
	
	 var servlet = "addtask";                //the name (URI) of your servlet
	  var uname=document.getElementById("taskname").value;
	  var pass=document.getElementById("taskdescription").value;
	  var dating=document.getElementById("taskdate").value;
	  var useremailid=document.getElementById("emailid").innerHTML;
	  var req = servlet + "?taskname=" + uname+"&taskdescription="+pass+"&taskdate="+dating+"&useremailid="+useremailid;           //compiling the request

	  addrequest(req);                          //calls the addrequest function
	  request.onreadystatechange = function(){
	  	//this is used to listen for changes in the request's status
	  	
	  	  	if(request.readyState==4 && request.status==200){
	  	  	document.getElementById("taskview").style.display="block";
			document.getElementById("newtaskcreation").style.display="none";
			document.getElementById("statistics").style.display="none";
	  	 taskview11();
	  
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

function showdata()
{
	
	var servlet = "showtask";                //the name (URI) of your servlet
	  
	  var dating=document.getElementById("taskdate").value;
	  var useremailid=document.getElementById("emailid").innerHTML;
	  var req = servlet + "?taskdate="+dating+"&useremailid="+useremailid;           //compiling the request

	  addrequest(req);                          //calls the addrequest function
	  request.onreadystatechange = function(){
	  	//this is used to listen for changes in the request's status
	  	
	  	  	if(request.readyState==4 && request.status==200){
	  	  		var dodo;
	  	  		dodo=request.responseText;
	  	  		
	  	  	document.getElementById("taskview").innerHTML=dodo;
	  	  	showstat();
	  	  	}
	}
}
function showstat()
{

	var servlet = "showstat";                //the name (URI) of your servlet
	  
	  var dating=document.getElementById("taskdate").value;
	  var useremailid=document.getElementById("emailid").innerHTML;
	  var req = servlet + "?taskdate="+dating+"&useremailid="+useremailid;           //compiling the request

	  addrequest(req);                          //calls the addrequest function
	  request.onreadystatechange = function(){
	  	//this is used to listen for changes in the request's status
	  	
	  	  	if(request.readyState==4 && request.status==200){
	  	  		var dodo;
	  	  		dodo=request.responseText;
	  	  	var arr=['#66FFFF','#66CCFF','#6699FF','#6666FF','#3399FF','#33CC99','#660066','#336633','#333300','#006666','#CC6666','#CCFF66','#CC6600','#CC33FF','#CCCCCC','#FFCCCC','#FFFF00','#CC0000','#3333FF','#330000'];
	  	  	var obj = JSON.parse(dodo);
	  	  	var len=obj.task.length;
	  	  	var totaltask=parseInt(obj.total);
	  	  var tu=(totaltask)*24+53;
	  	  var st="";
	  	  for(i=0;i<=totaltask;i++)
			{
			st+=i+"&nbsp;";
			}
	  	  var str1="<br>Report of One Tasks Completed<br><table>";
	  
	  	  	for(jj=0;jj<len;jj++)
	  	  		{
	  	  		var name=obj.task[jj].name;
	  	  		var taskdone=obj.task[jj].taskdone;
	  	  		divheight=parseInt(taskdone);
	  	  		divheight=divheight*20;
	  	  		var ty=name+"&nbsp;-&nbsp;"+taskdone;
	  	  		str1+="<tr><td style='horizontal-align:left;margin-left:0px;'><a href='#' data-toggle='tooltip' data-placement='top' title='"+ty+"'><div id='box"+jj+"' style='background:"+arr[jj]+";height:30px;width:"+divheight+"px;margin:3px;'></div></a></td></tr>";
	  	  		
	  	  		}
	  	//var self1=obj.self;
	  	// var total1=obj.total;
	  //	 alert(self1+""+total1);
	  //	 var ttt=parseInt(total1);
	  //	var ss=parseInt(self1)*12*2;
		//var ss1=parseInt(total1)*12*2;
	//	ss+=12+3;
	//	ss1+=12+3;
		//dis=total1;
		
		//var kk=ss1+50;
		
		
	  	// var str="<br><table>";
	  	 
	  //	str+="<tr><td>Others&nbsp;</td><td><div id='box1' style='background:#98bf21;height:50px;width:"+ss1+"px;margin:6px;'></div></td></tr>"+
	  //	"<tr><td>Me&nbsp;</td><td><div id='box2' style='background:blue;height:50px;width:"+ss+"px;margin:6px;'></div></td></tr>"+
	  //	"<tr><td></td><td>0&nbsp;1&nbsp;2&nbsp;3&nbsp;4&nbsp;5&nbsp;6&nbsp;7&nbsp;8&nbsp9&nbsp;10&nbsp;11&nbsp;12&nbsp;13&nbsp;14&nbsp;15&nbsp;16&nbsp;"+
	  //	"17&nbsp;18&nbsp;19&nbsp;20&nbsp;21&nbsp;22&nbsp;23&nbsp;24&nbsp;25&nbsp;26&nbsp;27&nbsp;28&nbsp;29&nbsp;30&nbsp;31&nbsp;32&nbsp;33&nbsp;34&nbsp;35&nbsp;36&nbsp;37&nbsp;38&nbsp;"+
	  //	"39&nbsp;40&nbsp;41&nbsp;42&nbsp;43&nbsp;44&nbsp;45&nbsp;46&nbsp;47&nbsp;48&nbsp;49&nbsp;50&nbsp;51&nbsp;52&nbsp;53&nbsp;54&nbsp;55&nbsp;56&nbsp;57&nbsp;58&nbsp;</td></tr></table>";
	  		//alert(st);
	  	  	str1+="</table>"+"<span style='font-size:23px;'>"+st+"</span>";
	  	  //	"<center><table><tr><td><div style='background:#98bf21;height:10px;width:10px;margin:6px;'></div></td><td>&nbsp;<span style='font-size:11px;'>Me</span></td></tr>"+
	  	  //	"<tr><td><div style='background:blue;height:10px;width:10px;margin:6px;'></div></td><td>&nbsp;<span style='font-size:11px;'>Others</span></td></tr></table></center>";
	  	  document.getElementById("statistics").innerHTML=str1;
	  	  	}
	}

}



function shownewtask()
{
	document.getElementById("taskview").style.display="none";
	document.getElementById("newtaskcreation").style.display="block";
	document.getElementById("statistics").style.display="none";
	document.getElementById("mytaskdisplay").style.display="none";
	
	
}
function taskview()
{
	
	document.getElementById("taskview").style.display="block";
	document.getElementById("newtaskcreation").style.display="none";
	document.getElementById("statistics").style.display="none";
	document.getElementById("mytaskdisplay").style.display="none";
	
	
}


function showupdatedesc(nam)
{
	if(checkji==false)
		{
			document.getElementById(nam.name).style.display="block";	
			checkji=true;
		}
	else
		{
			document.getElementById(nam.name).style.display="none";	
			checkji=false;
		}
	
	
}

function showupdatedate(nam)
{
	if(checkji1==false)
		{
			document.getElementById(nam.name).style.display="block";	
			checkji1=true;
		}
	else
		{
			document.getElementById(nam.name).style.display="none";	
			checkji1=false;
		}
	
	
}

function updatetaskdescription(nam)
{
	var textname=nam.name;
	var gt=nam.name+"1111";
	var textdescription=document.getElementById(gt).value;
	//alert(textdescription);
	var textdate=nam.id;
	var userid=document.getElementById("emailid").innerHTML;
	var servlet = "updatedescription";                //the name (URI) of your servlet
	  
	  var req = servlet + "?taskname="+textname+"&useremailid="+userid+"&taskdate="+textdate+"&taskdescription="+textdescription;           //compiling the request

	  addrequest(req);                          //calls the addrequest function
	  request.onreadystatechange = function(){
	  	//this is used to listen for changes in the request's status
	  	
	  	  	if(request.readyState==4 && request.status==200){
	  	  		var dodo;
	  	  		dodo=request.responseText;
	  	  		//taskview11();
	  	  	}
	  }
}

function updatecompleteddate(nam)
{
	var textname=nam.name;
	var textcompleteddate=document.getElementById(nam.name+"1").value;
	var textdate=nam.id;
	var userid=document.getElementById("emailid").innerHTML;
	var servlet = "updatedate";                //the name (URI) of your servlet
	  
	  var req = servlet + "?taskcompleteddate="+textcompleteddate+"&useremailid="+userid+"&taskdate="+textdate+"&taskname="+textname;           //compiling the request

	  addrequest(req);                          //calls the addrequest function
	  request.onreadystatechange = function(){
	  	//this is used to listen for changes in the request's status
	  	
	  	  	if(request.readyState==4 && request.status==200){
	  	  		var dodo;
	  	  		dodo=request.responseText;
	  	  		taskview11();
	  	  	}
	  }
}

function deletion(nam)
{
	var textname=nam.id;
	
	var textdate=nam.name;
	var userid=document.getElementById("emailid").innerHTML;
	var servlet = "deletetask";                //the name (URI) of your servlet
	  
	  var req = servlet + "?useremailid="+userid+"&taskdate="+textdate+"&taskname="+textname;           //compiling the request

	  addrequest(req);                          //calls the addrequest function
	  request.onreadystatechange = function(){
	  	//this is used to listen for changes in the request's status
	  	
	  	  	if(request.readyState==4 && request.status==200){
	  	  		var dodo;
	  	  		dodo=request.responseText;
	  	  		taskview11();
	  	  	}
	  }
}



function call11()
{
	
	 var servlet = "exchange";                //the name (URI) of your servlet
	var oauthverifier="<%=request.getParameter("oauth_verifier") %>";
	  var req = servlet+"?oauthverifier="+oauthverifier;           //compiling the request

	  addrequest(req);                          //calls the addrequest function
	  request.onreadystatechange = function(){
	  	//this is used to listen for changes in the request's status
	  	
	  	  	if(request.readyState==4 && request.status==200){
	  	  	
	  	  		
	  	  		var dodo=request.responseText;
	  	  		var obj=JSON.parse(dodo);
	  	  		console.log(obj);
	  	  		var len=obj.length;
	  	  		
	  	  		for(var i=0;i<len;i++)
	  	  			{
	  	  			
	  	  			tasknamearray[i]=obj[i].name;
	  	  			taskduedatearray[i]=obj[i].due;
	  	  			console.log(tasknamearray[i]);
	  	  		console.log(taskduedatearray[i]);
	  	  			}
	  	  		showcalender1();
	  			taskview11();
	  	  	}
	}
}

function taskview11()
{
	document.getElementById("taskview").style.display="block";
	document.getElementById("newtaskcreation").style.display="none";
	document.getElementById("statistics").style.display="none";
	document.getElementById("mytaskdisplay").style.display="none";
var dday=parseInt(ttdate);
var mmonth=parseInt(m);
var yyear=parseInt(yy);
var ll=taskduedatearray.length;
var taskduedatesplitarray=new Array();
var taskduedateyearintarray=new Array();
var taskduedatemonthintarray=new Array();
var taskduedatedayintarray=new Array();

for(var j=0;j<ll;j++)
	{
	
	if(taskduedatearray[j]=="")
		{
		
		}
	else
		{
		var yearstorage="";
		var monthstorage="";
		var daystorage="";
		var tttt=String(taskduedatearray[j]);
		taskduedatesplitarray=tttt.split('');
		
		for(var pp=0;pp<10;pp++)
			{
			 if(pp<4)
				 {
				 yearstorage+=taskduedatesplitarray[pp];
				 }
			 else if(pp==5 || pp==6)
				 {
				 monthstorage+=taskduedatesplitarray[pp];
				 }
			 else if(pp==8 || pp==9)
				 {
				 daystorage+=taskduedatesplitarray[pp];
				 }
			
			}
	//	console.log(yearstorage+""+monthstorage+""+daystorage);
		taskduedateyearintarray[j]=parseInt(yearstorage);
		taskduedatemonthintarray[j]=parseInt(monthstorage);
		taskduedatedayintarray[j]=parseInt(daystorage);
		}
		
		
	}
	var sttr=" <center><table class='table'>";
	for(var h=0;h<taskduedateyearintarray.length;h++)
		{
		if(taskduedateyearintarray[h]==yyear)
			{
			console.log(taskduedateyearintarray[h]);
			
			if(taskduedatemonthintarray[h]>mmonth)
				{
				console.log(taskduedatemonthintarray[h]);
				if(m==1 || m==3 || m== 5 || m==7 || m==8 || m==10 || m==12)
					{
						if((31-dday+taskduedatedayintarray[h])==1)
						{
						//alert(dday);
						console.log(taskduedatedayintarray[h]);
						sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
						}
					}
				else if(m==4 || m==6 || m==9 || m==11)
					{
					if((30-dday+taskduedatedayintarray[h])==1)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
					}
				else if(m==2)
					{
					
					if(yyear%4==0)
						{
						if((29-dday+taskduedatedayintarray[h])==1)
						{
						//alert(dday);
						console.log(taskduedatedayintarray[h]);
						sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
						}
						}
					else
						{
						if((28-dday+taskduedatedayintarray[h])==1)
						{
						//alert(dday);
						console.log(taskduedatedayintarray[h]);
						sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
						}
						}
					}
				}
			else if(taskduedatemonthintarray[h]==mmonth)
				{
				if((taskduedatedayintarray[h]-dday)==1)
				{
				//alert(dday);
				console.log(taskduedatedayintarray[h]);
				sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
				}
				}
			
			}
		else if(taskduedateyearintarray[h]>yyear)
			{
			if((31-dday+taskduedatedayintarray[h])==1)
			{
			//alert(dday);
			console.log(taskduedatedayintarray[h]);
			sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
			}
			}
		
		}
	document.getElementById("showduedate").innerHTML=sttr+"</table></center>";
}

function change(cc)
{
	
var val=cc.value;	
if(val=="one")
	{
	document.getElementById("taskview").style.display="block";
	document.getElementById("newtaskcreation").style.display="none";
	document.getElementById("statistics").style.display="none";
	document.getElementById("mytaskdisplay").style.display="none";
var dday=parseInt(ttdate);
var mmonth=parseInt(m);
var yyear=parseInt(yy);
var ll=taskduedatearray.length;
var taskduedatesplitarray=new Array();
var taskduedateyearintarray=new Array();
var taskduedatemonthintarray=new Array();
var taskduedatedayintarray=new Array();

for(var j=0;j<ll;j++)
	{
	
	if(taskduedatearray[j]=="")
		{
		
		}
	else
		{
		var yearstorage="";
		var monthstorage="";
		var daystorage="";
		var tttt=String(taskduedatearray[j]);
		taskduedatesplitarray=tttt.split('');
		
		for(var pp=0;pp<10;pp++)
			{
			 if(pp<4)
				 {
				 yearstorage+=taskduedatesplitarray[pp];
				 }
			 else if(pp==5 || pp==6)
				 {
				 monthstorage+=taskduedatesplitarray[pp];
				 }
			 else if(pp==8 || pp==9)
				 {
				 daystorage+=taskduedatesplitarray[pp];
				 }
			
			}
	//	console.log(yearstorage+""+monthstorage+""+daystorage);
		taskduedateyearintarray[j]=parseInt(yearstorage);
		taskduedatemonthintarray[j]=parseInt(monthstorage);
		taskduedatedayintarray[j]=parseInt(daystorage);
		}
		
		
	}
var sttr=" <center><table class='table'>";
for(var h=0;h<taskduedateyearintarray.length;h++)
	{
	if(taskduedateyearintarray[h]==yyear)
		{
		console.log(taskduedateyearintarray[h]);
		
		if(taskduedatemonthintarray[h]>mmonth)
			{
			console.log(taskduedatemonthintarray[h]);
			if(m==1 || m==3 || m== 5 || m==7 || m==8 || m==10 || m==12)
				{
					if((31-dday+taskduedatedayintarray[h])==1)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
				}
			else if(m==4 || m==6 || m==9 || m==11)
				{
				if((30-dday+taskduedatedayintarray[h])==1)
				{
				//alert(dday);
				console.log(taskduedatedayintarray[h]);
				sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
				}
				}
			else if(m==2)
				{
				
				if(yyear%4==0)
					{
					if((29-dday+taskduedatedayintarray[h])==1)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
					}
				else
					{
					if((28-dday+taskduedatedayintarray[h])==1)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
					}
				}
			}
		else if(taskduedatemonthintarray[h]==mmonth)
			{
			if((taskduedatedayintarray[h]-dday)==1)
			{
			//alert(dday);
			console.log(taskduedatedayintarray[h]);
			sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
			}
			}
		
		}
	else if(taskduedateyearintarray[h]>yyear)
		{
		if((31-dday+taskduedatedayintarray[h])==1)
		{
		//alert(dday);
		console.log(taskduedatedayintarray[h]);
		sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
		}
		}
	
	}
document.getElementById("showduedate").innerHTML=sttr+"</table></center>";
	}
else if(val=="two")
	{
	document.getElementById("taskview").style.display="block";
	document.getElementById("newtaskcreation").style.display="none";
	document.getElementById("statistics").style.display="none";
	document.getElementById("mytaskdisplay").style.display="none";
var dday=parseInt(ttdate);
var mmonth=parseInt(m);
var yyear=parseInt(yy);
var ll=taskduedatearray.length;
var taskduedatesplitarray=new Array();
var taskduedateyearintarray=new Array();
var taskduedatemonthintarray=new Array();
var taskduedatedayintarray=new Array();

for(var j=0;j<ll;j++)
	{
	
	if(taskduedatearray[j]=="")
		{
		
		}
	else
		{
		var yearstorage="";
		var monthstorage="";
		var daystorage="";
		var tttt=String(taskduedatearray[j]);
		taskduedatesplitarray=tttt.split('');
		
		for(var pp=0;pp<10;pp++)
			{
			 if(pp<4)
				 {
				 yearstorage+=taskduedatesplitarray[pp];
				 }
			 else if(pp==5 || pp==6)
				 {
				 monthstorage+=taskduedatesplitarray[pp];
				 }
			 else if(pp==8 || pp==9)
				 {
				 daystorage+=taskduedatesplitarray[pp];
				 }
			
			}
	//	console.log(yearstorage+""+monthstorage+""+daystorage);
		taskduedateyearintarray[j]=parseInt(yearstorage);
		taskduedatemonthintarray[j]=parseInt(monthstorage);
		taskduedatedayintarray[j]=parseInt(daystorage);
		}
		
		
	}
var sttr=" <center><table class='table'>";
for(var h=0;h<taskduedateyearintarray.length;h++)
	{
	if(taskduedateyearintarray[h]==yyear)
		{
		console.log(taskduedateyearintarray[h]);
		
		if(taskduedatemonthintarray[h]>mmonth)
			{
			console.log(taskduedatemonthintarray[h]);
			if(m==1 || m==3 || m== 5 || m==7 || m==8 || m==10 || m==12)
				{
					if((31-dday+taskduedatedayintarray[h])==2)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
				}
			else if(m==4 || m==6 || m==9 || m==11)
				{
				if((30-dday+taskduedatedayintarray[h])==2)
				{
				//alert(dday);
				console.log(taskduedatedayintarray[h]);
				sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
				}
				}
			else if(m==2)
				{
				
				if(yyear%4==0)
					{
					if((29-dday+taskduedatedayintarray[h])==2)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
					}
				else
					{
					if((28-dday+taskduedatedayintarray[h])==2)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
					}
				}
			}
		else if(taskduedatemonthintarray[h]==mmonth)
			{
			if((taskduedatedayintarray[h]-dday)==2)
			{
			//alert(dday);
			console.log(taskduedatedayintarray[h]);
			sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
			}
			}
		
		}
	else if(taskduedateyearintarray[h]>yyear)
		{
		if((31-dday+taskduedatedayintarray[h])==2)
		{
		//alert(dday);
		console.log(taskduedatedayintarray[h]);
		sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
		}
		}
	
	}
document.getElementById("showduedate").innerHTML=sttr+"</table></center>";
	}
else if(val=="three")
	{
	document.getElementById("taskview").style.display="block";
	document.getElementById("newtaskcreation").style.display="none";
	document.getElementById("statistics").style.display="none";
	document.getElementById("mytaskdisplay").style.display="none";
var dday=parseInt(ttdate);
var mmonth=parseInt(m);
var yyear=parseInt(yy);
var ll=taskduedatearray.length;
var taskduedatesplitarray=new Array();
var taskduedateyearintarray=new Array();
var taskduedatemonthintarray=new Array();
var taskduedatedayintarray=new Array();

for(var j=0;j<ll;j++)
	{
	
	if(taskduedatearray[j]=="")
		{
		
		}
	else
		{
		var yearstorage="";
		var monthstorage="";
		var daystorage="";
		var tttt=String(taskduedatearray[j]);
		taskduedatesplitarray=tttt.split('');
		
		for(var pp=0;pp<10;pp++)
			{
			 if(pp<4)
				 {
				 yearstorage+=taskduedatesplitarray[pp];
				 }
			 else if(pp==5 || pp==6)
				 {
				 monthstorage+=taskduedatesplitarray[pp];
				 }
			 else if(pp==8 || pp==9)
				 {
				 daystorage+=taskduedatesplitarray[pp];
				 }
			
			}
	//	console.log(yearstorage+""+monthstorage+""+daystorage);
		taskduedateyearintarray[j]=parseInt(yearstorage);
		taskduedatemonthintarray[j]=parseInt(monthstorage);
		taskduedatedayintarray[j]=parseInt(daystorage);
		}
		
		
	}
var sttr=" <center><table class='table'>";
for(var h=0;h<taskduedateyearintarray.length;h++)
	{
	if(taskduedateyearintarray[h]==yyear)
		{
		console.log(taskduedateyearintarray[h]);
		
		if(taskduedatemonthintarray[h]>mmonth)
			{
			console.log(taskduedatemonthintarray[h]);
			if(m==1 || m==3 || m== 5 || m==7 || m==8 || m==10 || m==12)
				{
					if((31-dday+taskduedatedayintarray[h])==3)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
				}
			else if(m==4 || m==6 || m==9 || m==11)
				{
				if((30-dday+taskduedatedayintarray[h])==3)
				{
				//alert(dday);
				console.log(taskduedatedayintarray[h]);
				sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
				}
				}
			else if(m==2)
				{
				
				if(yyear%4==0)
					{
					if((29-dday+taskduedatedayintarray[h])==3)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
					}
				else
					{
					if((28-dday+taskduedatedayintarray[h])==3)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
					}
				}
			}
		else if(taskduedatemonthintarray[h]==mmonth)
			{
			if((taskduedatedayintarray[h]-dday)==3)
			{
			//alert(dday);
			console.log(taskduedatedayintarray[h]);
			sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
			}
			}
		
		}
	else if(taskduedateyearintarray[h]>yyear)
		{
		if((31-dday+taskduedatedayintarray[h])==3)
		{
		//alert(dday);
		console.log(taskduedatedayintarray[h]);
		sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
		}
		}
	
	}
document.getElementById("showduedate").innerHTML=sttr+"</table></center>";
	}
else if(val=="four")
	{
	document.getElementById("taskview").style.display="block";
	document.getElementById("newtaskcreation").style.display="none";
	document.getElementById("statistics").style.display="none";
	document.getElementById("mytaskdisplay").style.display="none";
var dday=parseInt(ttdate);
var mmonth=parseInt(m);
var yyear=parseInt(yy);
var ll=taskduedatearray.length;
var taskduedatesplitarray=new Array();
var taskduedateyearintarray=new Array();
var taskduedatemonthintarray=new Array();
var taskduedatedayintarray=new Array();

for(var j=0;j<ll;j++)
	{
	
	if(taskduedatearray[j]=="")
		{
		
		}
	else
		{
		var yearstorage="";
		var monthstorage="";
		var daystorage="";
		var tttt=String(taskduedatearray[j]);
		taskduedatesplitarray=tttt.split('');
		
		for(var pp=0;pp<10;pp++)
			{
			 if(pp<4)
				 {
				 yearstorage+=taskduedatesplitarray[pp];
				 }
			 else if(pp==5 || pp==6)
				 {
				 monthstorage+=taskduedatesplitarray[pp];
				 }
			 else if(pp==8 || pp==9)
				 {
				 daystorage+=taskduedatesplitarray[pp];
				 }
			
			}
	//	console.log(yearstorage+""+monthstorage+""+daystorage);
		taskduedateyearintarray[j]=parseInt(yearstorage);
		taskduedatemonthintarray[j]=parseInt(monthstorage);
		taskduedatedayintarray[j]=parseInt(daystorage);
		}
		
		
	}
var sttr=" <center><table class='table'>";
for(var h=0;h<taskduedateyearintarray.length;h++)
	{
	if(taskduedateyearintarray[h]==yyear)
		{
		console.log(taskduedateyearintarray[h]);
		
		if(taskduedatemonthintarray[h]>mmonth)
			{
			console.log(taskduedatemonthintarray[h]);
			if(m==1 || m==3 || m== 5 || m==7 || m==8 || m==10 || m==12)
				{
					if((31-dday+taskduedatedayintarray[h])==4)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
				}
			else if(m==4 || m==6 || m==9 || m==11)
				{
				if((30-dday+taskduedatedayintarray[h])==4)
				{
				//alert(dday);
				console.log(taskduedatedayintarray[h]);
				sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
				}
				}
			else if(m==2)
				{
				
				if(yyear%4==0)
					{
					if((29-dday+taskduedatedayintarray[h])==4)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
					}
				else
					{
					if((28-dday+taskduedatedayintarray[h])==4)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
					}
				}
			}
		else if(taskduedatemonthintarray[h]==mmonth)
			{
			if((taskduedatedayintarray[h]-dday)==4)
			{
			//alert(dday);
			console.log(taskduedatedayintarray[h]);
			sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
			}
			}
		
		}
	else if(taskduedateyearintarray[h]>yyear)
		{
		if((31-dday+taskduedatedayintarray[h])==4)
		{
		//alert(dday);
		console.log(taskduedatedayintarray[h]);
		sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
		}
		}
	
	}
document.getElementById("showduedate").innerHTML=sttr+"</table></center>";
	}
else if(val=="five")
	{
	document.getElementById("taskview").style.display="block";
	document.getElementById("newtaskcreation").style.display="none";
	document.getElementById("statistics").style.display="none";
	document.getElementById("mytaskdisplay").style.display="none";
var dday=parseInt(ttdate);
var mmonth=parseInt(m);
var yyear=parseInt(yy);
var ll=taskduedatearray.length;
var taskduedatesplitarray=new Array();
var taskduedateyearintarray=new Array();
var taskduedatemonthintarray=new Array();
var taskduedatedayintarray=new Array();

for(var j=0;j<ll;j++)
	{
	
	if(taskduedatearray[j]=="")
		{
		
		}
	else
		{
		var yearstorage="";
		var monthstorage="";
		var daystorage="";
		var tttt=String(taskduedatearray[j]);
		taskduedatesplitarray=tttt.split('');
		
		for(var pp=0;pp<10;pp++)
			{
			 if(pp<4)
				 {
				 yearstorage+=taskduedatesplitarray[pp];
				 }
			 else if(pp==5 || pp==6)
				 {
				 monthstorage+=taskduedatesplitarray[pp];
				 }
			 else if(pp==8 || pp==9)
				 {
				 daystorage+=taskduedatesplitarray[pp];
				 }
			
			}
	//	console.log(yearstorage+""+monthstorage+""+daystorage);
		taskduedateyearintarray[j]=parseInt(yearstorage);
		taskduedatemonthintarray[j]=parseInt(monthstorage);
		taskduedatedayintarray[j]=parseInt(daystorage);
		}
		
		
	}
var sttr=" <center><table class='table'>";
for(var h=0;h<taskduedateyearintarray.length;h++)
	{
	if(taskduedateyearintarray[h]==yyear)
		{
		console.log(taskduedateyearintarray[h]);
		
		if(taskduedatemonthintarray[h]>mmonth)
			{
			console.log(taskduedatemonthintarray[h]);
			if(m==1 || m==3 || m== 5 || m==7 || m==8 || m==10 || m==12)
				{
					if((31-dday+taskduedatedayintarray[h])==5)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
				}
			else if(m==4 || m==6 || m==9 || m==11)
				{
				if((30-dday+taskduedatedayintarray[h])==5)
				{
				//alert(dday);
				console.log(taskduedatedayintarray[h]);
				sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
				}
				}
			else if(m==2)
				{
				
				if(yyear%4==0)
					{
					if((29-dday+taskduedatedayintarray[h])==5)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
					}
				else
					{
					if((28-dday+taskduedatedayintarray[h])==5)
					{
					//alert(dday);
					console.log(taskduedatedayintarray[h]);
					sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
					}
					}
				}
			}
		else if(taskduedatemonthintarray[h]==mmonth)
			{
			if((taskduedatedayintarray[h]-dday)==5)
			{
			//alert(dday);
			console.log(taskduedatedayintarray[h]);
			sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
			}
			}
		
		}
	else if(taskduedateyearintarray[h]>yyear)
		{
		if((31-dday+taskduedatedayintarray[h])==5)
		{
		//alert(dday);
		console.log(taskduedatedayintarray[h]);
		sttr+="<tr><td>"+tasknamearray[h]+"</td><td>"+taskduedatedayintarray[h]+"/"+taskduedatemonthintarray[h]+"/"+taskduedateyearintarray[h]+"</td></tr>";
		}
		}
	
	}
document.getElementById("showduedate").innerHTML=sttr+"</table></center>";
	}
}



function mytaskview()
{
	document.getElementById("taskview").style.display="none";
	document.getElementById("newtaskcreation").style.display="none";
	document.getElementById("statistics").style.display="none";
	document.getElementById("mytaskdisplay").style.display="block";
	 var servlet = "mytask";                //the name (URI) of your servlet
		
		  var req = servlet;           //compiling the request

		  addrequest(req);                          //calls the addrequest function
		  request.onreadystatechange = function(){
		  	//this is used to listen for changes in the request's status
		  	
		  	  	if(request.readyState==4 && request.status==200){
		  	  	
		  	  		
		  	  		var dodo=request.responseText;
		  	  		var obj=JSON.parse(dodo);
		  	  		console.log(obj);
		  	  		var len=obj.length;
		  	  		var sstr="<br><center><table class='table'>"
		  	  		var taskduedatesplitarray1=new Array();
		  	  		var yearstorage1="";
		  	  		var monthstorage1="";
		  	  		var daystorage1="";
		  	  		for(var i=0;i<len;i++)
		  	  			{
		  	  			var ssss="";
		  	  			if(obj[i].due==null)
		  	  				{
		  	  				ssss="No Due";
		  	  				}
		  	  			else
		  	  				{
		  	  				ssss=obj[i].due;
		  	  			
		  	  			taskduedatesplitarray1=ssss.split('');
		  	  		
		  	  		for(var pp=0;pp<10;pp++)
		  	  			{
		  	  			 if(pp<4)
		  	  				 {
		  	  				 yearstorage1+=taskduedatesplitarray1[pp];
		  	  				 }
		  	  			 else if(pp==5 || pp==6)
		  	  				 {
		  	  				 monthstorage1+=taskduedatesplitarray1[pp];
		  	  				 }
		  	  			 else if(pp==8 || pp==9)
		  	  				 {
		  	  				 daystorage1+=taskduedatesplitarray1[pp];
		  	  				 }
		  	  			
		  	  			}
		  	  		
		  	  				ssss=daystorage1+"/"+monthstorage1+"/"+yearstorage1;
		  	  				daystorage1="";
		  	  				monthstorage1="";
		  	  				yearstorage1="";
		  	  				taskduedatesplitarray1.length=0;
		  	  				}
		  	  			sstr+="<tr><td>"+obj[i].name+"</td><td><span id='duedateupdatedid'>"+ssss+"<span>&nbsp;<a href='#'id='"+i+"' onclick='toggledueupdate(this)'><span class='glyphicon glyphicon-edit'></span></a>&nbsp;<span id='duedateid"+i+"' style='display:none'><input type='text' id='duedatetextid"+i+"'><a href='#' id='"+obj[i].id+"' name='"+i+"' onclick='Updateduedate(this)'>Update</a></span></td></tr>";
		  	  			}
		  	  		document.getElementById("mytaskdisplay").innerHTML=sstr+"</table></center>";
		  	  
		  	  		globlecheck=false;
		  	  		
		  
		  	  	}
		}
}


function toggledueupdate(ss)
{
	if(globlecheck==false)
		{
		document.getElementById("duedateid"+ss.id).style.display="block";
		globlecheck=true;
		globletextid="duedatetextid"+ss.id;
		}
	else
		{
		document.getElementById("duedateid"+ss.id).style.display="none";
		globlecheck=false;
		
		}
	
}


function Updateduedate(updatedate)
{
	var cardid=updatedate.id;
	var datetext=document.getElementById("duedatetextid"+updatedate.name).value;
	alert(cardid+" "+datetext);
	 var servlet = "updateduedate";                //the name (URI) of your servlet
		
	  var req = servlet+"?cardid="+cardid+"&datetext="+datetext;           //compiling the request

	  addrequest(req);                          //calls the addrequest function
	  request.onreadystatechange = function(){
	  	//this is used to listen for changes in the request's status
	  	
	  	  	if(request.readyState==4 && request.status==200){
	  	  	
	  	  		
	  	  		var dodo=request.responseText;
	  	  		var obj=JSON.parse(dodo);
	  	  		//console.log(dodo);
	  	  		var dued=String(obj.due);
	  	  		var taskduedatesplitarray2=new Array();
  	  			var yearstorage2;
  	  			var monthstorage2;
  	  			var daystorage2;
  	  		
  	  				
  	  			taskduedatesplitarray2=dued.split('');
  	  		
  	  		for(var pp=0;pp<10;pp++)
  	  			{
  	  			 if(pp<4)
  	  				 {
  	  				 yearstorage2+=taskduedatesplitarray2[pp];
  	  				 }
  	  			 else if(pp==5 || pp==6)
  	  				 {
  	  				 monthstorage2+=taskduedatesplitarray2[pp];
  	  				 }
  	  			 else if(pp==8 || pp==9)
  	  				 {
  	  				 daystorage2+=taskduedatesplitarray2[pp];
  	  				 }
  	  			
  	  			}
  	  				dued=daystorage2+"/"+monthstorage2+"/"+yearstorage1; 
  	  				document.getElementById("duedateupdatedid").innerHTML=dued;
	  
	  	  	
	}
}
}
</script>


</head>
<body onload="call11()">
<div style="width:100%;height:80px;background-color:blue;">
<center><span style="color:white;font-size:20px;">My&nbsp;Task&nbsp;Dairy</span></center>
<br>
<span id="emailid" style="color:white;margin-left:25px;"><%=request.getParameter("loginname") %></span><div style="float:right;margin-right:25px;"><a href="http://6-dot-dairyoftask.appspot.com/" style="color:white;">LogOut</a></div>
</div>
<div style="width:500px;float:left;margin-left:5px;">
<br>
<center>
<a href="#" onclick="minus()"><span class="glyphicon glyphicon-chevron-left"></span></a>&nbsp;&nbsp;<span id="monthpanel"></span>&nbsp;-&nbsp;<span id="yearpanel"></span>&nbsp;&nbsp;<a href="#" onclick="plus()"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
<br>
&nbsp;&nbsp;&nbsp;
<table border="1">
<tr><td style="width:72px;height:58px;color:red;"><center>Sunday</center></td><td style="width:72px;height:58px;"><center>Monday</center></td><td style="width:72px;height:58px;"><center>Tuesday</center></td><td style="width:72px;height:58px;"><center>Wednesday</center></td><td style="width:72px;height:58px;"><center>Thursday</center></td><td style="width:72px;height:58px;"><center>Friday</center></td><td style="width:72px;height:58px;"><center>Saturday</center></td></tr>
<tr><td><center><div  style="width:72px;height:58px;color:red;" id="d1"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d2"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d3"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d4"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d5"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d6"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d7"></div></center></td></tr>
<tr><td><center><div  style="width:72px;height:58px;color:red;" id="d8"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d9"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d10"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d11"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d12"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d13"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d14"></div></center></td></tr>
<tr><td><center><div  style="width:72px;height:58px;color:red;" id="d15"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d16"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d17"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d18"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d19"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d20"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d21"></div></center></td></tr>
<tr><td><center><div  style="width:72px;height:58px;color:red;" id="d22"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d23"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d24"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d25"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d26"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d27"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d28"></div></center></td></tr>
<tr><td><center><div  style="width:72px;height:58px;color:red;" id="d29"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d30"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d31"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d32"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d33"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d34"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d35"></div></center></td></tr>
<tr><td><center><div  style="width:72px;height:58px;color:red;" id="d36"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d37"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d38"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d39"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d40"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d41"></div></center></td><td><center><div  style="width:72px;height:58px;" id="d42"></div></center></td></tr>
</table>
</center>
</div>
<div style="width:800px;float:left;margin-left:30px;">
<br><br><br>
<ul id="myTab" class="nav nav-tabs">
   <li class="active">
      <a href="#" onclick="taskview11()" data-toggle="tab">
      <span class="glyphicon glyphicon-tasks" aria-hidden="true"></span>&nbsp;Due Tasks
      </a>
   </li>
   <li><a href="#" onclick="mytaskview()" data-toggle="tab"> <span class="glyphicon glyphicon-stats" aria-hidden="true"></span>&nbsp;My Task</a></li>
   <li><a href="#" id="showstatistics" data-toggle="tab"> <span class="glyphicon glyphicon-stats" aria-hidden="true"></span>&nbsp;Statistics</a></li>
    <li><a href="#" onclick="shownewtask()" data-toggle="tab"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;New Task</a></li>
   </ul>
   <div id="taskview" style="height:373px;overflow-y:scroll;overflow-x:scroll;">
 	<br>
 	<center>
 	<select id="selectday" onChange="change(this)">
 	<option value="one">After One Day</option>
 	<option value="two">After Two Day</option>
 	<option value="three">After Three Day</option>
 	<option value="four">After Four Day</option>
 	<option value="five">After Five Day</option>
 	</select>
 	</center>
   <br>
   <div id="showduedate"></div>
   </div>
   <div id="statistics" style="height:373px;font-size:20px;align-items: center;overflow-y:scroll;overflow-x:scroll;">
   
 
   </div>
    <div id="mytaskdisplay" style="height:373px;overflow-y:scroll;overflow-x:scroll;">
   
 
   </div>
   
<div id="newtaskcreation" style="height:373px;overflow-y:scroll;overflow-x:scroll;">
<form class="form-horizontal" role="form">
   <div class="form-group">
           <div class="col-sm-10">
         <input type="text" class="form-control" id="taskname" 
            placeholder="Task Name">
      </div>
   </div>
   <div class="form-group">
          <div class="col-sm-10">
         <input type="text" class="form-control" id="taskdescription" 
            placeholder="Task Description">
      </div>
   </div>
    <div class="form-group">
          <div class="col-sm-10">
         <input type="text" class="form-control" id="taskdate" 
            placeholder="Task Date">
      </div>
   </div>
   <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
         <input type="button" class="btn btn-primary" value="Create Task" onclick="dosomething()">
      </div>
   </div>
</form>

</div>
</div>
<script>
$(document).ready(function(){
	
	$('#monthpanel').click(function(){
		if(clickx==0)
			{
		var str="<input type='text' style='width:40px;' id='month' onclick='monthfocus()' onkeyup='showmonth()'>";
		var ll=document.getElementById("monthpanel").innerHTML;
		document.getElementById("monthpanel").innerHTML=str;
		document.getElementById("month").value=ll;
		 clickx=1;
		 checkforcounterx=1;
			}
	});
		
	
	$('#yearpanel').click(function(){
		if(clicky==0){
		var str="<input type='text' style='width:40px;' id='year' onclick='yearfocus()' onkeyup='showyear()'>";
		var ll=document.getElementById("yearpanel").innerHTML;
		document.getElementById("yearpanel").innerHTML=str;
		document.getElementById("year").value=ll;
		clicky=1;
		checkforcountery=1;
		}
	});
	$('#showstatistics').click(function(){
		document.getElementById("taskview").style.display="none";
		document.getElementById("newtaskcreation").style.display="none";
		document.getElementById("statistics").style.display="block";
		document.getElementById("mytaskdisplay").style.display="none";
		
		// $("#box1").animate({width:"+ss+"});
		// $("#box2").animate({width:"12p});
	});
	 $(function (){ 
		 $("[data-toggle='tooltip']").tooltip(); 
		 
	});
	 
	 $('#d1').click(function(){
		 
		 var divvalue=document.getElementById("d1").innerHTML;
		 if(divvalue=="")
			 {
			 
			 }
		 else
			 {
			 document.getElementById("d1").style.backgroundColor="white";
				document.getElementById("d2").style.backgroundColor="white";
				document.getElementById("d3").style.backgroundColor="white";
				document.getElementById("d4").style.backgroundColor="white";
				document.getElementById("d5").style.backgroundColor="white";
				document.getElementById("d6").style.backgroundColor="white";
				document.getElementById("d7").style.backgroundColor="white";
				document.getElementById("d8").style.backgroundColor="white";
				document.getElementById("d9").style.backgroundColor="white";
				document.getElementById("d10").style.backgroundColor="white";
				document.getElementById("d11").style.backgroundColor="white";
				document.getElementById("d12").style.backgroundColor="white";
				document.getElementById("d13").style.backgroundColor="white";
				document.getElementById("d14").style.backgroundColor="white";
				document.getElementById("d15").style.backgroundColor="white";
				document.getElementById("d16").style.backgroundColor="white";
				document.getElementById("d17").style.backgroundColor="white";
				document.getElementById("d18").style.backgroundColor="white";
				document.getElementById("d19").style.backgroundColor="white";
				document.getElementById("d20").style.backgroundColor="white";
				document.getElementById("d21").style.backgroundColor="white";
				document.getElementById("d22").style.backgroundColor="white";
				document.getElementById("d23").style.backgroundColor="white";
				document.getElementById("d24").style.backgroundColor="white";
				document.getElementById("d25").style.backgroundColor="white";
				document.getElementById("d26").style.backgroundColor="white";
				document.getElementById("d27").style.backgroundColor="white";
				document.getElementById("d28").style.backgroundColor="white";
				document.getElementById("d29").style.backgroundColor="white";
				document.getElementById("d30").style.backgroundColor="white";
				document.getElementById("d31").style.backgroundColor="white";
				document.getElementById("d32").style.backgroundColor="white";
				document.getElementById("d33").style.backgroundColor="white";
				document.getElementById("d34").style.backgroundColor="white";
				document.getElementById("d35").style.backgroundColor="white";
				document.getElementById("d36").style.backgroundColor="white";
				document.getElementById("d37").style.backgroundColor="white";
				document.getElementById("d38").style.backgroundColor="white";
				document.getElementById("d39").style.backgroundColor="white";
				document.getElementById("d40").style.backgroundColor="white";
				document.getElementById("d41").style.backgroundColor="white";
				document.getElementById("d42").style.backgroundColor="white";
			
			 document.getElementById("d1").style.backgroundColor="LightSkyBlue";
			 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
			 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
			 position=1;
			// taskview11();
			 }
	 });
$('#d2').click(function(){
		 
		 var divvalue=document.getElementById("d2").innerHTML;
		 if(divvalue=="")
			 {
			 
			 }
		 else
			 {
			 document.getElementById("d2").style.backgroundColor="white";
				document.getElementById("d3").style.backgroundColor="white";
				document.getElementById("d4").style.backgroundColor="white";
				document.getElementById("d5").style.backgroundColor="white";
				document.getElementById("d6").style.backgroundColor="white";
				document.getElementById("d7").style.backgroundColor="white";
				document.getElementById("d8").style.backgroundColor="white";
				document.getElementById("d9").style.backgroundColor="white";
				document.getElementById("d10").style.backgroundColor="white";
				document.getElementById("d11").style.backgroundColor="white";
				document.getElementById("d12").style.backgroundColor="white";
				document.getElementById("d13").style.backgroundColor="white";
				document.getElementById("d14").style.backgroundColor="white";
				document.getElementById("d15").style.backgroundColor="white";
				document.getElementById("d16").style.backgroundColor="white";
				document.getElementById("d17").style.backgroundColor="white";
				document.getElementById("d18").style.backgroundColor="white";
				document.getElementById("d19").style.backgroundColor="white";
				document.getElementById("d20").style.backgroundColor="white";
				document.getElementById("d21").style.backgroundColor="white";
				document.getElementById("d22").style.backgroundColor="white";
				document.getElementById("d23").style.backgroundColor="white";
				document.getElementById("d24").style.backgroundColor="white";
				document.getElementById("d25").style.backgroundColor="white";
				document.getElementById("d26").style.backgroundColor="white";
				document.getElementById("d27").style.backgroundColor="white";
				document.getElementById("d28").style.backgroundColor="white";
				document.getElementById("d29").style.backgroundColor="white";
				document.getElementById("d30").style.backgroundColor="white";
				document.getElementById("d31").style.backgroundColor="white";
				document.getElementById("d32").style.backgroundColor="white";
				document.getElementById("d33").style.backgroundColor="white";
				document.getElementById("d34").style.backgroundColor="white";
				document.getElementById("d35").style.backgroundColor="white";
				document.getElementById("d36").style.backgroundColor="white";
				document.getElementById("d37").style.backgroundColor="white";
				document.getElementById("d38").style.backgroundColor="white";
				document.getElementById("d39").style.backgroundColor="white";
				document.getElementById("d40").style.backgroundColor="white";
				document.getElementById("d41").style.backgroundColor="white";
				document.getElementById("d42").style.backgroundColor="white";
			 document.getElementById("d2").style.backgroundColor="LightSkyBlue";
			 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
			 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
			 position=2;
			// taskview11();
			 }
	 });
$('#d3').click(function(){
	 
	 var divvalue=document.getElementById("d3").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d3").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=3;
		// taskview11();
		 }
});
$('#d4').click(function(){
	 
	 var divvalue=document.getElementById("d4").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d4").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=4;
		// taskview11();
		 }
});
$('#d5').click(function(){
	 
	 var divvalue=document.getElementById("d5").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d5").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=5;
		// taskview11();
		 }
});
$('#d6').click(function(){
	 
	 var divvalue=document.getElementById("d6").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d6").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=6;
		// taskview11();
		 }
});
$('#d7').click(function(){
	 
	 var divvalue=document.getElementById("d7").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d7").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=7;
		// taskview11();
		 }
});	
$('#d8').click(function(){
	 
	 var divvalue=document.getElementById("d8").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d8").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=8;
		// taskview11();
		 }
});
$('#d9').click(function(){
	 
	 var divvalue=document.getElementById("d9").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d9").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=9;
		// taskview11();
		 }
});
$('#d10').click(function(){
	 
	 var divvalue=document.getElementById("d10").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d10").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=10;
		// taskview11();
		 }
});
$('#d11').click(function(){
	 
	 var divvalue=document.getElementById("d11").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d11").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=11;
		// taskview11();
		 }
});
$('#d12').click(function(){
	 
	 var divvalue=document.getElementById("d12").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d12").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=12;
		// taskview11();
		 }
});
$('#d13').click(function(){
	 
	 var divvalue=document.getElementById("d13").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d13").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=13;
		// taskview11();
		 }
});
$('#d14').click(function(){
	 
	 var divvalue=document.getElementById("d14").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d14").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=14;
		// taskview11();
		 }
});
$('#d15').click(function(){
	 
	 var divvalue=document.getElementById("d15").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d15").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=15;
		// taskview11();
		 }
});
$('#d16').click(function(){
	 
	 var divvalue=document.getElementById("d16").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d16").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=16;
		// taskview11();
		 }
});
$('#d17').click(function(){
	 
	 var divvalue=document.getElementById("d17").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d17").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=17;
		// taskview11();
		 }
});
$('#d18').click(function(){
	 
	 var divvalue=document.getElementById("d18").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d18").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=18;
		// taskview11();
		 }
});
$('#d19').click(function(){
	 
	 var divvalue=document.getElementById("d19").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d19").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=19;
		// taskview11();
		 }
});
$('#d20').click(function(){
	 
	 var divvalue=document.getElementById("d20").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d20").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=20;
		// taskview11();
		 }
});
$('#d21').click(function(){
	 
	 var divvalue=document.getElementById("d21").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d21").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=21;
		// taskview11();
		 }
});
$('#d22').click(function(){
	 
	 var divvalue=document.getElementById("d22").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d22").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=22;
		// taskview11();
		 }
});
$('#d23').click(function(){
	 
	 var divvalue=document.getElementById("d23").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d23").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=23;
		// taskview11();
		 }
});
$('#d24').click(function(){
	 
	 var divvalue=document.getElementById("d24").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d24").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=24;
		// taskview11();
		 }
});
$('#d25').click(function(){
	 
	 var divvalue=document.getElementById("d25").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d25").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=25;
		// taskview11();
		 }
});
$('#d26').click(function(){
	 
	 var divvalue=document.getElementById("d26").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d26").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=26;
		// taskview11();
		 }
});
$('#d27').click(function(){
	 
	 var divvalue=document.getElementById("d27").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d27").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=27;
		// taskview11();
		 }
});
$('#d28').click(function(){
	 
	 var divvalue=document.getElementById("d28").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d28").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=28;
		// taskview11();
		 }
});
$('#d29').click(function(){
	 
	 var divvalue=document.getElementById("d29").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d29").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=29;
		// taskview11();
		 }
});
$('#d30').click(function(){
	 
	 var divvalue=document.getElementById("d30").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d30").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=30;
		// taskview11();
		 }
});
$('#d31').click(function(){
	 
	 var divvalue=document.getElementById("d31").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d31").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=31;
		// taskview11();
		 }
});
$('#d32').click(function(){
	 
	 var divvalue=document.getElementById("d32").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d32").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=32;
		// taskview11();
		 }
});
$('#d33').click(function(){
	 
	 var divvalue=document.getElementById("d33").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d33").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=33;
		// taskview11();
		 }
});
$('#d34').click(function(){
	 
	 var divvalue=document.getElementById("d34").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d34").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=34;
		// taskview11();
		 }
});
$('#d35').click(function(){
	 
	 var divvalue=document.getElementById("d35").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d35").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=35;
		// taskview11();
		 }
});
$('#d36').click(function(){
	 
	 var divvalue=document.getElementById("d36").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d36").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=36;
		// taskview11();
		 }
});
$('#d37').click(function(){
	 
	 var divvalue=document.getElementById("d37").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d37").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=37;
		// taskview11();
		 }
});
$('#d38').click(function(){
	 
	 var divvalue=document.getElementById("d38").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d38").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=38;
		// taskview11();
		 }
});
$('#d39').click(function(){
	 
	 var divvalue=document.getElementById("d39").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d39").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=39;
		// taskview11();
		 }
});
$('#d40').click(function(){
	 
	 var divvalue=document.getElementById("d40").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d40").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=40;
		// taskview11();
		 }
});
$('#d41').click(function(){
	 
	 var divvalue=document.getElementById("d41").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d41").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=41;
		// taskview11();
		 }
});
$('#d42').click(function(){
	 
	 var divvalue=document.getElementById("d42").innerHTML;
	 if(divvalue=="")
		 {
		 
		 }
	 else
		 {
		 document.getElementById("d2").style.backgroundColor="white";
			document.getElementById("d3").style.backgroundColor="white";
			document.getElementById("d4").style.backgroundColor="white";
			document.getElementById("d5").style.backgroundColor="white";
			document.getElementById("d6").style.backgroundColor="white";
			document.getElementById("d7").style.backgroundColor="white";
			document.getElementById("d8").style.backgroundColor="white";
			document.getElementById("d9").style.backgroundColor="white";
			document.getElementById("d10").style.backgroundColor="white";
			document.getElementById("d11").style.backgroundColor="white";
			document.getElementById("d12").style.backgroundColor="white";
			document.getElementById("d13").style.backgroundColor="white";
			document.getElementById("d14").style.backgroundColor="white";
			document.getElementById("d15").style.backgroundColor="white";
			document.getElementById("d16").style.backgroundColor="white";
			document.getElementById("d17").style.backgroundColor="white";
			document.getElementById("d18").style.backgroundColor="white";
			document.getElementById("d19").style.backgroundColor="white";
			document.getElementById("d20").style.backgroundColor="white";
			document.getElementById("d21").style.backgroundColor="white";
			document.getElementById("d22").style.backgroundColor="white";
			document.getElementById("d23").style.backgroundColor="white";
			document.getElementById("d24").style.backgroundColor="white";
			document.getElementById("d25").style.backgroundColor="white";
			document.getElementById("d26").style.backgroundColor="white";
			document.getElementById("d27").style.backgroundColor="white";
			document.getElementById("d28").style.backgroundColor="white";
			document.getElementById("d29").style.backgroundColor="white";
			document.getElementById("d30").style.backgroundColor="white";
			document.getElementById("d31").style.backgroundColor="white";
			document.getElementById("d32").style.backgroundColor="white";
			document.getElementById("d33").style.backgroundColor="white";
			document.getElementById("d34").style.backgroundColor="white";
			document.getElementById("d35").style.backgroundColor="white";
			document.getElementById("d36").style.backgroundColor="white";
			document.getElementById("d37").style.backgroundColor="white";
			document.getElementById("d38").style.backgroundColor="white";
			document.getElementById("d39").style.backgroundColor="white";
			document.getElementById("d40").style.backgroundColor="white";
			document.getElementById("d41").style.backgroundColor="white";
			document.getElementById("d42").style.backgroundColor="white";
		 document.getElementById("d42").style.backgroundColor="LightSkyBlue";
		 document.getElementById("taskdate").value=divvalue+"/"+m+"/"+yy;
		 document.getElementById(globletextid).value=yy+"/"+m+"/"+divvalue;
		 position=42;
		// taskview11();
		 }
});
});
</script>


 <div id="chart_div" style="width: 400px; height: 120px;"></div>
</body>
</html>