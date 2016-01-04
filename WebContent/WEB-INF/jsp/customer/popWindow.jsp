<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/taglib.jsp"%>
<html>
  <head>
  
  </head>
  
  <body>
	<form id="userForm" method="post" style="margin: 10;text-align: center;">
		<input type="hidden" name="custid" id="custid">
		Custname：<input name="custname" style="width: 150" validType="length[3,30]" class="easyui-validatebox" required="true"> <br>
		Identityid：<input name="identityid"style="width: 150" validType="length[3,30]" class="easyui-validatebox" required="true"> <br>
		Street：<input name="street" style="width: 150" validType="length[3,30]" class="easyui-validatebox" required="true""></input><br>
		<br>
		<a href="#" id="btn-back" onclick="closeWindow();" class="easyui-linkbutton" iconCls="icon-back">Return1</a>
		<a href="#" id="btn-add" onclick="addOrUpdateUser();" class="easyui-linkbutton" iconCls="icon-save">Save1</a>
	</form>
		<script type="text/javascript">
		
		function addOrUpdateUser(){
			var r = $('#userForm').form('validate');
			if(!r) {
				return false;
			}
			$.post("customer/addOrUpdate.do",$("#userForm").serializeArray(),function(data){
				$('#MyPopWindow').window('close');
				$('#userTable').datagrid('reload');  
				$.messager.alert('Message',data.mes,'info');
			});
		}
		
	</script>
  </body>
</html>
