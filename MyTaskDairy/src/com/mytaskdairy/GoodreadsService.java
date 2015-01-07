package com.mytaskdairy;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

import org.scribe.builder.ServiceBuilder;
import org.scribe.model.OAuthRequest;
import org.scribe.model.Response;
import org.scribe.model.Token;
import org.scribe.model.Verb;
import org.scribe.model.Verifier;
import org.scribe.oauth.OAuthService;
import org.xml.sax.SAXException;






import com.google.gson.Gson;

import java.net.URI;
//import android.sax.RootElement;
//import android.util.Xml;
import java.util.*;

import javax.servlet.http.*;
@SuppressWarnings("serial")
public class GoodreadsService extends HttpServlet{
	
	private static String sApiKey="d55c5a0e967be02e36d29ad80c5d6adb";
	private static String sApiSecret="92605288aa0a8fd2ee3a9a6b3df4ba5ce5a109cec3bd9406d2f2d35efd207cdf";
	
	private static OAuthService sService;
	/**
		 * OAuth Flow
		 */
	
	

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		try{
			
			String str=req.getRequestURL().toString();
			StringBuilder tr=new StringBuilder();  
			int j=str.lastIndexOf("/");
			char a[]=str.toCharArray();
			for(int i=0;i<j;i++)
			{
				tr.append(a[i]);
			}
			//System.out.println(tr.toString());
			String url=tr.toString()+"/Calender.jsp";
			String url1=tr.toString()+"/";
			Urlclass.seturl(url,url1);
		sService = new ServiceBuilder()
	        .provider(GoodreadsApi.class)
	        .apiKey(sApiKey)
	        .apiSecret(sApiSecret)
	        .callback(Urlclass.urlstring)
	        .build();
			Token t= sService.getRequestToken();
			HttpSession session=req.getSession(true);
		   session.setAttribute("tok",t);
			resp.sendRedirect(sService.getAuthorizationUrl(t)+"&expiration=never&scope=read,write");
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	
}
