<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "MethodTest.InstanceMethod" %>
<%
	InstanceMethod instanceMethod = new InstanceMethod();
	request.setAttribute("usingMethod",instanceMethod);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 인스턴스 메서드 사용</title>
</head>
<body>
	<h3>instanceMethod 객체의 setData 메서드 사용<br/>
	${usingMethod.setData(10)}
	메서드 호출 완료</h3><hr/>
	
	<h3>instanceMethod 객체의 getData 메서드 사용<br/>
	메서드 호출 결과 : ${usingMethod.getData()}</h3><hr/>
	
	<h3>instanceMethod 객체의 다중 입력 파라미터를 사용하는 getAddData 메서드 사용
	<br/>
	메서드 호출 결과 : ${usingMethod.getAddData(usingMethod.getData(),3)}
	</h3><hr/>
	
	<h3>instanceMethod 객체의 배열 반환 getArrayData 메서드 사용<br/>
	메서드 호출 결과 : ${usingMethod.getArrayData(usingMethod.getData(),3)} <!-- 이렇게는 배열안의 값이 안보임 -->
	</h3><hr/>
	
	<h3>instanceMethod 객체의 배열 반환 getArrayData 메서드를 통해 반환된 배열 사용<br/>
	0번 인덱스 값 : ${usingMethod.getArrayData(usingMethod.getData(),3)[0]}<!-- 이렇게 해야 값이 보임 배열안에 값이 -->
	<br/>
	1번 인덱스 값 : ${usingMethod.getArrayData(usingMethod.getData(),3)[1]}
	<br/>
	2번 인덱스 값 : ${usingMethod.getArrayData(usingMethod.getData(),3)[2]}
	</h3>
</body>
</html>