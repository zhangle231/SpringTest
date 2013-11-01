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
    <div>
        <table id="dg" title="My Users" class="easyui-datagrid"
            toolbar="#toolbar" 
            rownumbers="true" 
            fitColumns="true" 
            singleSelect="true">
            <thead>
                <tr>
                    <th field="account" width="50">account</th>
                    <th field="charName" width="50">charName</th>
                    <th field="ip" width="50">ip</th>
                    <th field="ruleName" width="50">ruleName</th>
                    <th field="date" width="50">date</th>
                </tr>
            </thead>
        </table>
        <div id="toolbar" style="padding:5px;height:auto">
	        <div>
	            account: <input id="account" style="width:80px">
	            charName: <input id="charName" style="width:80px">
	            ip: <input id="ip" style="width:80px"> <hr>
	            ruleName: <input id="ruleName" style="width:80px">
	            date: <input id="date" style="width:80px">
	            <a href="#" class="easyui-linkbutton" onclick="searchTable()" iconCls="icon-search">Search</a>
	        </div>
        </div>
    </div>
    <script>
        function searchTable(){
            var account = $("#account").val();
            var charName = $("#charName").val();
            var ip = $("#ip").val();
            var ruleName = $("#ruleName").val();
            var date = $("#date").val();
            console.log(account + charName + ip + ruleName + date);
            $.get("Table",{
            	   account:account,
            	   charName:charName,
            	   ip:ip,
            	   ruleName:ruleName,
            	   date:date,
            	  },function(data, textStatus){
                      var obj = data;
                      $('#dg').datagrid({
                          data:obj
                      });
            	  },"json");
        }
    </script>
</body>
</html>