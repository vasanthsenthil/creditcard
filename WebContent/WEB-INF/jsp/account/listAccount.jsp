<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="/taglib.jsp"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="jquery,ui,easy,easyui,web">
<meta name="description"
	content="easyui help you build your web page easily!">
<title>ListAccount</title>
</head>
<body>

	<table id="dg" title="Account Management"
		style="width: 700px; height: 250px" toolbar="#toolbar"
		pagination="true" idField="accountno" rownumbers="true"
		fitColumns="true" singleSelect="true">
		<thead>
			<tr>
				<th field="accountno" width="50"
					editor="{type:'validatebox',options:{required:true}}">AccountNo</th>
				<th field="opendate" width="50"
					editor="{type:'validatebox',options:{required:true}}">OpenDate</th>
				<th field="custid" width="50" editor="text">Custid</th>
				<th field="bankid" width="50"
					editor="{type:'validatebox',options:{required:true}}">Bankid</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"
			onclick="javascript:$('#dg').edatagrid('addRow')">New</a> <a href="#"
			class="easyui-linkbutton" iconCls="icon-remove" plain="true"
			onclick="javascript:$('#dg').edatagrid('destroyRow')">Destroy</a> <a
			href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"
			onclick="javascript:$('#dg').edatagrid('saveRow')">Save</a> <a
			href="#" class="easyui-linkbutton" iconCls="icon-undo" plain="true"
			onclick="javascript:$('#dg').edatagrid('cancelRow')">Cancel</a>
	</div>
<script type="text/javascript">
	$(function() {
		$('#dg').edatagrid({
			url : 'account/queryList.do',
			saveUrl : 'account/insert.do',
			updateUrl : 'account/addOrUpdate.do',
			destroyUrl : 'account/delete.do'
		});
	});
</script>
</body>
</html>