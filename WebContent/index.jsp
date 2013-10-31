<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="jquery,ui,easy,easyui,web">
<meta name="description"
	content="easyui help you build your web page easily!">
<title>Create Tabs - jQuery EasyUI Demo</title>
<link rel="stylesheet" type="text/css" href="css/default/easyui.css">
<link rel="stylesheet" type="text/css" href="css/icon.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout" style="height: 100%; width: 100%;">
	<div data-options="region:'north'" style="height: 30%; width: 100%"></div>
	<div data-options="region:'south',split:true" style="height: 30%;"></div>
	<div data-options="region:'east',split:true" title="East"
		style="width: 70%;"></div>
	<div data-options="region:'west',split:true" title="West" style="width: 100%;">
		<div style="margin-bottom:10px">
		<a href="#" class="easyui-linkbutton" onclick="addTab('google','http://www.baidu.com/')">google</a>
		<a href="#" class="easyui-linkbutton" onclick="addTab('jquery','http://jquery.com/')">jquery</a>
		<a href="#" class="easyui-linkbutton" onclick="addTab('easyui','http://jeasyui.com/')">easyui</a>
		</div>
	</div>
	<div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">
		<div id="tt" class="easyui-tabs" style="overflow:hidden;">
		</div>
	</div>
	<script>
		function addTab(title, url){
			if ($('#tt').tabs('exists', title)){
				$('#tt').tabs('select', title);
			} else {
				var content = '<iframe scrolling="no" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
				$('#tt').tabs('add',{
					title:title,
					content:content,
					closable:true
				});
			}
		}
	</script>
</body>
</html>