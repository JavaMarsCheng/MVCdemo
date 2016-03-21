<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MVC Tutorial</title>
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<!-- Bootstrap -->
<link href="${ctx }/resources/css/kendoUI/kendo.bootstrap.min.css" rel="stylesheet">
<link href="${ctx }/resources/css/kendoUI/kendo.common.min.css" rel="stylesheet">

<script src="${ctx }/resources/js/lib/jquery-2.1.4.min.js"></script>
<script src="${ctx }/resources/js/lib/kendoUI/kendo.web.min.js"></script>
</head>
<body>
	<div id="grid" data-role="grid" style="height:200px" 
		data-columns="[{
                         field:'id',
                         title: 'ID'
                       }, {
                         field: 'name',
                         title: 'NAME'
                       }, {
                         field: 'birthday',
                         title: 'BIRTHDAY',
                   		 template: '#:kendo.toString(new Date(birthday) , \'yyyy-MM-dd\')#'
                       },{
                       	 field: 'gender',
                       	 title: 'GENDER'
                       }]" 
        data-bind="source: list"></div>
</body>
<script type="text/javascript">

$(document).ready(function() {
	var viewModel = kendo.observable({
    	list : new kendo.data.DataSource({
    		transport:{
				read: {
					url: "${ctx}/student/list.json",
					dataType: "json",
					type: "get"
				}
			},
			schema:{
				model:{
					id:'id',
					fields:{
						name:{type: 'string'},
						birthday: {type: 'number'},
						gender: {type: 'string'}
						
					}
				}
				
			}
    	})
    });         
	kendo.bind('body', viewModel);
})
</script>
</html>