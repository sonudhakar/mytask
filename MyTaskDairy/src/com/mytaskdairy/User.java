package com.mytaskdairy;

import java.util.ArrayList;
import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class User {
@PrimaryKey
@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
private Key key;
@Persistent
private ArrayList<String> userId;

public void setUserId(ArrayList<String> user)
{
	userId=user;
}

public ArrayList<String> getUserId()
{
	return userId;
}
public void setKey(Key keyname)
{
	key=keyname;
}
public Key getKey()
{
	return key;
}
}
