package com.mytaskdairy;

import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Task {
@Persistent
private String userId;
@Persistent
private String taskName;
@Persistent
private String taskDescription;
@Persistent
private String taskDate;
@Persistent
private String taskCompletedDate;

public void setTaskName(String taskname)
{
	taskName=taskname;
}
public void setUserId(String user)
{
	userId=user;
}
public void setTaskDescription(String taskdescription)
{
	taskDescription=taskdescription;
}
public void setTaskDate(String date)
{
	taskDate=date;
}
public void setTaskCompletedDate(String datecompleted)
{
	taskCompletedDate=datecompleted;
}
public String getTaskName()
{
	return taskName;
}
public String getTaskDescription()
{
	return taskDescription;
}
public String getTaskDate()
{
	return taskDate;
}
public String getUserId()
{
	return userId;
}
public String getTaskCompletedDate()
{
	return taskCompletedDate;
}
}
