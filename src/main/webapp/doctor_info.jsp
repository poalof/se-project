<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>个人信息</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>  
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 信息修改</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="/project/updateDoctorInfoServlet">
      <div class="form-group">
        <div class="label">
          <label>姓名:</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="name" value="${doctor.doctorName}" required/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>年龄:</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="age" value="${doctor.age}" required/>
          <div class="tips"></div>
        </div>
      </div>
	  <div class="form-group">
	     <div class="label">
	         <label>邮箱:</label>
	     </div>
	     <div class="field">
	         <input type="email" class="input" name="mail" value="${doctor.mail}" required/>
	     <div class="tips"></div>
	   	 </div>
	  </div>
	  <div class="form-group">
	     <div class="label">
	         <label>电话:</label>
	     </div>
	     <div class="field">
	         <input type="text" class="input" name="phone" value="${doctor.phone}" required/>
	     <div class="tips"></div>
	   	 </div>
	  </div>
	  <div class="form-group">
	     <div class="label">
	         <label>科室:</label>
	     </div>
	     <div class="field">
	         <input type="text" class="input" name="dept" value="${doctor.deptName}" required readonly="readonly"/>
	     <div class="tips"></div>
	   	 </div>
	  </div>
	  <div class="form-group">
	     <div class="label">
	         <label>职位:</label>
	     </div>
	     <div class="field">
	     <%@ page import="javax.servlet.http.HttpSession" %>
         <%@ page import="java.util.*" %>
	     <%@ page import="com.se.pojo.Doctor"  %>
	  	 <%
 				Doctor doctor = (Doctor)session.getAttribute("doctor");
			    String text;
			    if (doctor.getStatus() == 0) {
			        text = "普通";
			    } else if (doctor.getStatus() == 1) {
			        text = "专家";
			    } else {
			        text = "未知";
			    }
		%>

	         <input type="text" class="input" name="status" value="<%= text %>" required readonly="readonly"/>
	     <div class="tips"></div>
	   	 </div>
	  </div>
	  <div class="form-group">
	     <div class="label">
	         <label>简介:</label>
	     </div>
	     <div class="field">
	         <input type="text" class="input" name="info" value="${doctorInfo.description}" required/>
	     <div class="tips"></div>
	   	 </div>
	  </div>
	  
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
      <span>${update_msg}</span>
    </form>
  </div>
</div>
</body></html>