package com.mytaskdairy;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.commons.lang.StringUtils;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.*;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.XML;
import org.scribe.builder.ServiceBuilder;
import org.scribe.model.OAuthRequest;
import org.scribe.model.Response;
import org.scribe.model.Token;
import org.scribe.model.Verb;
import org.scribe.model.Verifier;
import org.scribe.oauth.OAuthService;

import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.KeyFactory.Builder;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.datastore.TransactionOptions;
import com.google.apphosting.api.DatastorePb.DatastoreService;
import com.google.apphosting.api.DatastorePb.Transaction;

import javax.servlet.http.*;
@SuppressWarnings("serial")
public class Exchange extends HttpServlet{
	private static String sApiKey="d55c5a0e967be02e36d29ad80c5d6adb";
	private static String sApiSecret="92605288aa0a8fd2ee3a9a6b3df4ba5ce5a109cec3bd9406d2f2d35efd207cdf";
	private static OAuthService sService;
	protected void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws IOException, ServletException {
	  
		
		response.setContentType("application/json");
		PrintWriter pw=response.getWriter();
		  com.google.appengine.api.datastore.DatastoreService ds=DatastoreServiceFactory.getDatastoreService();
		sService = new ServiceBuilder()
        .provider(GoodreadsApi.class)
        .apiKey(sApiKey)
        .apiSecret(sApiSecret)
        .callback(Urlclass.urlstring)
        .build();
	    HttpSession ss=request.getSession(false);
		Token vv=(Token)ss.getAttribute("tok");
		System.out.println(vv.toString());
		Verifier v = new Verifier(request.getParameter("oauthverifier"));
		//Verifier v = new Verifier(request.getParameter("stat1"));
		Token accessToken = sService.getAccessToken(vv,v);
		ss.setAttribute("access",accessToken);
		System.out.println(accessToken.toString());
		OAuthRequest reque = new OAuthRequest(Verb.GET, "https://api.trello.com/1/boards/5499683110f6ce1ff2139de1/cards?fields=name,desc,due,&member_fields=fullName&key=d55c5a0e967be02e36d29ad80c5d6adb");
		
		sService.signRequest(accessToken, reque);
				
		Response respons = reque.send();
	
		InputStreamReader is = new InputStreamReader(respons.getStream());
		StringBuilder sb=new StringBuilder();
		BufferedReader br = new BufferedReader(is);
		String read = br.readLine();

		while(read != null) {
		    //System.out.println(read);
		    sb.append(read);
		    read =br.readLine();

		}
		
	//System.out.println(sb.toString());
		/* 	try{
			
	
		JSONObject xmlJSONObj = XML.toJSONObject(sb.toString());
        // String jsonPrettyPrintString = xmlJSONObj.toSt ring(0);
		  System.out.println(xmlJSONObj);
        JSONObject ssp=xmlJSONObj.getJSONObject("GoodreadsResponse");
        JSONObject ss1=ssp.getJSONObject("user");
        System.out.println(ss1);
        long id=ss1.getLong("id");
        ss.setAttribute("id",id);
        String name=ss1.getString("name");
        System.out.println(id+" "+name);
      
        String login=(String)ss.getAttribute("login");
        System.out.println(login);
        if(login==null)
        {
        	 System.out.println(login);
        }
        else
        {
      //  PersistenceManager pm=PMF.get().getPersistenceManager();
       // Key key=KeyFactory.createKey(GoodreadsLogin.class.getSimpleName(), login);
      //  System.out.println(key);
      //  GoodreadsLogin grl=new GoodreadsLogin(key,accessToken.getToken().toString(),accessToken.getSecret().toString(),id);
        
     //   pm.makePersistent(grl);
       
        }
		
    		    
		}
		catch(Exception e)
		{
			
		}*/
pw.print(sb.toString());
	}
	
	protected void doPost(HttpServletRequest request,
	            HttpServletResponse response) throws ServletException, IOException {
	        processRequest(request, response);
	    }  
	    protected void doGet(HttpServletRequest request, 
	            HttpServletResponse response)
	      throws ServletException, IOException {
	processRequest(request, response);
	    }
	
}
