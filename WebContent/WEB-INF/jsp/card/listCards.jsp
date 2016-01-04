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
	
	<table id="dg-card" title="Credit Cards Management" class="easyui-datagrid" style="width:100%;height:100%"
			url="card/listCards.do"
			toolbar="#toolbar" pagination="true" idField="cardid"
			rownumbers="true" fitColumns="true" singleSelect="true">
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newCard()">New Card</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editCard()">Edit Card</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyCard()">Remove Card</a>
	</div>
		<thead>
			<tr>
				<th field="cardno" width="50" >Card  No</th>
				<th field="opendate" width="50">Open Date</th>
				<th field="expiredate" width="50">Expire Date</th>
				<th field="cardtype" width="50" data-options="formatter:function(value,row,index){
						if(row.cardtype == '1') return 'Visa';
						else if(row.cardtype == '2') return 'Mastercard';
						else if(row.cardtype == '3') return 'AMEX';
						else if(row.cardtype == '4') return 'Discover';
						else if(row.cardtype == '5') return 'JCB';
						else if(row.cardtype == '6') return 'UnionPay';
						else if(row.cardtype == '7') return 'Other';
						else return '';
					}">Card Type</th>
				<th field="cardstatus" width="50" data-options="formatter:function(value,row,index){
						if(row.cardstatus == '1') return 'Normal';
						else if(row.cardstatus == '2') return 'Limited';
						else if(row.cardstatus == '3') return 'Frozen';
						else if(row.cardstatus == '4') return 'Cancelled';
						else if(row.cardstatus == '5') return 'Other';
						else return '';
					}">Card Status</th>
				<th field="accountno" width="50">Account No</th>
			</tr>
		</thead>
	</table>

	
	<div id="dlg-card" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
			closed="true" buttons="#dlg-card-buttons">
		<div class="ftitle">Card Information</div>
		<form id="fm" method="post" novalidate>
			<div class="fitem">
				<label>Card No:</label>
				<input name="cardno" class="easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>Card Type:</label>
					<select class="easyui-combobox" name="cardtype" style ="width:150px;" required="true">
							<option value="">Please select...</option>
							<option value="1">Visa</option>
							<option value="2">MasterCard</option>
							<option value="3">AMEX</option>
							<option value="4">Discover</option>
							<option value="5">JCB</option>
							<option value="6">UnionPay</option>
						</select>
			</div>
			<div class="fitem">
				<label>Account No:</label>
				<input name="accountno" class="easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>CVV</label>
				<input name="cvv"  class="easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>PASSWORD</label>
				<input name="password"  class="easyui-textbox" required="true">
			</div>
		</form>
	</div>
	<div id="dlg-card-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveCard()" style="width:90px">Save</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg-card').dialog('close')" style="width:90px">Cancel</a>
	</div>
	<script type="text/javascript">
		var url;
		function newCard(){
			$('#dlg-card').dialog('open').dialog('setTitle','New Card');
			$('#fm').form('clear');
			url = 'card/newCard.do';
		}
		function editCard(){
			var row = $('#dg-card').datagrid('getSelected');
			if (row){
				$('#dlg-card').dialog('open').dialog('setTitle','Edit Card');
				$('#fm').form('load',row);
				url = 'card/updateCard.do?id='+row.cardid;
			}
		}
		function saveCard(){
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
						$('#dlg-card').dialog('close');		// close the dialog
						$('#dg-card').datagrid('reload');	// reload the Card data
					}
				}
			});
		}
		function destroyCard(){
			var row = $('#dg-card').datagrid('getSelected');
			if (row){
				$.messager.confirm('Confirm','Are you sure you want to destroy this card?',function(r){
					if (r){
					
						$.post('card/deleteCard.do',{id:row.cardid},function(result){
							if (result.success){
								$('#dg-card').datagrid('reload');	// reload the Card data
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