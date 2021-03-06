<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mem.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*, javax.servlet.*,java.text.*" %>
<%@ page import="com.liveOrder.model.*"%>
<%@ page import="com.permission.model.*" %>
<%@ page import="com.features.model.*" %>
<%
  MemVO memVO = (MemVO) request.getAttribute("memVO"); //MemServlet.java(Controller), 存入req的memVO物件
%>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>會員資料修改</title>

<style>

 table {
	width: 1210x;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
	text-align:center;
	margin:auto;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
    
  }
  th {
    padding: 10px;
    width:120 px;
    background-color:#D2E9FF;
  }
  
  td{
    padding:0 px;
  }
  .button_size{
    height:40px;
    width:120;
  }
</style>

</head>
<%@ include file="/back-end/back-end-head.jsp" %>
<center>
<body bgcolor='white'>
<%@ include file="/back-end/back-end-header.jsp" %>
		 
<br><br><br>
<table>
	<tr>
		<th>會員編號</th>
		<th>會員帳號</th>
		<th>會員密碼</th>
		<th>大頭照</th>
		<th>會員姓名</th>
		<th>性別</th>
		<th>會員電話</th>
		<th>Email</th>
		<th>註冊日期</th>
		<th>會員狀態</th>
	</tr>
	<tr>
		<td><%=memVO.getMemno()%></td>
		<td><%=memVO.getmAccount()%></td>
		<td><%=memVO.getmPw()%></td>
		<FORM METHOD="get" ACTION="<%=request.getContextPath()%>/mem/mem.mPic" >
			<td>
			<img alt="" src="<%=request.getContextPath()%>/back-end/mem/mem.mPic?memno=${memVO.memno}" style="width: 150px; height: 120px">
			</td>
			</FORM>
		<td><%=memVO.getmName()%></td>
		<td><%=memVO.getmGender()%></td>
		<td><%=memVO.getmPhone()%></td>
		<td><%=memVO.getmEmail()%></td>
		<td><%=memVO.getmRegDate()%></td>
		<td><%=memVO.getmStatus()%></td>	
	</tr>
</table>
<br>
<h4><a href="${pageContext.request.contextPath}/back-end/mem/listAllMem.jsp"><u>回會員列表</u></a></h4>
<%@ include file="/back-end/back-end-footer.jsp"%>
</body>
</html>