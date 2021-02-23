<%@ page import="java.sql.*"%>

<% String a=request.getParameter("t11");
String b=request.getParameter("t12");
String button = request.getParameter("t13");
%>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
if(button.equalsIgnoreCase("button1"))
{
PreparedStatement st=con.prepareStatement("insert into product values(?,?)");
st.setString(1,a);
st.setString(2,b);
st.execute();
System.out.println("row inserted");
}
}
catch(Exception ae)
{
ae.printStackTrace();
}

 %>