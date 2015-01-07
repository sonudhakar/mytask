package com.mytaskdairy;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.PersistenceManagerFactory;
import javax.servlet.http.*;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Key;



@SuppressWarnings("serial")
public class ShowStatistics extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");
		PrintWriter pw=resp.getWriter();
	String taskdate=req.getParameter("taskdate");
	String useremailid=req.getParameter("useremailid");
	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
	Date date=null;
	String dat=null;
 try{
	try {
 
		date = formatter.parse(taskdate);
	
		dat=formatter.format(date);
 
	} catch (ParseException ew) {
		ew.printStackTrace();
	}
	
	
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Key user=KeyFactory.createKey(User.class.getSimpleName(),dat);
		User us=pm.getObjectById(User.class,user);
		ArrayList<String> ss=(ArrayList)us.getUserId();
		 Iterator it=ss.iterator();
		
		
		String str="{'task':[";
		String str1="";
		// System.out.println(str);
		int personal=0;
		Task t=null;
		String name="";
		int total=0;
		 while(it.hasNext())
	        {
			 String username=(String)it.next();
			 Key control=KeyFactory.createKey(ControlTask.class.getSimpleName(),dat);
				ControlTask ct=pm.getObjectById(ControlTask.class,control);
				ArrayList<Task> as=ct.getTaskObject();
			 Iterator itr = as.iterator();
	            personal=0;
	            total=0;
	    		while(itr.hasNext())
	    		{
	    			t=(Task)itr.next();
	    			if(username.equals(t.getUserId()))
	    			{
	    				personal++;
	    				 name=t.getUserId();
	    			}
	    			total++;
	    		}
	            
	             str1+="{'taskdone':"+personal+",'name':"+name+"},";
	            
	                 }
		 		str=str+str1;
		 		
	              int index=str.length();
	              char sss[]=str.toCharArray();
	              StringBuilder sb=new StringBuilder();
	              for(int ii=0;ii<index-1;ii++)
	              {
	            	  sb.append(sss[ii]);
	              }
	              str=sb.toString();
	              
	              str+="],'total':"+total+"}";
	             JSONObject json=new JSONObject(str);
	            // System.out.println(json.toString());
		 
		 	/*	String str="<!DOCTYPE HTML><html><head><script type='text/javascript'>"+
    "var chart = new CanvasJS.Chart('chartContainer',{title:{text: 'One Day Task Report of You'},data: [{type: 'pie',"+
      "showInLegend: true,dataPoints: [{  y: "+i+", legendText:'Me', indexLabel: 'My Task Ratio' },{  y: "+j+", legendText:'Others', indexLabel: 'Others Task Ratio' },]"+
     "}]});chart.render();</script><script type='text/javascript' src='/script/canvasjs.min.js'></script>"+
  "<body><div id='chartContainer' style='height: 300px;'></div></body></html>";*/
		 
		 
	               pw.print(json);
	             
	             
	        
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}
}
