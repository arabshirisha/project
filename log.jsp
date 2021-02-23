<%@ page import="java.sql.*"%>
<% String a= request.getParameter("t6");
String b= request.getParameter("t7");

%>

<%out.println(a+ "  login was successfull");
out.println("</br>");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
PreparedStatement ps=con.prepareStatement("select * from customer where email=? and password=?");
ps.setString(1,a);
ps.setString(2,b);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		
		response.sendRedirect("shop.html");
	}
	if(a.equalsIgnoreCase("1234"))
	{
		response.sendRedirect("admin.html");
	}else
	{
	response.sendRedirect("Failure.html");
	}
}
		catch(Exception ae)
		{
		}

%>