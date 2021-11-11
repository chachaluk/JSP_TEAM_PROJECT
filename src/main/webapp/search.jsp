<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="DAO.memberDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="main_jsp.jsp"/>
<%
	String input_name = request.getParameter("input_name");
	memberDAO dao=new memberDAO();
	int totalRowCount = 0;
	int pagePerRow = 10;
	int currentPage = 1;
	ResultSet totalResultSet = dao.SearchCountCoffee(input_name);
	ResultSet listResultSet = dao.SearchList(input_name);
%>	

<form name="order" method="post" action="oders.jsp">
    <table style="margin-left: auto; margin-right: auto; ">
        <thead>
            <tr style="background-color: #F8E0F7">
                <th>품  명</th>
                <th>설명</th>
                <th>가격</th>
            </tr>
        </thead>
        <tbody>
<%
            while(listResultSet.next()) {
%>
	<tr>
	
    <td>
   <input type="checkbox" name="menu" value="<%= listResultSet.getString("name") %>&nbsp;&nbsp;&nbsp;&nbsp;<%=listResultSet.getString("price")%>">
      
      <%= listResultSet.getString("name") %>
   
              
        
    </td>
    <td width="600"><%=listResultSet.getString("detail") %></td>
    <td><%=listResultSet.getString("price")%></td>
	</tr>
	
<%        
  }

%>

        </tbody>
        
    </table>
    	<%
    	int lastPage = totalRowCount/pagePerRow;
        if(totalRowCount%pagePerRow != 0) {
            lastPage++;
        }
        %>
        

    <div>
<%
        if(currentPage>1) {
%>
            <a href="<%=request.getContextPath()%>/main_jsp.jsp?currentPage=<%=currentPage-1%>">이전</a>
<%
        }
        if(currentPage < lastPage) {
%>

            <a href="<%=request.getContextPath()%>/main_jsp.jsp?currentPage=<%=currentPage+1%>">다음</a>
<%
        }
%>
    </div>
</body>
</html>