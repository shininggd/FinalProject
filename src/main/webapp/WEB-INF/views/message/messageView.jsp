<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

	<h3>제목 : ${dto.title }</h3>
	<h3>보낸사람 : ${dto.sender }</h3>
	<h3>보낸날짜 : ${dto.reg_date }</h3>
	<h3>${dto.contents}</h3>