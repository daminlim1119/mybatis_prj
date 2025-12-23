<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html lang="en" data-bs-theme="auto">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<title>jsp template</title>

<script src="http://192.168.10.90/jsp_prj/common/color-modes.js"></script>
<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB">

<link rel="shortcut icon" href="http://192.168.10.90/jsp_prj/common/images/favicon.ico">

<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<!-- bootstrap CDN 끝 -->


<meta name="theme-color" content="#712cf9">
<link href="http://192.168.10.90/jsp_prj/common/css/carousel.css" rel="stylesheet">
<jsp:include page="../fragments/bootstrap_css.jsp"/>
<style type="text/css">
#wrap{  margin: 0px auto; width: 1200px; height: 1000px; }	
#header{ height: 150px;	 }	
#container{ height: 700px;	 }	
#footer{ height: 150px;}	
</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://code.jquery.com/ui/1.14.1/jquery-ui.js"></script>


 <!-- summernote시작 -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
     <link href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.js"></script>
 
 

	  <script type="text/javascript">
	  $(function(){
	        $('#content').summernote({
	          placeholder: '아무말이나 입력하라둥',
	          tabsize: 2,
	          height: 300,
	          toolbar: [
	              // [groupName, [list of button]]
	              ['style', ['bold', 'italic', 'underline', 'clear']],
	              ['font', ['strikethrough']],
	              ['fontsize', ['fontsize']],
	              ['color', ['color']],
	              ['para', ['ul', 'ol', 'paragraph']],
	              ['height', ['height']],
	              ['insert',['link','picture']]
	            ]
	        });
	  });//ready
	  </script>
  
  
	  <script type="text/javascript">
	/*   $(function(){
	  	$("#btn").click(submit())
	  }) */
	  function submit(){
	  	$("#form").submit();//form control 안의 값들이 백엔드로 전송
	  }
	  </script>
	  
	  <script type="text/javascript">
	
	  
	  
	  $(function(){
		$("#btnWrite").click(function(){
			//제목과 내용에 값이 있는지 유효성 검증
			if($("#title").val()==""){
				alert("제목은 필수 입력입니다.");
				$("#title").focus();
returnl
			}//end if
			
			if($("#content").val()==""|| $("#content".val()=="<p></p>"){
				alert("내용은 필수입력입니다.");
			})//end if
			
			$("#frm").submit();
			
		})
		  
	  })//click
	  
	  </script>
  


</head>
<body>
	<svg xmlns="http://www.w3.org/2000/svg" class="d-none"> <symbol
			id="check2" viewBox="0 0 16 16"> <path
			d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"></path> </symbol> <symbol
			id="circle-half" viewBox="0 0 16 16"> <path
			d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"></path> </symbol> <symbol
			id="moon-stars-fill" viewBox="0 0 16 16"> <path
			d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"></path> <path
			d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"></path> </symbol> <symbol
			id="sun-fill" viewBox="0 0 16 16"> <path
			d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"></path> </symbol> </svg>
	<header data-bs-theme="dark">
		<jsp:include page="../fragments/header.jsp"/>
	</header>
	<main>
		
		<!-- Marketing messaging and featurettes
  ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->
		<div class="container marketing">
			<!-- Three columns of text below the carousel -->
		
			<!-- /.row -->
			<!-- START THE FEATURETTES -->
			<hr class="featurette-divider">
	
			<hr class="featurette-divider">
			<div class="row featurette">
				<div class="col-md-7 order-md-2">
					<h2>아무말 대잔치 글쓰기</h2>
					<form action="boardWriteFrmProcess.jsp" method="post" name="frm" id="frm">
					<table>
					<tr>
					<td>제목</td>
					<td><input type="text" name="title" style="width:40px"></td>
					</tr>
					<tr>
					<td>내용</td>
					<td><textarea name="content" id="content"></textarea></td>
					</tr>
					<tr>
					<td>ID/IP</td>
					<td><c:out value="${sessionScope.userId }"/>/<%=request.getRemoteAddr() %></td>
					</tr>
					<tr>
					<td colspan="2" style="text-align:center;">
					<button onclick="submit()" class="btn btn-success">글쓰기</button>
					<a href="http://localhost/jsp_prj/board/boardList.jsp?currentPage=${param.currentPage}">리스트</a>
					</table>
					</form>
				</div>
				
			</div>
			<hr class="featurette-divider">
			
			<hr class="featurette-divider">
			<!-- /END THE FEATURETTES -->
		</div>
		<!-- /.container -->
		<!-- FOOTER -->
		<footer class="container">
			<jsp:include page="../fragments/footer.jsp"/>
		</footer>
	</main>

</body>
</html>