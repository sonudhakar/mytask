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
public class DeleteTask extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");
		PrintWriter pw=resp.getWriter();
	String taskdate=req.getParameter("taskdate");
	String useremailid=req.getParameter("useremailid");
	String taskname=req.getParameter("taskname");
	
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
			int i=0;
		 while(itr.hasNext())
	        {
	            Task t=(Task)itr.next();
	            if(taskname.equals(t.getTaskName()) && useremailid.equals(t.getUserId()))
	            {
	            	as.remove(t);
	            	pm.deletePersistent(t);
	            }
	        }
	             
	         pm.makePersistent(ct);    
	        
		
	}
	catch(Exception e)
	{
		
	}
	}
}
