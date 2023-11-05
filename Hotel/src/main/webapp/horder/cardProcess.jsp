<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
HttpURLConnection conn = (HttpURLConnection)url.openConnection();
conn.setRequestMethod("POST");
conn.setRequestProperty("Authorization","KakaoAK 35a33e74d93b78679104437333310ddb");//TC0ONETIME
conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
conn.setDoInput(true);
conn.setDoOutput(true);

String param="";
String cid="TC0ONETIME";
String partner_order_id=request.getParameter("partner_order_id");
String partner_user_id=request.getParameter("partner_user_id");
String item_name=request.getParameter("item_name");
String quantity="1";
String total_amount=request.getParameter("total_amount");
String tax_free_amount="0";
String approval_url="http://localhost:8080/BookStay/horder/approval.jsp";
String cancel_url="http://localhost:8080/BookStay/horder/cancel.jsp";
String fail_url="http://localhost:8080/BookStay/horder/fail.jsp";

param="cid="+cid+"&partner_order_id="+partner_order_id+"&partner_user_id="+partner_user_id+"&item_name="+item_name+"&quantity="+quantity+"&total_amount="+total_amount+"&total_amount="+total_amount+"&tax_free_amount="+tax_free_amount+"&approval_url="+approval_url+"&cancel_url="+cancel_url+"&fail_url="+fail_url;
		
System.out.println(param);
OutputStream os = conn.getOutputStream();
os.write(param.getBytes());
os.flush();
os.close();

BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
JSONParser parser = new JSONParser();
JSONObject obj = (JSONObject)parser.parse(br);
String seccessUrl = (String)obj.get("next_redirect_pc_url");
System.out.println(seccessUrl);
response.sendRedirect(seccessUrl);

%>