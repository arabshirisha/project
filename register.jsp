<%@ page import="java.sql.*"%>
<% String a= request.getParameter("t1");
String b= request.getParameter("t2");
String c= request.getParameter("t3");
String d= request.getParameter("t4");
String e = request.getParameter("t5");
String button=request.getParameter("btn");
%>

<%out.println(a+ "your regestration was successfull");
out.println("</br>");
%>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
if(button.equalsIgnoreCase("Register"))
{
PreparedStatement st=con.prepareStatement("insert into Customer values(?,?,?,?)");
st.setString(1,a);
st.setString(2,b);
st.setString(3,c);
st.setString(4,d);
st.execute();
response.sendRedirect("log.html");
System.out.println("Successfully registered");
}
}
				catch(Exception ae)
				{
				} %>