<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript">
	jQuery.ajaxSetup({
		cache : false
	});
	jQuery(function($) {

	});

	function setmain(title, href) {
		//$(".combo-panel").parent(".panel").remove(); //清楚所有class为combo-panel的class为panel的父元素，解决combobox在页面缓存的问题
		var centerURL = href;
		var centerTitle = title;
		$('body').layout('panel', 'center').panel({
			title : "location：" + centerTitle,
			href : centerURL
		});
	    $('body').layout('panel', 'center').panel('refresh');
		return false;
	}

	
	function showWindow(options) {
		jQuery("#MyPopWindow").window(options);
	}
	
	function closeWindow() {
		$("#MyPopWindow").window('close');
	}
</script>
</head>

<body class="easyui-layout" id="mainBody">
	<!-- up -->
	<div region="north" split="false"
		style="height: 100px; text-align: center;" border="false">
		<h1>welcome： ${user}</h1>
	</div>

	<!-- left-->
	<div region="west" class="menudiv" split="true" title="Menu"
		style="width: 200px; overflow: hidden;">
		<div id="menuDiv" class="easyui-accordion" fit="false" border="false"
			animate="false">
			<div title="Customer Management" style="overflow: hidden;">

					<ul>					
						<li id="rightLi${child.id}" style="cursor: pointer;" 
							onclick="setmain('Customer maintain','${ctx}/customer/list.do')" >Customer Maintain</li>
					</ul>	

			</div>
			<div title="Account Management" style="overflow: hidden;">
				<ul>
					<li id="rightLi${child.id}" style="cursor: pointer;" 
							onclick="javascript:setmain('Account management','${ctx}/account/listAccount.do');" >Account Management</li>
					
				</ul>
			</div>
			<div title="Credit Card Management" style="overflow: hidden;">
				<ul>
					<li id="rightLi${child.id}" style="cursor: pointer;" 
							onclick="setmain('Credit Card anagement','${ctx}/card/list.do')" >Credit Card Management</li>
				</ul>
			</div>
			<div title="Transaction Management" style="overflow: hidden;">
				<ul>
					<li id="rightLi${child.id}" style="cursor: pointer;" 
							onclick="setmain('Transaction','${ctx}/transaction/list.do')" >Transaction Management</li>
				</ul>
			</div>
			<div title="Combo-Query" style="overflow: hidden;">
				<ul>
					<li id="rightLi${child.id}" style="cursor: pointer;" 
							onclick="setmain('Combo-Query','${ctx}/trade/list.do')" >Combo-Query</li>
				</ul>
			</div>
		</div>
	</div>

	<!-- 中 -->
	<div region="center" class="maindiv" title="location: firstPage"
		style="overflow-x: hidden; padding: 0px;"></div>
	<div id="MyPopWindow" modal="true" shadow="false" minimizable="false"
		cache="false" maximizable="false" collapsible="false"
		resizable="false" style="margin: 0px; padding: 0px; overflow: auto;"></div>
</body>
</html>
