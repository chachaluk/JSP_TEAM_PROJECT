<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
<%
int currentPage = 1;
if(request.getParameter("currentPage") !=null){
	currentPage = Integer.parseInt(request.getParameter("currentPage"));
}
int totalRowCount = 0;

String dbUrl = "jdbc:mysql://127.0.0.1:3306/jsp_project?serverTimezone=UTC&useSSL=false";
String dbUser = "root";
String dbPw = "1234";
Connection connection = null;
PreparedStatement totalStatement = null;
PreparedStatement listStatement = null;
ResultSet totalResultSet = null;
ResultSet listResultSet = null;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
    
    String totalSql = "SELECT COUNT(*) FROM jsp_cafe_menu";
    totalStatement = connection.prepareStatement(totalSql);
    totalResultSet = totalStatement.executeQuery();
    if(totalResultSet.next()) {
        totalRowCount = totalResultSet.getInt(1);
    }
%>

    
<%    
    int pagePerRow = 10;
String listSql 
= "SELECT name, detail, price FROM jsp_cafe_menu LIMIT ?, ?";

    listStatement = connection.prepareStatement(listSql);
    listStatement.setInt(1, (currentPage-1)*pagePerRow); 
    listStatement.setInt(2, pagePerRow); 
    listResultSet = listStatement.executeQuery();
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
    
    <input type="submit" name= "menu" value="주문하기" style="background-color: #EFFBF2;" ></input>
    </form>
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
<%
} catch(Exception e) {
    e.printStackTrace();
    out.print("데이터 가져오기 에러!");
} finally {
    try {totalResultSet.close();} catch(Exception e){}
    try {listResultSet.close();} catch(Exception e){}
    try {totalStatement.close();} catch(Exception e){}
    try {listStatement.close();} catch(Exception e){}
    try {connection.close();} catch(Exception e){}
}
%>


</body>
</html>