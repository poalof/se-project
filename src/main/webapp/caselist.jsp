<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>医生端</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 接诊记录</strong> <a href="" style="float:right; display:none;"></a></div>
    <div class="padding border-bottom">
      
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;" width="10%">ID</th>
        <th width="10%">患者姓名</th>
        <th width="10%">处方</th>
        <th>描述</th>

      </tr>
      <volist name="list" id="vo">
      	<%-- 调用Servlet获取预约信息的Session --%>
            <%@ page import="javax.servlet.http.HttpSession" %>
            <%@ page import="com.se.pojo.Case" %>
            <%@ page import="java.util.*" %>
            <% 
               List<Case> cases = (List<Case>) session.getAttribute("cases");
               if (cases != null) {
                   for (Case c : cases) {
            %>
                  <tr>
                  	  <td><%= c.getId() %></td>
                      <td><%= c.getPatientName() %></td>
                      <td><%= c.getPres() %></td>
                      <td><%= c.getDesc() %></td>
                  </tr>
             <%   }
               }
             %>     
             <span>${case_msg}</span>
        
      <!-- 
      <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>-->
    </table>
  </div>
</form>
<!--  
<script type="text/javascript">

//单个删除
function del(id,mid,iscid){
	if(confirm("您确定要删除吗?")){
		
	}
}

//全选
$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

//批量删除
function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false;		
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}


</script>
-->
</body>
</html>