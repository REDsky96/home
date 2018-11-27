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
<title>Orange</title>
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
      color: red;
    }

    #main {
      whidth: 100%;
      height: 720px;
      background: linear-gradient(#C2EEFF,#75A9FF);
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
      margin-top: 1em;
      line-height: 1em;
      text-shadow: 1px 1px 0 #000,
               -1px 1px 0 #000,
               1px -1px 0 #000,
               -1px -1px 0 #000;
      color: white;
    }

    strong {
      font-size: 32px;
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
      border: double 5px #4ec4d3;
      background-color: #DDFFFF;
      border-radius: 10px;
      margin: 10px;
      padding-left: 1em;
    }

    p {
      display: inline;
      margin-right: 3em;
    }

    .from {
      float: left;
      margin-left: 50px;
      margin-top: 20px;
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

    <div class = "left_box">
      <img src="img/orange.jpg">
      <div class = "profile">
        <strong><b>時計じかけのオレンジ</b></strong>
        <h3>制作国:イギリス</h3>
        <h3>制作年:1971</h3>
        <h3>監督:スタンリー・キューブリック</h3>

      </div>
    </div>

  <div class = "right">
    <div class = "right_box">
    <s:iterator value = "#session.dtoListOrange">
    <div class = "comment_box">
    <p>投稿者:<s:property value = "name"/></p>
    <p>評価:<s:property value = "star"/></p>
    <br>
    感想:<s:property value = "comment"/>
    <br>
    </div>
    </s:iterator>
    </div>

    <div class = "form">
    <h2>〜コメントを書く〜</h2>
      <s:form action = "OrangeComplete">
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
        感想:<s:textarea name = "comment" cols = "90" rows = "5" wrap = "hard"/>
        <s:submit value = "コメントする"/>
      </s:form>
      <p>homeに戻る場合は<a href ="home.jsp">こちら</a></p>
    </div>
    </div>
  </div>




</body>
</html>