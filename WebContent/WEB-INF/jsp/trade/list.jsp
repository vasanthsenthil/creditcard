<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
  	
  </head>
  
  <body>
    <form id="queryForm" style="margin:10;text-align: center;">
		<table width="100%" >
			<tr>
				<td  align="right">customerid：<input name="custid" style="width: 200"></td>
				<td  align="right">custname：<input name="custname" style="width: 200"></td>
				<td  align="right">Identityno：<input name="identityid" style="width: 200"></td>
			</tr>
			<tr>
				<td  align="right">State：<input name="state" style="width: 200"></td>
				<td  align="right">City：<input name="city" style="width: 200"></td>
				<td  align="right">Gender：
						<select class="easyui-combobox" name="gender" style ="width:200px;">
							<option value="">Please select...</option>
							<option value="1">Male</option>
							<option value="2">Female</option>
						</select>
				</td>
			</tr>
			<tr>
				<td  align="right">Education：
					<select class="easyui-combobox" name="education" style="width:200">
						<option value="">Please select ...</option>
						<option value="1">High_S</option>
						<option value="2">Undergraduate</option>
						<option value="3">Graduate</option>
						<option value="4">PHD</option>
						<option value="5">Professor</option>
					</select>
				</td>
				<td  align="right">Card Type：
					<select class="easyui-combobox" name="cardtype" style ="width:200px;">
							<option value="">Please select...</option>
							<option value="1">Visa</option>
							<option value="2">MasterCard</option>
							<option value="3">AMEX</option>
							<option value="4">Discover</option>
							<option value="5">JCB</option>
							<option value="6">UnionPay</option>
						</select>
				</td>
				<td  align="right">Card NO：<input name="cardno" style="width: 200"></td>
			</tr>
			<tr>
				<td  align="right">Trade Type：
					<select class="easyui-combobox" name="tradetype" style ="width:200px;">
							<option value="">Please select...</option>
							<option value="1">Purchase</option>
							<option value="2">Withdraw</option>
							<option value="3">Deposit</option>
							<option value="4">Refund</option>
							<option value="5">Transfer</option>
						</select>
				</td>
				<td  align="right">Merchant Type：
					<select class="easyui-combobox" name="merchanttype" style ="width:200px;">
							<option value="">Please select...</option>
							<option value="01">Restaurant</option>
							<option value="02">Bar</option>
							<option value="03">Market</option>
							<option value="04">Oil</option>
							<option value="05">Rental</option>
							<option value="06">Ticket</option>
						</select>
				</td>
				<td  align="right">Merchant：<input name="merchant" style="width: 200"></td>
			</tr>
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
	
	  <script type="text/javascript">
    jQuery(function($){
		$('#userTable').datagrid({
			title:'Trade List', 
			method:'post',
			iconCls:'icon-edit', 
			singleSelect:true, 
			height:360, 
			fitColumns: true, 
			striped: true, 
			collapsible:true,
			url:"trade/queryList.do",
			sortName: 'tradeid desc', 
			sortOrder: 'desc',
			remoteSort: true, 
			idField:'tradeid', 
			queryParams:{}, 
			pagination:true, 
			rownumbers:true, 
			columns:[[
				//{field:'ck',checkbox:true,width:2}, 
				{field:'trade.custid',title:'Custid',width:20,sortable:true,
					formatter:function(value,row,index){return row.custid;} 
				},
				{field:'trade.custname',title:'Custname',width:20,sortable:true,
					formatter:function(value,row,index){return row.custname;} 
				},
				{field:'trade.identityno',title:'Identityno',width:20,sortable:true,
					formatter:function(value,row,index){return row.identityid;} 
				},
				{field:'trade.gender',title:'Gender',width:30,sortable:true,
					formatter:function(value,row,index){
						return row.gendername;  
					}
				},
				{field:'trade.education',title:'education',width:20,sortable:true,
					formatter:function(value,row,index){return row.eduname;} 
				},
				{field:'trade.state',title:'State',width:20,sortable:true,
					formatter:function(value,row,index){return row.statename;} 
				},
				{field:'trade.city',title:'City',width:20,sortable:true,
					formatter:function(value,row,index){return row.cityname;} 
				},
				{field:'trade.cardtype',title:'Card Type',width:20,sortable:true,
					formatter:function(value,row,index){return row.cardtypename;} 
				},
				{field:'trade.cardno',title:'Card No',width:20,sortable:true,
					formatter:function(value,row,index){return row.cardno;} 
				},
				{field:'trade.tradetype',title:'Trade Type',width:20,sortable:true,
					formatter:function(value,row,index){return row.cardno;} 
				},
				{field:'trade.merchanttype',title:'Merchant Type',width:20,sortable:true,
					formatter:function(value,row,index){return row.merchanttypename;} 
				},
				{field:'trade.merchant',title:'Merchant',width:20,sortable:true,
					formatter:function(value,row,index){return row.merchantname;} 
				},{field:'trade.amount',title:'amount',width:20,sortable:true,
					formatter:function(value,row,index){return row.amount;} 
				}
			]]
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
