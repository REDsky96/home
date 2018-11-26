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
    whidth: 100%;
    height: 70px;
    background-color: black;
    color:white;
    line-height: 70px;
    text-align: center;
    }

    span {
      color: red;}

    main{
      background-color: #DD0000;
      width: 100%;
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

    table img{
      text-algn: center;
      margin: 0 auto;
      margin-left: 40px;
      margin-top: 30px;
      width: 65%;
      height: auto;
    }

    .footer {
      whidth: 100%;
      height: 70px;
      background-color: black;
      position:absolute;
      bottom: 0;
      left: 0;
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

    <table>
      <tr>
        <td><a href ='<s:url action = "NewCinemaParadise"/>'><img src="img/newcinema.jpg"></a></td>
        <td><img src="img/godfather.jpg"></td>
        <td><img src="img/orange.jpg"></td>
        <td><img src="img/list.jpg"></td>
        <td><img src="img/darkknight.jpg"></td>
      </tr>
    </table>
  </div>

  <div class = "footer">

  </div>

</body>
</html>