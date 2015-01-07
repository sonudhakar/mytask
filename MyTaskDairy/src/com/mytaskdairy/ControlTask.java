package com.mytaskdairy;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.mytaskdairy.Task;
import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class ControlTask {
@PrimaryKey
@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
private Key key;
@Persistent
private ArrayList<Task> taskobject;
public void setKey(Key keyname)
{
	key=keyname;
}
public void setTaskObject(ArrayList<Task> taskname)
{
	taskobject=taskname;
}
public Key getKey()
{
	return key;
}
public ArrayList<Task> getTaskObject()
{
	return taskobject;
}
}
