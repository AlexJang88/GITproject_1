<%@page import="hotel.bean.MemberDAO"%>
<%@page import="hotel.bean.hotelDTO"%>
<%@page import="hotel.bean.hotelDAO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
MemberDAO mdao = MemberDAO.getInstance();
String sid = (String) session.getAttribute("sid");
int id= mdao.checkGrade(sid);
if (id!=99){
	
	 %>
	  <script>
	  	alert("관리자만 접근할수 있습니다.");
	  	window.location="../views/main.jsp";
	  </script>
<%}
String path=request.getRealPath("/upload");
int max = 1024 * 1024 * 10;
DefaultFileRenamePolicy df = new DefaultFileRenamePolicy();
String enc="UTF-8";
MultipartRequest mr = new MultipartRequest(request,path,max,enc,df);
hotelDAO dao = new hotelDAO();
int num=Integer.parseInt(mr.getParameter("num"));
int ref=Integer.parseInt(mr.getParameter("ref"));
int re_step=Integer.parseInt(mr.getParameter("re_step"));
String img="";
hotelDTO getdto = new hotelDTO();
hotelDTO setdto = new hotelDTO();
getdto=dao.getContentMain(num);

if(re_step==0){
	String upload1=mr.getFilesystemName("upload1");
	String upload2=mr.getFilesystemName("upload2");
	String upload3=mr.getFilesystemName("upload3");
	String upload4=mr.getFilesystemName("upload4");
	String upload5=mr.getFilesystemName("upload5");
	String [] arrayupload = {upload1,upload2,upload3,upload4,upload5};
	String getimg = getdto.getImg();
	String[] arrayimg=getimg.split(",");
	for(int i=0;i<arrayupload.length;i++){
		if(arrayupload[i]==null){
			break;
		}
		arrayimg[i]=arrayupload[i];
	}
	for(int i=0;i<arrayimg.length; i++){
		if(arrayimg[i]==null){
			break;
		}	
		img+=","+arrayupload[i];
	}
	setdto.setNum(num);
	setdto.setTitle(mr.getParameter("title"));
	setdto.setContent(mr.getParameter("content"));
	setdto.setContact(mr.getParameter("contact"));
	setdto.setContactfax(mr.getParameter("contactfax"));
	setdto.setRe_step(Integer.parseInt(mr.getParameter("re_step")));
	setdto.setImg(img);
	dao.updateContent(setdto);
	response.sendRedirect("views/hlist.jsp");
}else{
	String upload=mr.getFilesystemName("upload");
	if(upload!=null){
	img=upload;
	}
	setdto.setNum(num);
	setdto.setTitle(mr.getParameter("title"));
	setdto.setContent(mr.getParameter("content"));
	setdto.setRoomtype(mr.getParameter("roomtype"));
	setdto.setPrice(Integer.parseInt(mr.getParameter("price")));
	setdto.setRe_step(Integer.parseInt(mr.getParameter("re_step")));
	setdto.setImg(img);
	dao.updateContent(setdto);
	dao.priceUpdate(ref);
	response.sendRedirect("hotelContent.jsp?ref="+ref);
}%>