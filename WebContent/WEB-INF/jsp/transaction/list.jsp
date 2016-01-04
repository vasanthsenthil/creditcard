<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="jquery,ui,easy,easyui,web">
<meta name="description"
	content="easyui help you build your web page easily!">
<title>

</title>
<script type="text/javascript">

</script>
</head>
<body>
	
	<table id="dg-transaction" title="Credit Cards Management" class="easyui-datagrid" style="width:100%;height:100%"
			url="transaction/queryList.do"
			toolbar="#toolbar" pagination="true" idField="tradeid"
			rownumbers="true" fitColumns="true" singleSelect="true">
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newTrans()">New Transaction</a>
	</div>
		<thead>
			<tr>
				<th field="tradeid" width="50">Transaction ID</th>
				<th field="cardid" width="50">Card ID</th>
				<th field="tadetime" width="70">Trade Date</th>
				<th field="tradetype" width="50" data-options="formatter:function(value,row,index){
						if(row.tradetype == '1') return 'Purchase';
						else if(row.tradetype == '2') return 'Withdraw';
						else if(row.tradetype == '3') return 'Deposit';
						else if(row.tradetype == '4') return 'Refund';
						else if(row.tradetype == '5') return 'Transfer';
						else if(row.tradetype == '6') return 'Other';
						else return '';
					}">Trade Type</th>
				<th field="merchantid" width="50" data-options="formatter:function(value,row,index){
						if(row.merchantid == '100001') return 'Mcdonalds';
						else if(row.merchantid == '100002') return 'Walmart';
						else if(row.merchantid == '100003') return 'Mobil';
						else if(row.merchantid == '100004') return 'Hertz';
						else if(row.merchantid == '100005') return 'Delta';
						else if(row.merchantid == '100006') return 'KFC';
						else if(row.merchantid == '100007') return 'Best Buy';
						else if(row.merchantid == '100008') return 'Pilot';
						else if(row.merchantid == '100009') return 'Target';
						else if(row.merchantid == '100010') return 'United';
						else return '';
					}">Merchant</th>
				<th field="amount" width="50">Amount</th>
			</tr>
		</thead>
	</table>

	
	<div id="dlg-transaction" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
			closed="true" buttons="#dlg-transaction-buttons">
		<div class="ftitle">Transaction Information</div>
		<form id="fm" method="post" novalidate>
			<div class="fitem">
				<label>Card ID:</label>
				<input name="cardid" class="easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>Trade Type:</label>
				<select class="easyui-combobox" name="tradetype" style ="width:200px;">
							<option value="">Please select...</option>
							<option value="1">Purchase</option>
							<option value="2">Withdraw</option>
							<option value="3">Deposit</option>
							<option value="4">Refund</option>
							<option value="5">Transfer</option>
						</select>
			</div>
			<div class="fitem">
				<label>Amount</label>
				<input name="amount"  class="easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>Merchant:</label>
				<select class="easyui-combobox" name="merchantid" style ="width:200px;">
							<option value="">Please select...</option>
							<option value="100001">Mcdonalds</option>
							<option value="100002">Walmart</option>
							<option value="100003">Mobil</option>
							<option value="100004">Hertz</option>
							<option value="100005">Delta</option>
						    <option value="100006">KFC</option>
							<option value="100007">Best Buy</option>
							<option value="100008">Pilot</option>
							<option value="100009">Target</option>
							<option value="100010">United</option>
						</select>
			</div>
		</form>
	</div>
	<div id="dlg-transaction-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="save()" style="width:90px">Save</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">Cancel</a>
	</div>
	<script type="text/javascript">
		var url;
		function newTrans(){
			$('#dlg-transaction').dialog('open').dialog('setTitle','New Transaction');
			$('#fm').form('clear');
			url = 'transaction/insert.do';
		}
		function save(){
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
						$('#dlg-transaction').dialog('close');		// close the dialog
						$('#dg-transaction').datagrid('reload');	// reload the user data
					}
				}
			});
		}
	</script>
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
</body>
</html>