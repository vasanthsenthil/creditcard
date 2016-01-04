<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/taglib.jsp"%>
<html>
  <head>
  	
  </head>
  
  <body>
    <form id="queryForm" style="margin:10;text-align: center;">
		<table width="100%">
			<tr>
			<td>customerid：<input name="custid" style="width: 200"></td>
			<td>custname：<input name="custname" style="width: 200"></td>
			<td align="center"><a href="#" onclick="clearForm();" class="easyui-linkbutton" iconCls="icon-search">Clear</a></td>
			</tr>
			<tr>
			<td>Identityno：<input name="identityid" style="width: 200"></td>
			<td>Gender：
				<select class="easyui-combobox" name="gender" style ="width:200px;">
							<option value="">Please select...</option>
							<option value="1">Male</option>
							<option value="2">Female</option>
						</select>
			</td>
			<td align="center"><a href="#" onclick="searchUser();" class="easyui-linkbutton" iconCls="icon-search">Search</a></td>
			</tr>
		</table>
	</form>
	<div style="padding:10" id="tabdiv">
		<table id="userTable"></table>
	</div>
	
	  <script type="text/javascript">
    jQuery(function($){
		$('#userTable').datagrid({
			title:'Customers List', 
			method:'post',
			iconCls:'icon-edit', 
			singleSelect:false, 
			height:360, 
			fitColumns: true, 
			striped: true, 
			collapsible:true,
			url:"customer/queryList.do",
			//sortName: 'user.id', 
			//sortOrder: 'desc',
			remoteSort: true, 
			idField:'custid', 
			queryParams:{}, 
			pagination:true, 
			rownumbers:true, 
			columns:[[
				{field:'ck',checkbox:true,width:2}, 
				{field:'customer.custid',title:'custid',width:20,sortable:true,
					formatter:function(value,row,index){return row.custid;} 
				},
				{field:'customer.custname',title:'custname',width:20,sortable:true,
					formatter:function(value,row,index){return row.custname;} 
				},
				{field:'customer.identityno',title:'identityno',width:20,sortable:true,
					formatter:function(value,row,index){return row.identityid;} 
				},
				{field:'customer.gender',title:'gender',width:30,sortable:true,
					formatter:function(value,row,index){
						if(row.gender == '1') return 'Male';
						else return 'Female';
					}
				},
				{field:'customer.education',title:'education',width:20,sortable:true,
					formatter:function(value,row,index){
						if(row.education == '1') return 'High_S';
						else if(row.education == '2') return 'Undergraduate';
						else if(row.education == '3') return 'Graduate';
						else if(row.education == '4') return 'PHD';
						else if(row.education == '5') return 'Professor';
						else return '';
						
						
					} 
				},
				{field:'customer.address',title:'Address',width:20,sortable:true,
					formatter:function(value,row,index){return row.street;} 
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
    //Add
    function addrow(){
    	showWindow({
  			title:'Add new customer',
  			href:'customer/popWindow.do',
  			width:400,
  			height:250,
  			onLoad: function(){
  				$('#userForm').form('clear');
  			}
  			
  		});
	}
  //Update
    function updaterow(){
		var rows = $('#userTable').datagrid('getSelections');
		if(rows.length==0){
			$.messager.alert('Message',"please choose a customer",'info');
			return;
		}
		if(rows.length > 1){
			$.messager.alert('Message',"you can only choose one customer",'info');
			return;
		}
		showWindow({
  			title:'update user information',
  			href:'customer/popWindow.do',
  			width:300,
  			height:250,
  			onLoad: function(){
  				$("#userForm").form('load', rows[0]);
  			}
  		});
	}
  	
  //delete
  	function deleterow(){
    	var rows = $('#userTable').datagrid('getSelections');
		if(rows.length==0){
			$.messager.alert('Message',"please choose a customer",'info');
			return;
		}
  		$.messager.confirm('Message','Are you sure to delete this customer?',function(result){
	        if (result){

	        	var ps = "";
	        	$.each(rows,function(i,n){
	        		if(i==0) 
	        			ps += "?custid="+n.custid;
	        		else
	        			ps += "&custid="+n.custid;
	        	});
	        	$.post('customer/delete.do'+ps,function(data){
	        		$.messager.alert('message',data.mes,'info');
		        	$('#userTable').datagrid('reload'); 
	        	});
	        }
	    });
  	}
    //search
	function searchUser(){
		var params = $('#userTable').datagrid('options').queryParams; //先取得 datagrid 的查询参数
		var fields =$('#queryForm').serializeArray(); //自动序列化表单元素为JSON对象
		$.each( fields, function(i, field){
			params[field.name] = field.value; //设置查询参数
		}); 
		$('#userTable').datagrid('reload'); //设置好查询参数 reload 一下就可以了
	}
	//清空查询条件
	function clearForm(){
		$('#queryForm').form('clear');
		searchUser();
	}
    
	</script>
  </body>
</html>
