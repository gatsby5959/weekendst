<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="value" value="10"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="true"><!-- 무조건출력 조건이 트루 -->
		<h4>이문장은 항상 출력됩니다</h4><hr/>
	</c:if>
	
	<h3>value의 값이 10이상인지 검사</h3>
	<c:if test="${value>=10 }" var="over10"><!-- 조건 value값이 10보다 큼 -->
		<h4>-value:<c:out value="${value}"></c:out></h4>
		<h4>-value의 값은 10이상?:<c:out value="${over10}"/></h4><hr/><!-- 조건의 결과값이 EL변수에 저장 -->
	</c:if>

	<h3>value의 값이 10미만인지 검사</h3><br/>
	<c:if test="${value<10 }" var="under10"><!-- 해당조건은 만족하지 않으므로 조건은 만족하지 않습니다 -->
		<h4>-value:<c:out value="${value}"/></h4><hr/>
		<h4>-value의 값은 10미만?:<c:out value="${under10}"/></h4><hr/>
	</c:if>

</body>
</html>