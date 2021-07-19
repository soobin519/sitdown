<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/fmt' prefix='fmt' %>
<option value="">열차를 선택해주세요 </option>
<c:forEach items="${trainInfo}" var="train">
     <option value="${train.trainNo}" statnNm="${train.statnNm}" statnTnm="${train.statnTnm}"><c:out value="위치: ${train.statnNm} / ${train.statnTnm}행"/></option>
</c:forEach>