<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet" type="text/css" href="css/black/easyui.css">
<link rel="stylesheet" type="text/css" href="css/icon.css">
<link rel="stylesheet" type="text/css" href="css/demo.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout" style="height: 100%; width: 100%;">
	<div data-options="region:'north'" style="height: 30%; width:100%"></div>
	<div data-options="region:'south',split:true" style="height: 30%;"></div>
	<div data-options="region:'east',split:true" title="East" style="width: 70%;"></div>
	<div data-options="region:'west',split:true" title="West" style="width: 70%;"></div>
	<div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">
		<h1>欢迎使用</h1>
	</div>
</body>
</html>