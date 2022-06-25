<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>
<div class="container" style="width:80%;margin-top:100px;margin-left:300px;">

<h1 class="col-sm-offset-2 col-sm-10">로그인</h1>
  <form class="form-horizontal" 
        action="/login"
        method="post">
        
    <div class="form-group">
      <label class="control-label col-sm-2" for="userId">아이디</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="userId" 
        placeholder="Enter id" name="userId" required="required" 
        value='${c_id_val}'>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="password">비밀번호</label>
      <div class="col-sm-4">          
        <input type="password" class="form-control" id="password" 
        placeholder="Enter password" name="password" required="required">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-6">
        <div class="checkbox">
          <label>
            <input type="checkbox" name="c_id" value="Y" > Remember ID
          </label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-8">
        <button type="submit" class="btn btn-default">로그인</button>
        <button type="button" class="btn btn-default"
         onclick="location.href='/agreement'">회원가입</button>
        <button type="button" class="btn btn-default" onclick="javascript:idFind()">아이디 찾기</button>
        <button type="button" class="btn btn-default" onclick="javascript:pwFind()">패스워드 찾기</button>
      </div>
    </div>
  </form>
  
 
</div>
 
 
</body>
</html>