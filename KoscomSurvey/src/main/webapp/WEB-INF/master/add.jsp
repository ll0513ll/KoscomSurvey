<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	    <meta name="description" content="">
	    <meta name="author" content="">
	    <link rel="icon" href="../../favicon.ico">
	
	    <title>설문조사 편집</title>
	
	    <!-- Bootstrap core CSS -->
	    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- Custom styles for this template -->
	    <link href="/css/jumbotron-narrow.css" rel="stylesheet">
	    
	    <!-- sidebar styles for this template -->
	    <link href="/css/dashboard.css" rel="stylesheet">
	
	    
	    <script src="/assets/js/ie-emulation-modes-warning.js"></script>
	    <script src="/assets/js/jquery.min.js"></script>
		<script src="/assets/js/widgets.js"></script>
	    <script src="/bootstrap/js/bootstrap.min.js"></script>
	
	  </head>
	
	  <body>
	  	<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header" style="padding-bottom: 0px;height: 56px;">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">질문 삭제 확인.</h4><br>
		      </div>
		        <div class="modal-body" style="text-align:center;">
		        	<input type="hidden" name="modalDel" value="">
			        <h5 style="margin-top: 30px;">해당 질문을 삭제 할 경우 관련 설문이 모두 삭제됩니다.</h5><br>
			        <h5>삭제 하시겠습니까?</h5>
			        <div class="buttonBox" style="margin-top:10%;margin-bottom: 5%;">
					  
					  	<button type="button" onclick= "delQues()" class="btn btn-warning">삭제</button>
					  	<button type="button" data-dismiss="modal" aria-label="Close" class="btn btn-default" style="margin-left: 10px;">취소</button>
					  
				    </div>
				  </div>
		     </div>
		    </div>
		   </div>
	
	    <div class="container" style="margin-top:30px;">
	      <div class="navbar navbar-inverse navbar-fixed-top" style="background-color: white;">
	        <nav>
	          <ul class="nav nav-pills pull-right" style=" margin-right: 330px;">
	            <li role="presentation" class="active" style="margin-top: 20px;"><a href="/cateEdit/">Edit</a></li>
	            <li role="presentation" style="margin-top: 20px;"><a href="/survey/">Survey</a></li>
	          </ul>
	        </nav>
		    <h4 class="text-muted">
		    	<img src = "/assets/images/KoscomLogo.PNG" 
		         	 style = "width: 14rem; height: 4rem;flot:left;margin-bottom: 1%;">
		       	 설문조사 편집
		    </h4>
	      </div>
	      <div class = "row">
		      <div class="col-sm-3 col-md-2 sidebar" style="margin-top:30px;">
		          <ul class="nav nav-sidebar">
		            <li><a href="/cateEdit/">카테고리 편집 <span class="sr-only">(current)</span></a></li>
		            <li class="active"><a href="/quesEdit/quesList">질문 편집</a></li>
		            <li><a href="/master/surveyManage">설문조사 관리</a></li>
		          </ul>
	         </div>
		
		      <div class="jumbotron">
		      	<h2 style="color: #646464;">${cateVo.cateName}</h2>
		      	<p></p>
		        <h3 style="font-weight: normal;">질문 제목</h3>
		        	<p><input type="text" id="Qtitle" name="Qtitle" style = "width: 600px;" value=""></p>
		        	<input type="radio" name="Qtype" checked="checked" value="1"style="font-size:8px !important;"/> 객관식 &nbsp;&nbsp;&nbsp; 
	  				<input type="radio" name="Qtype" value="2" style="font-size:8px !important;" /> 주관식
	  				<p></p>
		        <div id = "addBtnDiv" style = "text-align: center; padding-top: 10px;"><a class="btn btn-warning" id="addBtn" role="button">추가하기</a></div>
		      </div>
			 <form method="post" class="quesList-form" action="${pageContext.request.contextPath}/survey/">
		      <div class="row marketing">
		      	<div class = "selectCate" style="margin-bottom: 3%;" >
		      		<label for="cate" style="font-size:1.5em;">카테고리 선택</label>
		      		<select class="form-control" id = "selectCate" name = "selectCate">
		      		  <c:forEach var = "cateList" items = "${cateList}"  varStatus="status">
						  <option id = "selCateName" value="${cateList.cateNo}">${cateList.cateName}</option>
					  </c:forEach>
					</select>
		      	</div>
		        <div class="col-lg-6" >
		          <h4>주관식</h4>
		          <p style="margin-top: 20px;"></p>
		          <div  id = "quesList2">
				          <c:forEach var = "vo" items = "${quesList}"  varStatus="status">
				      		<c:if test="${vo.type eq 2 }">
							          <p><input class = "Qchoice" name = "quesName[]" value="${vo.quesNo}" type="checkbox">&nbsp;&nbsp;&nbsp;${vo.quesName}</p>
									 
							</c:if> 
			        	 </c:forEach>
			        </div>
			        </div>
			        <div class="col-lg-6" > 
			          <h4>객관식</h4>
			          <p style="margin-top: 20px;" ></p>
			          <div id = "quesList1">
				          	<c:forEach var = "vo" items = "${quesList}"  varStatus="status">
				          		<c:if test="${vo.type eq 1 }">
					          		<p><input class = "Qchoice" name = "quesName[]" value="${vo.quesNo}" type="checkbox">&nbsp;&nbsp;&nbsp;${vo.quesName}</p>
			  	          	    </c:if>
				          	 </c:forEach>
			           </div>
			        </div>
		      </div>
	          <div class = "buttonBox" style="margin-left: 40%;margin-top:10%;margin-bottom: 5%;">
				  
				  	<button type="submit" class="btn btn-warning">생성하기</button>
				  	<button type="button" id = "ques_del" class="btn btn-default" style="margin-left: 10px;">삭제</button>
				  
			  </div>
			 </form>
		  </div><!-- /row -->
	      <footer class="footer">
	        <p>Koscom 만족도 설문 조사</p>
	      </footer>
	
	    </div> <!-- /container -->
	
	
	    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	    <script src="/assets/js/ie10-viewport-bug-workaround.js"></script>
	  	<script type="text/javascript">
	  	
	  //추가버튼 누를때
	  $(document).ready(function(){
		  var selectCate = $("#selectCate option:selected").val();
		  
		  $("#addBtn").on("click",function(){

	        	console.log("추가버튼됨");
	        	
	            report = {
			              quesName: $("#Qtitle").val(),
			              type: $("input[name=Qtype]:checked").val()
	            		 };
	            
	            console.log(report);
	            
	            $.ajax({
	                url: "/quesEdit/addQues",
	                type: "post",
	                data : report,
	                dataType: "json",
	                success: function (result) {

	                	if(result==1){
	                        alert("질문 추가 완료");
	                        getQuesList();
	                       
	                	}
	                },
	                error: function () {
	                	 alert("카테고리 추가에 실패했습니다.");
	                }
	            })
		  });
		  
  		});
	// 카테고리 추가/삭제 후 카테고리 리스트 호출.
	  function getQuesList(){
         
        	  console.log("추가/삭제 후 새로고침");
          	
        	  $.ajax({
                   url : "/quesEdit/ajaxQuesList",
                   type : "get",
                   dataType : "json",
                   success : function(quesList) {
                      		 console.log("추가완료하고 리스트가져오기 성공")
                      		 $("#quesList1").empty();
                      		 $("#quesList2").empty();
                      		 $("input[name='Qtype']").checked = false;
                      		 $("input[name='Qtitle']").val("")
                      		 
                      		  console.log(quesList);
                      		 
                      		for (var i = 0; i < quesList.length; i++) {
                      			if(quesList[i].type == 2){
                      				renderApplied2(quesList[i])
                      			} else if(quesList[i].type == 1) {
                      				renderApplied1(quesList[i])
                      			}
                      		 }
                      		
                   		},
                    error : function(request, status, error) {
                       alert("code:" + request.status + "\n"+ "message:"+ 
                    		 request.responseText + "\n"+ "error:" + error);}

               		 });
        	  
        	  //질문 리스트 그리기 type.val(1).
        	  function renderApplied1(quesList) {
        		  var str = "";
            		  str += "<p><input class='Qchoice' id ='Qchoice' name='quesName' value='"+ quesList.quesNo +"' type='checkbox'>&nbsp;&nbsp;&nbsp;" + quesList.quesName + "</p>";
                  $("#quesList1").append(str);
            		  
        	  }
        	  //질문 리스트 그리기 type.val(2).
        	  function renderApplied2(quesList) {
        		  var str = "";
            		  str += "<p><input id ='Qchoice' name='quesName' value='"+ quesList.quesNo +"' type='checkbox'>&nbsp;&nbsp;&nbsp;" + quesList.quesName + "</p>";
                  $("#quesList2").append(str);
        	  }
        	  
          }
	  
	  //삭제버튼 누를때	  	
      $("#ques_del").click(function() { 
    	    console.log("삭제모달");
    	    var quesNo = [];
    	    $("input[name=quesName]:checked").each(function(i, e) {
    	    	quesNo[i] = $(this).val();
    	    });
    	    
    	    if(quesNo == [null]){
    	    	  alert("질문을 선택해 주세요.");	
    	    }//체크한 값이 없으면 띄우기
        	
    	    console.log(quesNo);
    	    $("input[name=modalDel]").val(quesNo);
    	    $("#myModal").modal();
    	});
	  
	//삭제 모달내부 삭제버튼 누를때 
      function delQues(){
    	  
    	  console.log("삭제버튼 누르고 스크립트");
    	  var delQuesList = [];
    	    $("input[name=quesName]:checked").each(function(i, e) {
    	    	delQuesList[i] = $(this).val();
 	    	});
    	    console.log(delQuesList);
    	  
    	  $.ajax({
              url: "/quesEdit/delQues",
              type: "POST",
              data : {"delQuesList" : delQuesList},
              dataType: "json",
              success: function (result) {
				console.log(result)
              	if(result>=1){
              		 $("#myModal").modal("hide")
                     getQuesList();
              	}
              },
              error: function () {
            	  alert("질문 삭제에 실패했습니다.");
            	
              }
          })
    	  
      }
	  	
	  	</script>
	
	</body>

</html>