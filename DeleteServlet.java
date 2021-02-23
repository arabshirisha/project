/*create table user905(id number,name varchar2(30),password varchar2(30),
		email varchar2(30),country varchar2(30))
select * from user905
create sequence crud increment by 1 start with 1;*/

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		ProDao.delete(id);
		response.sendRedirect("ViewServlet");
	}
}
