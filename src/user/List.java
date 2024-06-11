package user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.servlet.Utils;

import db.DbConn;

@WebServlet("/List")
public class List extends HttpServlet {
	
	private final String page = "user/List.jsp";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SqlSession sql = DbConn.getFac().openSession();
		java.util.List<UserDTO> list = sql.selectList("user.findAll");
		
//		for(UserDTO dto : list){
//			System.out.println(dto);
//		}
		
		request.setAttribute("list", list);
		
		Utils.print(request, response, page);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Utils.print(request, response, page);
	}

}
