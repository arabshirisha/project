<%@ page import="java.sql.*"%>

<% 
String button = request.getParameter("t13");
%>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
if(button.equalsIgnoreCase("btn"))
{
	PreparedStatement ps=con.prepareStatement("select * from feedback");
	
//ps.setString(1,a);
	out.println("<table width =50% border=1>");	
	out.println("<caption>feedback Details</caption>");
	ResultSet rs=ps.executeQuery();
	ResultSetMetaData rsmd=rs.getMetaData();
	int tot =rsmd.getColumnCount();
	out.print("<tr>");
	for(int i=1;i<=tot;i++)
	{
		out.println("<th>"+rsmd.getColumnName(i)+"</th>");
	}
	out.print("</tr>");
	while(rs.next())
	{
	out.println("<tr><td>"+rs.getString(1)+"<td>"+rs.getString(2)+"</tr>");	
	}
	out.println("</table>");
}
}
catch(Exception ae)
{
ae.printStackTrace();
}

 %>