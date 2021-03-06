<%@page import="com.startup.qline.domain.TypeOfAnswer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta content="indexLayout" name="decorator">
</head>

<body>
	<div id="main">
		<div id="container">
			<div id="form">
				
			</div>
		</div>

	</div>

	<script>
		$(document).ready(function() {
			$('#addQuestionForm').on('submit', function() {
				$.post({
					url : '${pageContext.request.contextPath}/addQuestion',
					data : $('#addQuestionForm').serialize(),
					success : function() {
						window.location.reload();
					},
					error : function(ex) {
						console.log(ex);
						alert("An error has occured. Please try again later.");
					}
				});
			});
		});
	</script>
</body>
</html>