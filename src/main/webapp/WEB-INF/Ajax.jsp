<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>您好Springboot</title>
<script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
<!--编辑jQuery  -->
<script type="text/javascript">
	$(function() {
		$.ajax({
			type:"get",
			url:"/ajaxFindUser",
			data:"id=1&name=tomcat",
			success:function(result){
				alert("实现ajax请求");
				},
			error:function(){
				alert("请求失败");
				}
			});


		
		$.get("/ajaxFindUser", 
			{id : 100}, 
			function(result) {
				alert("请求成功")
				var tr = null;
				$(result).each(function(index,user){
				var id = user.id;
				var name = user.name;
				var age = user.age;
				var sex = user.sex;
				/* tr += "<tr align='center'><td>"+id+"</td><td>"+name+"</td><td>"+age+"</td><td>"+sex+"</td></tr>" */	
				tr +=" <tr align='center'> <td>"+id+" </td><td>"+name+" </td><td>"+age+" </td><td>"+sex+" </td></tr>"	
					})
					$("#tb1").append(tr);
				},"json");
			
	});
</script>
</head>
<body>
	<table id="tb1" border="1px" width="65%" align="center" cellspacing="0">
		<tr>
			<td colspan="6" align="center"><h3>学生信息</h3></td>
		</tr>
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>年龄</th>
			<th>性别</th>
		</tr>

		<%-- <c:forEach items="${userList}" var="u">
			<tr>
				<th>${u.id}</th>
				<th>${u.name}</th>
				<th>${u.age}</th>
				<th>${u.sex}</th>
			</tr>
		</c:forEach> --%>
	</table>
</body>
</html>