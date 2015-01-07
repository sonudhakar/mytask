package com.mytaskdairy;

import java.io.IOException;
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
public class MyTaskDairyServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		String taskname=req.getParameter("taskname");
		String taskdescription=req.getParameter("taskdescription");
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
		Task ts=new Task();
		ts.setUserId(useremailid);
		ts.setTaskName(taskname);
		ts.setTaskDate(dat);
		ts.setTaskCompletedDate(dat);
		ts.setTaskDescription(taskdescription);
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Key userkey=KeyFactory.createKey(User.class.getSimpleName(),dat);
		User us=pm.getObjectById(User.class,userkey);
		ArrayList<String>pp=(ArrayList)us.getUserId();
		Iterator itr = pp.iterator();
		int f=0;
		while(itr.hasNext())
		{
			if(itr.next().equals(useremailid))
			{
				f=1;
			}
			
				
			
		}
		if(f==0)
		{
			pp.add(useremailid);
		}
		us.setUserId(pp);
		Key controltask=KeyFactory.createKey(ControlTask.class.getSimpleName(),dat);
		ControlTask ct=pm.getObjectById(ControlTask.class,controltask);
		ArrayList as=(ArrayList)ct.getTaskObject();
		as.add(ts);
		try
		{
			pm.makePersistent(ct);
			pm.makePersistent(us);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	 }
	 catch(Exception ee)
	 {
		 
		    Task ts=new Task();
		    ts.setUserId(useremailid);
			ts.setTaskName(taskname);
			ts.setTaskDate(dat);
			ts.setTaskCompletedDate(dat);
			ts.setTaskDescription(taskdescription);
			PersistenceManager pm = PMF.get().getPersistenceManager();
			Key userkey=KeyFactory.createKey(User.class.getSimpleName(),dat);
			User us=new User();
			ArrayList<String> pp=new ArrayList<String>();
			pp.add(useremailid);
			us.setUserId(pp);
			us.setKey(userkey);
			
			Key controltask=KeyFactory.createKey(ControlTask.class.getSimpleName(),dat);
			ControlTask ct=new ControlTask();
			ArrayList<Task> ls1=new ArrayList<Task>();
			ls1.add(ts);
			ct.setTaskObject(ls1);
			ct.setKey(controltask);
			try
			{
				pm.makePersistent(ct);
				pm.makePersistent(us);
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
	 
	 }
		// creating of task class
		
		
		
		
	}
}
