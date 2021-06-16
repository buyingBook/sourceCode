<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix= "c" uri= "http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
 	
 	<link href="${pageContext.request.contextPath}/static/mypage.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body>

	<form action="/front/mypage/mypage" method="post">
    <div class="main_container">
      <div class ="main_column">
        <div class="main_box">
          <div class="main_box_header">내정보</div>
          <div class="main_box_content">
          <dl>
            <dt>성명</dt>
            <dd>${member.memberName}</dd>
            <dt>ID</dt>
            <dd>${member.memberId}</dd>
            <dt>PWD</dt>
            <dd>${member.memberPwd}</dd>
            <dt>학과</dt>
            <dd>${member.memberMajor}</dd>
            <dt>학번</dt>
            <dd>${member.memberNo}</dd>
            <dt>학년</dt>
            <dd>${member.memberYear}</dd>
          </dl>
          
          </div>
        </div>
	
        <div class="main_box">
          <div class="main_box_header">구매 내역</div>
          <div class="main_box_content">

			
			<c:forEach var="purchaseList" items="${purchaseLists}">
			
            <ul class="shopping_basket">
              <li class="shopping_basket_content">
                <div class="shopping_basket_img"><img src="${purchaseList.imageURL}"  width="120" height="120"></div>
                <div class="shopping_basket_info">
             	 	<dl>
					 <dt>도서 제목</dt>
                 	 <dd>${purchaseList.bookName}</dd>
                 	 <dt>구매 날짜</dt>
                 	 <dd>${purchaseList.buyDate}</dd>
                	 <dt>도서 가격 (원)</dt>
                 	 <dd>${purchaseList.bookPrice}</dd>
                 	 <dt>저자</dt>
                 	 <dd>${purchaseList.bookAuthor}</dd>
					</dl>
                </div>
              </li>
            </ul>
            
            </c:forEach>
            
		</div>
      </div>  
     </div>
      <div class ="main_column">

         <div class="main_box">
          <div class="main_box_header">장바구니</div>
          <div class="main_box_content">
          
          <c:forEach var="shoppingList" items="${shoppingLists}">
          
             <ul class="shopping_basket">
              <li class="shopping_basket_content">
                <div class="shopping_basket_img"><img src="${shoppingList.imageURL}"  width="120" height="120"></div>
                <div class="shopping_basket_info">
                	<dl>
                  <dt>도서 제목</dt>
                  <dd>${shoppingList.bookName}</dd>
                  <dt>도서 가격 (원)</dt>
               	  <dd>${shoppingList.bookPrice}</dd>
               	  </dl>
                </div>
              </li>
            </ul>
            
          </c:forEach>
         
          </div>
        </div>

        <div class="main_box">
          <div class="main_box_header">내가 쓴 글</div>
          <div class="main_box_content">
            
          </div>
        </div>

      </div>
    </div>
	</form>
</body>
</html>