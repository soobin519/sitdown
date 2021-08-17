<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
const message = '${ msg }';
alert(message);
location.href = '/';
	
</script>