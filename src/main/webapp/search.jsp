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
<%	
	out.print("입력하신 검색결과입니다.");
	String input_name = request.getParameter("input_name");
	memberDAO dao=new memberDAO();
	int totalRowCount = 0;
	int pagePerRow = 10;
	int currentPage = 1;
	ResultSet totalResultSet = dao.SearchCountCoffee(input_name);
	totalRowCount = dao.TotalCountCoffee(input_name);
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
    
    <input type="submit" name= "order" value="주문하기" style="background-color: #EFFBF2;" ></input>
    </form>
    <form action="SearchAction.jsp" method="post">
    <label for="input_name"></label><br>
		<input type="text" name="input_name" id="input_name" placeholder="커피이름을 입력하세요">
		<input type="button" value="검색" id="searchBtn">
    
    	<%
    	int lastPage = totalRowCount/pagePerRow;
        if(totalRowCount%pagePerRow != 0) {
            lastPage++;
        }
        %>
        

    <div>
<%
        if(currentPage>0) {
%>
            <a href="<%=request.getContextPath()%>/Home.jsp?currentPage=<%=currentPage-1%>">이전</a>
<%
        }
        if(currentPage < lastPage) {
%>

            <a href="<%=request.getContextPath()%>/main_jsp.jsp?currentPage=<%=currentPage+1%>">다음</a>
<%
        }
%>
    </div>
    </form>
</body>
</html>