<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
  	 <style type="text/css">
		#fm{
			margin:0;
			padding:10px 30px;
		}
		.ftitle{
			font-size:14px;
			font-weight:bold;
			padding:5px 0;
			margin-bottom:10px;
			border-bottom:1px solid #ccc;
		}
		.fitem{
			margin-bottom:5px;
		}
		.fitem label{
			display:inline-block;
			width:80px;
		}
		.fitem input{
			width:160px;
		}
	</style>
  </head>
  
  <body>
    <form id="queryForm-account" style="margin:10;text-align: center;">
		<table width="100%" >
			<tr>
				<td  align="right">Account NO：<input name="accountno" style="width: 200"></td>
				<td  align="right">Account Type：
						<select class="easyui-combobox" name="accounttype" style ="width:200px;">
							<option value="">Please select...</option>
							<option value="1">Checking</option>
							<option value="2">Saving</option>
							<option value="3">Credit</option>
							<option value="4">Loan</option>
							<option value="5">Other</option>
						</select>
				</td>
				<td  align="right">Account Status：
						<select class="easyui-combobox" name="accountstate" style ="width:200px;">
							<option value="">Please select...</option>
							<option value="1">Normal</option>
							<option value="2">Limited</option>
							<option value="3">Frozen</option>
							<option value="4">Cancelled</option>
							<option value="5">Other</option>
						</select>
				</td>
			</tr>
			<tr>
				<td  align="right">Customer ID：<input name="custid" style="width: 200"></td>
				<td  align="right">Bank Id：<input name="custname" style="width: 200"></td>
				<td  align="right"></td>
			</tr>
		
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td align="center">
					
				</td>
				<td align="center">
					<a href="#" onclick="clearForm();" class="easyui-linkbutton" iconCls="icon-search">Clear</a>
					<a href="#" onclick="searchUser();" class="easyui-linkbutton" iconCls="icon-search">Search</a>	
				</td>
				<td align="center"></td>
			</tr>
		</table>
	</form>
	<div style="padding:10" id="tabdiv">
		<table id="userTable"></table>
	</div>
	<div id="dlg-account" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
			closed="true" buttons="#dlg-account-buttons">
		<!--<div class="ftitle">Card Information</div>  -->
		<form id="fm" method="post" novalidate>
			<div class="fitem">
				<label>Account No:</label>
				<input name="accountno" class="easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>Account Type:</label>
					<select class="easyui-combobox" name="accounttype" style ="width:150px;">
							<option value="">Please select...</option>
							<option value="1">Checking</option>
							<option value="2">Saving</option>
							<option value="3">Credit</option>
							<option value="4">Loan</option>
							<option value="5">Other</option>
						</select>
			</div>
			<div class="fitem">
				<label>Customer ID:</label>
				<input name="custid" class="easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>Bank ID:</label>
				<input name="bankid"  class="easyui-textbox" required="true">
			</div>
		</form>
	</div>
	<div id="dlg-account-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saverow()" style="width:90px">Save</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg-account').dialog('close')" style="width:90px">Cancel</a>
	</div>
	<div id="dlg-account-update" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
			closed="true" buttons="#dlg-account-buttons-update">
		<!--<div class="ftitle">Card Information</div>  -->
		<form id="fm-update" method="post" novalidate>
			<div class="fitem">
				<label>Account No:</label>
				<input name="accountno" class="easyui-textbox" required="true" readonly>
			</div>
			<div class="fitem">
				<label>Account Type:</label>
						<input name="accounttype" class="easyui-textbox" required="true" readonly>
			</div>
			<div class="fitem">
				<label>Customer ID:</label>
				<input name="custid" class="easyui-textbox" required="true" readonly>
			</div>
			<div class="fitem">
				<label>Bank ID:</label>
				<input name="bankid"  class="easyui-textbox" required="true" readonly>
			</div>
			<div class="fitem">
				<label>Account Status:</label>

						<select class="easyui-combobox" name="accountstate" style ="width:200px;" required="true">
							<option value="">Please select...</option>
							<option value="1">Normal</option>
							<option value="2">Limited</option>
							<option value="3">Frozen</option>
							<option value="4">Cancelled</option>
							<option value="5">Other</option>
						</select>
			</div>
		</form>
	</div>
	<div id="dlg-account-buttons-update">
		<a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saverowupdate()" style="width:90px">Save</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg-account-update').dialog('close')" style="width:90px">Cancel</a>
	</div>
	  <script type="text/javascript">
    jQuery(function($){
		$('#userTable').datagrid({
			title:'Account List', 
			method:'post',
			iconCls:'icon-edit', 
			singleSelect:true, 
			height:360, 
			fitColumns: true, 
			striped: true, 
			collapsible:true,
			url:"account/queryList.do",
			sortName: 'accountno desc', 
			sortOrder: 'desc',
			remoteSort: true, 
			idField:'accountno', 
			queryParams:{}, 
			pagination:true, 
			rownumbers:true, 
			columns:[[
				{field:'ck',checkbox:true,width:2}, 
				{field:'account.accountno',title:'Account No',width:20,sortable:true,
					formatter:function(value,row,index){return row.accountno;} 
				},
				{field:'account.opendate',title:'Opendate',width:20,sortable:true,
					formatter:function(value,row,index){return row.opendate;} 
				},
				{field:'account.custid',title:'Customer ID',width:20,sortable:true,
					formatter:function(value,row,index){return row.custid;} 
				},
				{field:'account.bankid',title:'Bank ID',width:30,sortable:true,
					formatter:function(value,row,index){
						return row.bankid;  
					}
				},
				{field:'account.accounttype',title:'Account Type',width:20,sortable:true,
					formatter:function(value,row,index){
						if(row.accounttype == '1') return 'Checking';
						else if(row.accounttype == '2') return 'Saving';
						else if(row.accounttype == '3') return 'Credit';
						else if(row.accounttype == '4') return 'Loan';
						else if(row.accounttype == '5') return 'Other';
						else return '';
						
						
					} 
				},
				{field:'account.accountstate',title:'Account Status',width:20,sortable:true,
					formatter:function(value,row,index){
						if(row.accountstate == '1') return 'Normal';
						else if(row.accountstate == '2') return 'Limited';
						else if(row.accountstate == '3') return 'Frozen';
						else if(row.accountstate == '4') return 'Cancelled';
						else if(row.accountstate == '5') return 'Other';
						else return '';
					} 
				}
			]],
			toolbar:[{
				text:'Add',
				iconCls:'icon-add',
				handler:function(){
					addrow();
				}
			},'-',{
				text:'Update',
				iconCls:'icon-edit',
				handler:function(){
					updaterow();
				}
			},'-',{
				text:'Delete',
				iconCls:'icon-remove',
				handler:function(){
					deleterow();
				}
			},'-'],
			onLoadSuccess:function(){
				$('#userTable').datagrid('clearSelections'); //一定要加上这一句，要不然datagrid会记住之前的选择状态，删除时会出问题
			}
		});
    	
/*
		$('#deptCombo').combogrid({
			idField:'id', 
		    textField:'name', 
		    url:"dept/queryAll",
		    fitColumns: true,
			striped: true,
			editable:false,
		    columns:[[
		        {field:'code',title:'code',width:100},
		        {field:'name',title:'name',width:150}
		    ]]
		});*/

	});
    //search
	function searchUser(){
		var params = $('#userTable').datagrid('options').queryParams; //先取得 datagrid 的查询参数
		var fields =$('#queryForm-account').serializeArray(); //自动序列化表单元素为JSON对象
		$.each( fields, function(i, field){
			params[field.name] = field.value; //设置查询参数
		}); 
		$('#userTable').datagrid('reload'); //设置好查询参数 reload 一下就可以了
	}
	//清空查询条件
	function clearForm(){
		$('#queryForm-account').form('clear');
		searchUser();
	}
    
	</script>
	
	<script type="text/javascript">
		var url;
		function addrow(){
			$('#dlg-account').dialog('open').dialog('setTitle','New Account');
			$('#fm').form('clear');
			url = 'account/insert.do';
		}
		function updaterow(){
			var row = $('#userTable').datagrid('getSelected');
			if (row){
				$('#dlg-account-update').dialog('open').dialog('setTitle','Edit Account');
				$('#fm-update').form('load',row);
				url = 'account/addOrUpdate.do?id='+row.accountno;
			}
		}
		function saverow(){
			$('#fm').form('submit',{
				url: url,
				onSubmit: function(){
					return $(this).form('validate');
				},
				success: function(result){
					var result = eval('('+result+')');
					if (result.errorMsg){
						$.messager.show({
							title: 'Error',
							msg: result.errorMsg
						});
					} else {
						$('#dlg-account').dialog('close');		// close the dialog
						$('#userTable').datagrid('reload');	// reload the Card data
					}
				}
			});
		}
		function saverowupdate(){
			$('#fm-update').form('submit',{
				url: url,
				onSubmit: function(){
					return $(this).form('validate');
				},
				success: function(result){
					var result = eval('('+result+')');
					if (result.errorMsg){
						$.messager.show({
							title: 'Error',
							msg: result.errorMsg
						});
					} else {
						$('#dlg-account-update').dialog('close');		// close the dialog
						$('#userTable').datagrid('reload');	// reload the Card data
					}
				}
			});
		}
		function deleterow(){
			var row = $('#userTable').datagrid('getSelected');
			if (row){
				$.messager.confirm('Confirm','Are you sure you want to destroy this Account?',function(r){
					if (r){
					
						$.post('account/delete.do',{id:row.accountno},function(result){
							if (result.success){
								$('#userTable').datagrid('reload');	// reload the Card data
							} else {
								$.messager.show({	// show error message
									title: 'Error',
									msg: result.errorMsg
								});
							}
						},'json');
					}
				});
			}
		}
	</script>
  </body>
 
</html>
