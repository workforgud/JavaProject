<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "org.postgresql.Driver";
String connectionUrl = "jdbc:postgresql://localhost:5432/students";
String userId = "postgres";
String password = "shubham";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Fetched Covid Information</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Location</b></td>
<td><b>Total Cases</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT location, total_cases FROM coviddata WHERE new_cases<300 GROUP BY location,total_cases,new_cases ORDER BY new_cases;";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("location") %></td>
<td><%=resultSet.getString("total_cases") %></td>

</tr>

<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
