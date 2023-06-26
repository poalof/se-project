<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>新增挂号信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="/project/addAppointServlet">  
      <div class="form-group">
        <div class="label">
          <label>患者姓名:</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="patientName" data-validate="required:请输入" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>预约日期:</label>
        </div>
        <div class="field">
          <input type="date" id="appointmentDate" name="appointmentDate" required>
          <div class="tips"></div>
        </div>
      </div>     
      <!-- 
      <if condition="$iscid eq 1">
        <div class="form-group">
          <div class="label">
            <label>分类标题：</label>
          </div>
          <div class="field">
            <select name="cid" class="input w50">
              <option value="">请选择分类</option>
              <option value="">产品分类</option>
              <option value="">产品分类</option>
              <option value="">产品分类</option>
              <option value="">产品分类</option>
            </select>
            <div class="tips"></div>
          </div>
        </div>
        -->

        <div class="form-group">
          <div class="label">
            <label>时间段:</label>
          </div>
          <div class="field" style="padding-top:8px;">
            
         
          	<select id="timeSlot" name="timeSlot" required>
            	<option value="0">09:30-10:30</option>
              <option value="1">10:30-11:30</option>
              <option value="2">11:30-12:30</option>
              <option value="3">12:30-13:30</option>
              <option value="4">13:30-14:30</option>
              <option value="5">14:30-15:30</option>
              <option value="6">15:30-16:30</option>
        	</select>
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
    </form>
    <span>${new_msg}</span>
  </div>
</div>

</body></html>