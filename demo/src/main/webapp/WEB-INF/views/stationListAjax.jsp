<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/fmt' prefix='fmt' %>
<option>하차역을 선택해주세요 </option>
<c:forEach items="${stationList}" var="station">
     <option value="${station.id}"><c:out value="${station.station}역 하차"/></option>
</c:forEach>