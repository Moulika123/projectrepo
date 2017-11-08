<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>  
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Food Court</title>

</head>
<body>

<jsp:include page="header.jsp"/>

<form action="/login" method="post">
 

 <div class="container">
		 <div class="row">
		
		<div class=col-sm-3></div>   
		<div class="col-sm-6">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username"class="form-control" name="username" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" class="form-control"name="password" required>

    <button type="submit" class="btn btn-default">Login</button>
    
  </div>
  </div>
  </div>
 </form>

</body>
</html>