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

    .main {
      margin-top: 50px;
    }

    .left_box {
      float: left;
    }

    .left_box img {
      width: 350px;
      margin-left: 60px;
      margin-top: 30px;
    }

    .profile {
      margin-left: 65px;
    }

    .right_box {
      float: left;
      margin-left: 50px;
      margin-top: 30px;
      overflow:scroll;
    }

    .scroll {
      width: 250px;
      height: 100px;

    }


</style>
</head>
<body>
  <div class = "header">
    <h1>映画に想いを伝える</h1>
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
      <img src="144621_01.jpg">
      <div class = "profile">
        <p>監督名: ジュゼッペ・トルナトーレ</P>
        <p>出演者: サルバトーレ・カシオ フィリップ・ノワレ</P>
      </div>
    </div>



    <div class = "right_box">
    <s:iterator value = "#session.dtoList">
    投稿者:<s:property value = "name"/>
    評価:<s:property value = "star"/>
    <br>
    感想:<s:property value = "comment"/>
    <br>
    </s:iterator>
    </div>
      <s:form action = "NewCinemaParadise">
        投稿者名:<input type = "text" name = "name" value = ""/>
        評価:<select name = "star">
              <option value = "⭐">⭐</option>
              <option value = "⭐⭐">⭐⭐</option>
              <option value = "⭐⭐⭐">⭐⭐⭐</option>
              <option value = "⭐⭐⭐⭐">⭐⭐⭐⭐</option>
              <option value = "⭐⭐⭐⭐⭐">⭐⭐⭐⭐⭐</option>
            </select>
        <br>
        <br>
        感想:<s:textarea name = "comment" cols = "50" rows = "10"/>
        <s:submit value = "コメントする"/>
      </s:form>

      <p>homeに戻る場合は<a href ="home.jsp">こちら</a></p>

    </div>

</body>
</html>