<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/admin/main.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/validate/main.css"/>
</head>
<body>
<div id="content">
	<h3 class="admin_link_bar">
		<jsp:include page="inc.jsp"></jsp:include>
	</h3>
	<table width="800" cellspacing="0" cellPadding="0">
		<thead><tr><td colspan="2">查询系功能：系id[${department.id }]</td></tr></thead>
		<tr>
			<td class="rightTd" width="200px">系名称:</td><td class="leftTd">${department.name }&nbsp;</td>
		</tr>
		<tr>
			<td class="rightTd">系描述:</td><td class="leftTd">${department.descr }&nbsp;</td>
		</tr>
		<tr>
			<td class="rightTd">系中的所有人员:</td>
			<td>
				<c:forEach items="${us }" var="u">
					<a href="<%=request.getContextPath()%>/admin/people/${u.id}" class="list_op">[${u.nickname }]</a>&nbsp;
				</c:forEach>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="centerTd"><a href="update/${department.id }" class="list_op">修改系</a></td>
		</tr>
	</table>
</div>
</body>
</html>