<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="cn.st.entity.*"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://gx.edu/dTags" prefix="d"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>猿来入此英语教研室/情景英语平台</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
<link href="${resourcePath}/css/styles2.css" rel="stylesheet" type="text/css">
<%-- <link href="${resourcePath}/css/style.css" rel="stylesheet" type="text/css" /> --%>
<link rel="shortcut icon" href="./favicon.ico">
</head>
<body>
  <form  action="${ctx}/yiZhuanDetails/videoAppreciation" method="post" id="form">
<div class="t-line"></div>
<div class="header" style="">
 <div class="tools clearfix" style="width:100%;background-color:#5CACEE;">
      <!--  <p class="welcome">
         <img alt="" src="${resourcePath}/images/slogo.png" height="72" width="72px;"
          style="position:absolute;left:178px;top:-15px; border-radius:80px;border:1px solid white;"/>
       </p>-->
       <h1  style="position:absolute;left:20%;top:-15px; font-size:21pt;color:white;">实践课 在 线 培 训 系 统</h1>
       <h4  style="position:absolute;left:20%;top:5px; font-size:10pt;color:white;">SHI&nbsp;JIAN&nbsp;KE &nbsp; &nbsp;ZAI &nbsp;XIAN&nbsp;  PEI  &nbsp;XUN &nbsp;&nbsp;XI &nbsp; TONG</h4>
  </div>
  <div class="nav-bg" >
     <ul class="nav" >
      <li style="margin-left:110px;font-size:12pt;"><a  href="${ctx}/InitIndexInf">学院首页</a></li>
	  <li style="margin-left:70px;font-size:12pt;"><a href="${ctx}/yiZhuanDetails/projectIntroduction">项目介绍</a></li>
      <li style="margin-left:70px;font-size:12pt;"><a  href="${ctx}/yiZhuanDetails/teachersDetails">课程介绍</a></li>
      <li style="margin-left:70px;font-size:12pt;"><a class="active" href="${ctx}/yiZhuanDetails/videoAppreciation">情景教学欣赏</a></li>
     <!--  <li style="margin-left:30px;font-size:12pt;"><a href="javascript:;">在线题库</a></li> -->
      <li style="margin-left:70px;font-size:12pt;"><a href="${ctx}/yiZhuanDetails/dataDowload">下载专区</a></li>
    </ul>
  </div>
</div>
<div class="warp" >
  <div class="ads" >
    <img alt="" src="${resourcePath}/images/banner.jpg" width="100%"/>
  </div>
  <div class="listpage clearfix">
    <div class="lmenu">
      <h2>分类导航</h2>
      <ul class="menus">
        <li><a class="menulink active" href="#">视频欣赏</a></li>
       <!--  <li><a class="menulink" href="#">信息资源</a></li>
        <li><a class="menulink" href="#">科技查新</a></li>
        <li><a class="menulink" href="#">查收查引</a></li>
        <li><a class="menulink" href="#">查新站简介</a></li>
        <li><a class="menulink" href="#">委托须知</a></li>
        <li><a class="menulink" href="#">业务流程</a></li>
        <li><a class="menulink" href="#">收费标准</a></li>
        <li><a class="menulink" href="#">规章制度</a></li>
        <li><a class="menulink" href="#">常见问题</a></li>
        <li><a class="menulink" href="#">信息资源</a></li> -->
      </ul>
    </div>
    <div class="rcon">
      <ol class="breadcrumb">
        <li><a href="#">首页</a></li>
        <li class="active"> - 视频 - 视频内容</li>
      </ol>
      <div class="newscon">
    <div class="tools">
    <!--  综合查询-->  
    <ul class="seachform">
	    <li style="float:left;"><label>视频标题:</label>
	        <input name="title" type="text" style="border:1px solid #4876FF;border-radius:1px;width:120px;height:25px;background-color:#F4F4F4;" value="${title}"/>
	    </li>
	    <li style="float:left;"><label>视频类型查询</label>
	    <select name="type_id" id="type_id" style="width:120px;border:1px solid #F4F4F4;border-radius:10px;">
						<option value="" >---请选择---</option>
						<c:forEach items="${vedioTypes}" var="item">
							<option value="${item.type_id}" ${item.type_id eq type_id ? "selected='selected'":""} >${item.type_name}</option>	
						</c:forEach>
		</select>
	    <input type=submit  value="查询" onclick="queryPage()"
	    style="width:60px;height:25px;border:1px solid #4876FF;background-color:#1E90FF;color:white;"/>
	    </li>
    </ul>
    </div><br>
     <!--视频列表-->
      <div style="width:100%;">总${page.total}条数据, <d:pagination pages="${page}" /></div>
		<c:forEach items="${page.result}" var="item">
		<div id="vedio_list">
			<ul >
				<li style="float:left;margin-left:8px;">
				<div id="vedioBox" style="float:left;width:100%;height:100%;border:1px solid #F4F4F4;border-radius:10px;">
			             <video width="328" height="200"  controls="controls">
				             <source src="${item.picture_path}" type="video/mp4">
		                  </video>   
				     <p style="font:宋体;">描述:${item.describes}</p>
				     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='${ctx}/onlinelibrary/list2/${item.up_id}' 
				     style="width:60px;height:25px;border:1px solid #4876FF;background-color:#1E90FF;color:white;">我要做题</a>
				    &nbsp;&nbsp;&nbsp;&nbsp;<a href='${ctx}/vediou_mng/play/${item.up_id}'  target="_blank"  
				   style="width:60px;height:25px;border:1px solid #4876FF;background-color:#1E90FF;color:white;"> 我要观看 </a> 
				</div>
		      </li>
		    </ul>
		</div>
		</c:forEach>
      </div>
    </div>
  </div>
</div>
<div class="footer-bg">
  <div class="footer wc1000">
    <ul class="flink">
      <li>
        <a class="tit" href="javascript:;">友情链接: </a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
       <li>
        <a href="/OnlineLearning/login_users.jsp">我要登录</a>
      </li>
    </ul>
    <p class="mt15">Copyright	2019【猿来入此】</p>
  </div>
</div>
<script type="text/javascript" src="${resourcePath}/js/jquery.min.js"></script>
<script type="text/javascript">
</script>
</form>	
</body>
</html>