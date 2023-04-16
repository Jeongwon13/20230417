<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.controller.*, java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
	
	</header>
    <main>
    	<form action="${contextPath}/board/selectOne" method="POST">
    		<input type="text" name="inputSearch" id="inputSearch">
    		<button id="inputSearchBtn">검색</button><br><br>
    	</form>
    	
    	
  		<a href="${contextPath}/board/boardForm" class="boardFormBtn"><button>글쓰기</button></a>
 
        <a href=><button>삭제</button></a>
        <table border="1px solid black">
            <thead>
                <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>날짜</th>
                <th>조회수</th>
            </tr>
            </thead>
            <tbody id="tbody1">
             
            
                <c:choose>
               
                	<c:when test="${empty list}">
               	 <tr>
            		<td colspan="5">검색 결과가 없습니다.</td>
            	</tr>
               		
              	
               	</c:when>
            	<c:otherwise>
            		<c:forEach var="board" items="${list}">
                		<tr>	 
                		 
                			<td><a href="${contextPath}/board/boardDetail?num=${board.num}">${board.num}</a>
                			<td><a href="${contextPath}/board/boardDetail?num=${board.num}">${board.title}</a></td>
                			<td><a href="${contextPath}/board/boardDetail?num=${board.num}">${board.writer}</a></td>
                			<td><a href="${contextPath}/board/boardDetail?num=${board.num}">${board.regdate}</a></td>
                			<td><a href="${contextPath}/board/boardDetail?num=${board.num}">${board.cnt}</a></td>
                		</tr>
                		</c:forEach>
            	</c:otherwise>
                </c:choose>
            </tbody>
        </table>

    </main>
 
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   
  
    <script src="${contextPath}/resources/js/boardForm.js"></script>

</body>
</html>