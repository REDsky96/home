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
<title>NewCinemaParadise</title>
<style type="text/css">
  .header{
    whidth: 100%;
    height: 70px;
    background-color: black;
    color:white;
    line-height: 70px;
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

    .left_box {
      float: left;
      width: 30%;
      margin-left: 60px;
      margin-top: 30px;
    }

    .left_box img {
      width: 80%;
    }

    .profile {
      border-bottom: dashed 1px black;
    }

    h4 {
      display: inline;
    }

    ul {
      list-style: none;
    }

    .right {
      float: left;
      margin-right: 10px;
    }

    .right_box {
      float: left;
      margin-left: 1px;
      margin-top: 30px;
      margin-bottom: 20px;
      width: 100%;
      height: 350px;
      overflow: scroll;
      background-color: rightgrey;
    }

    .comment_box {
      background-color: #DDFFFF;
      border-radius: 10px;
      margin: 10px;
      padding-left: 1em;
    }

    span {
      margin-right: 2em;
      font-size: 20px;
    }


    .from {
      padding-top: 1px;
      float: left;
      margin-left: 50px;
      margin-top: 1px;
    }


</style>
</head>
<body>
  <div class = "header">
    <h1>FILM.Review</h1>
  </div>

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

    <div class = "left_box">
      <img src="51HDQQCRP9L._SY445_.jpg">
      <div class = "profile">
        <h4>監督:</h4>ジュゼッペ・トルナトーレ
      </div>
    </div>

  <div class = "right">
    <div class = "right_box">
    <s:iterator value = "#session.dtoList">
    <div class = "comment_box">
    <span>投稿者:<s:property value = "name"/></span>
    <span>評価:<s:property value = "star"/></span>
    <br>
    <span>コメント:<br><s:property value = "comment"/></span>
    <br>
    </div>
    </s:iterator>
    </div>

    <div class = "form">
    <h2>〜コメントを書く〜</h2>
      <s:form action = "NewCinemaParadiseComplete">
        投稿者名:<input type = "text" name = "name" value = ""/>
        評価:<select name = "star">
              <option value = "⭐">⭐️</option>
              <option value = "⭐⭐">⭐⭐</option>
              <option value = "⭐⭐⭐">⭐⭐⭐</option>
              <option value = "⭐⭐⭐⭐">⭐⭐⭐⭐</option>
              <option value = "⭐⭐⭐⭐⭐">⭐⭐⭐⭐⭐</option>
            </select>
        <br>
        <br>
        感想:<s:textarea name = "comment" cols = "90" rows = "10"/>
        <s:submit value = "コメントする"/>
      </s:form>
      <p>homeに戻る場合は<a href ="home.jsp">こちら</a></p>
    </div>
    </div>




</body>
</html>