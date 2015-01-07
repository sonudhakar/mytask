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

import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Key;



@SuppressWarnings("serial")
public class ShowTask extends HttpServlet {
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
		Key control=KeyFactory.createKey(ControlTask.class.getSimpleName(),dat);
		ControlTask ct=pm.getObjectById(ControlTask.class,control);
		ArrayList<Task> as=ct.getTaskObject();
		Iterator itr = as.iterator();
		String str="<div class='panel-group' id='accordion'>";
		int i=0;
		 while(itr.hasNext())
	        {
	            Task t=(Task)itr.next();
	            //  System.out.println(t.getUserId());
	                     if(t.getUserId().equals(useremailid))
	                     {
	                     	str+="<div class='panel panel-default' id='notificationid'><div class='panel-heading'><h4 class='panel-title'>"+
	                             "<a data-toggle='collapse' data-parent='#accordion' href='#"+""+i+"' data-toggle='tooltip' data-placement='top' title='Click to see Task Detail'><center>"+t.getTaskName()+"</center></a></h4>"+
	                            "</div><div id='"+""+i+"' class='panel-collapse collapse in'>"+
	                               "<div class='panel-body'><b>Task Description<b><div style='float:right;'><a id='"+t.getTaskName()+"' name='"+t.getTaskDate()+"'href='#' onclick='deletion(this)'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a></div><table class='table'><tr><td>"+t.getTaskDescription()+"&nbsp;&nbsp;<a name='"+t.getTaskName()+1+1+1+"' href='#' onclick='showupdatedesc(this)'><span class='glyphicon glyphicon-edit'></span></a>&nbsp;<span id='"+t.getTaskName()+1+1+1+"' style='display:none;'><textarea id='"+t.getTaskName()+1+1+1+1+"'>"+t.getTaskDescription()+"</textarea>&nbsp;&nbsp;<a href='#' name='"+t.getTaskName()+"' id='"+t.getTaskDate()+"' onclick='updatetaskdescription(this)'>Update</a></span></td></tr></table><br><b>Task Date Created<b><br><table class='table'><tr><td>"+t.getTaskDate()+"</td></tr></table>"+
	                            "<br><b>Task Date Completed<b><br><table class='table'><tr><td>"+t.getTaskCompletedDate()+"&nbsp;&nbsp;<a name='"+t.getTaskName()+1+1+"' href='#' onclick='showupdatedate(this)'><span class='glyphicon glyphicon-edit'></span></a>&nbsp;<span id='"+t.getTaskName()+1+1+"' style='display:none;'><input type='text' id='"+t.getTaskName()+1+"' value='"+t.getTaskCompletedDate()+"'>&nbsp;&nbsp;<a href='#' name='"+t.getTaskName()+"' id='"+t.getTaskDate()+"' onclick='updatecompleteddate(this)'>Update</a></span></td></tr></table></div></div></div>";
	                     	 i++;
	                     }
	                    
	                 }
	                 str+="</div>";
	                 pw.print(str);
	             
	             
	        
		
	}
	catch(Exception e)
	{
		
	}
	}
}
