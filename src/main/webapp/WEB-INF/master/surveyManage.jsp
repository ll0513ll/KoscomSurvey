<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
	    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
	    <script src="/assets/js/ie-emulation-modes-warning.js"></script>
	    <script src="/assets/js/jquery.min.jsp"></script>
	
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
	  </head>
	
	  <body>
	  
	  <!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
		      </div>
		      <div class="modal-body">
		        ...
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>  <!-- Modal -->
	
	    <div class="container" style="margin-top:30px;">
	      <div class="navbar navbar-inverse navbar-fixed-top" style="background-color: white;">
	        <nav>
	          <ul class="nav nav-pills pull-right" style=" margin-right: 330px;">
	            <li role="presentation" class="active" style="margin-top: 20px;"><a href="/master/edit">Edit</a></li>
	            <li role="presentation" style="margin-top: 20px;"><a href="/master/cli">Survey</a></li>
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
		            <li><a href="/master/cateEdit">카테고리 편집 <span class="sr-only">(current)</span></a></li>
		            <li><a href="/master/edit">질문 편집</a></li>
		            <li class="active"><a href="/master/surveyManage">설문조사 관리</a></li>
		          </ul>
	         </div>
		
		      <div class="jumbotron">
		        <div class = "selectCate" style="margin-bottom: 3%;" >
		      		<label for="cate" style="font-size:1.5em;">카테고리 선택</label>
		      		<select class="form-control" id = "cate">
					  <option value="1">코스콤 2019 고객만족도 조사.</option>
					  <option value="2">코스콤 구매관련 만족도 조사.</option>
					  <option value="3">코스콤 주문관련 만족도 조사.</option>
					  <option value="4">코스콤 2018 하반기 고객만족도 조사.</option>
					  <option value="5">코스콤 2018 상반기 고객만족도 조사.</option>
					</select>
		      	</div>
	  				<p></p>
		        <div style = "text-align: center; padding-top: 10px;"><a class="btn btn-warning" href="#" role="button">확인하기</a></div>
		      </div>
			     <div class="row marketing">
			     	<p ><h3 style="margin-bottom: 3%;">참여 증권사 리스트</h3></p>
			     	<table class="table table-bordered">
				      <thead>
				        <tr>
				          <th></th>
				          <th>증권사 명</th>
				          <th>제출 일</th>
				          <th>담당자</th>
				          <th>만족도 지수</th>
				        </tr>
				      </thead>
				      <tbody>
				        <tr>
				          <th scope="row" style="text-align:center;">1</th>
				          <td class="myModal"style="cursor:pointer;" data-target="#myModal">IBK</td>
				          <td>2019-05-02</td>
				          <td>조인성</td>
				          <td>80%</td>
				        </tr>
				        <tr>
				          <th scope="row" style="text-align:center;">2</th>
				          <td class="myModal" style="cursor:pointer;" data-target="#myModal">한양증권</td>
				          <td>2019-05-10</td>
				          <td>공유</td>
				          <td>90%</td>
				        </tr>
				        <tr>
				          <th scope="row" style="text-align:center;">3</th>
				          <td class="myModal" style="cursor:pointer;" data-target="#myModal">키움증권</td>
				          <td>2019-05-03</td>
				          <td>송중기</td>
				          <td>80%</td>
				        </tr>
				        <tr>
				          <th scope="row" style="text-align:center;">4</th>
				          <td class="myModal" style="cursor:pointer;" data-target="#myModal">골드만삭스</td>
				          <td>2019-04-30</td>
				          <td>소지섭</td>
				          <td>85%</td>
				        </tr>
				        <tr>
				          <th scope="row" style="text-align:center;">5</th>
				          <td class="myModal" style="cursor:pointer;" data-target="#myModal">메리츠증권</td>
				          <td>2019-05-13</td>
				          <td>박보검</td>
				          <td>70%</td>
				        </tr>
				        <tr>
				          <th scope="row" style="text-align:center;">6</th>
				          <td class="myModal" style="cursor:pointer;" data-target="#myModal">모건스탠리</td>
				          <td>2019-04-29</td>
				          <td>김영광</td>
				          <td>100%</td>
				        </tr>
				      </tbody>
				    </table>
		  		 </div><!-- /row -->
	      <footer class="footer">
	        <p>Koscom 만족도 설문 조사</p>
	      </footer>
		 </div>
	    </div> <!-- /container -->
	
	
	    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	    <script src="/assets/js/ie10-viewport-bug-workaround.js"></script>
	    <script>
	    
	    $('#myModal').on('shown.bs.modal', function () {
            console.log("모달");
            $('.myModal').click()
          })
	    
	    
	    </script>
	
	</body>

</html>