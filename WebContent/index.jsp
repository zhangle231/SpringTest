<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="jquery,ui,easy,easyui,web">
<meta name="description" content="easyui help you build your web page easily!">
<title>首页</title>
<link rel="stylesheet" type="text/css" href="css/default/easyui.css">
<link rel="stylesheet" type="text/css" href="css/icon.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout">
    <div data-options="region:'north', border:false" style="height:100px;">
        <img alt="畅游Mongo" src="/SpringTest/image/header.png" style="height:100px;width:260px;">
    </div>
    <div data-options="region:'south', border:false" style="height:5px;"></div>
    <div data-options="region:'east',title:'East',split:true" style="width:100px;"></div>
    <div data-options="region:'west',title:'West',split:true" style="width:200px;">
        <div title="Tree Menu">
	        <ul id="tt1" class="easyui-tree">
	            <li>
	            <a href="#" onclick="addTab('table','table.jsp')">table</a>
	            </li>
	        </ul>
        </div>
    </div>
    <div data-options="region:'center',title:'center title'" style="padding:2px;background:#eee;">
	    <div id="tt" class="easyui-tabs" data-options="fit:true" style="">
	    </div>
    </div>
    <script>
        function addTab(title, url){
            if ($('#tt').tabs('exists', title)){
                $('#tt').tabs('select', title);
            } else {
                var content = '<iframe scrolling="yes" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
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