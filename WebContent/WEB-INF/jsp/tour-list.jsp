<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>线路列表</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="<%=request.getContextPath()%>/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<%=request.getContextPath()%>/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <%@ include file="/common-header.jsp" %>
    <div class="container-fluid">
      <div class="row">
        <%@ include file="/sidebar.jsp" %>
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		  <button type="button" onclick="location.href='<%=request.getContextPath()%>/tour/insert'" class="btn btn-success">新增路线</button>
          <h2 class="sub-header">线路列表</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>线路名称</th>
                  <th>操作</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach items="${tourList}" var="tour">
              		<tr>
              			<td style="font-size:17px">${tour.name }</td>
              			<td style="font-size:17px">
              				<div class="btn-group" role="group" aria-label="...">
  								<button type="button" onclick="location.href='<%=request.getContextPath()%>/tour/edit/${tour.id }'" class="btn btn-info" style="font-size:17px">编辑</button>
  								<button type="button" onclick="location.href='<%=request.getContextPath()%>/tour/price/${tour.id }'" class="btn btn-success" style="font-size:17px">查看开团日期</button>
  								<button type="button" onclick="deleteItem(${tour.id});" class="btn btn-danger" style="font-size:17px">删除</button>
							</div>
						</td>
              		</tr>
              	</c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="<%=request.getContextPath()%>/assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="<%=request.getContextPath()%>/dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="<%=request.getContextPath()%>/assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<%=request.getContextPath()%>/assets/js/ie10-viewport-bug-workaround.js"></script>
    <script type="text/javascript">
    	function deleteItem(id){
    		var flag = confirm("确定要删除该项吗?");
    		if(flag==true){
    			location.href='<%=request.getContextPath()%>/tour/delete/'+id;
    		}
    	}
    </script>
  </body>
</html>
