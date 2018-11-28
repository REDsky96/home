<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> <meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" /> <meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>home</title>
<style type="text/css">
  .header{
    width: 1424px;
    height: 70px;
    background-color: black;
    color:white;
    line-height: 70px;
    text-align: center;
    }

    span {
      color: red;}

    #main{
      width: 1424px;
      height: 720px;
      text-align: center;
      }

    .right_film{
      float: right;
    }

    .left_film{
      float: left;
    }

    .tate img{
      width: 100px;
      display: block;
    }

    .pic {
      display: inline;
    }

    .pic img {
      width: 170px;
      margin: 30px 30px;
    }

    .footer {
      width: 1424px;
      height: 70px;
      background-color: black;
      }

</style>
</head>
<body>
  <div class = "header">
    <h1>FIL<span>M.R</span>eview</h1>
  </div>

  <div id = "main">

    <div class = "right_film">
     <div class = "tate">
      <img src = "publicdomainq-0003005png.jpg">
      <img src = "publicdomainq-0003005png.jpg">
      <img src = "publicdomainq-0003005png.jpg">
      <img src = "publicdomainq-0003005png.jpg">
      <img src = "publicdomainq-0003005png.jpg">
      <img src = "publicdomainq-0003005png.jpg">
     </div>
    </div>

    <div class = "left_film">
     <div class = "tate">
      <img src = "publicdomainq-0003005png.jpg">
      <img src = "publicdomainq-0003005png.jpg">
      <img src = "publicdomainq-0003005png.jpg">
      <img src = "publicdomainq-0003005png.jpg">
      <img src = "publicdomainq-0003005png.jpg">
      <img src = "publicdomainq-0003005png.jpg">
     </div>
    </div>

      <div class = "pic">
        <a href ='<s:url action = "NewCinemaParadise"/>'><img src="img/newcinema.jpg"></a>
        <a href ='<s:url action = "GodFather"/>'><img src="img/godfather.jpg"></a>
        <a href ='<s:url action = "Orange"/>'><img src="img/orange.jpg"></a>
        <a href ='<s:url action = "Schindler"/>'><img src="img/list.jpg"></a>
        <a href ='<s:url action = "DarkKnight"/>'><img src="img/darkknight.jpg"></a>
      </div>

  </div>

  <div class = "footer">

  </div>

</body>
</html>