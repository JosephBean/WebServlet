package user;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import db.DbConn;

@WebServlet("/Insert")
public class Insert extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("여기에요~~");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		
		Map<String, String> userMap = new HashMap<String, String>();
		userMap.put("name",	 name);
		userMap.put("email", email);
		userMap.put("pwd",	 pwd);
		userMap.put("gender", gender);
		
		SqlSession sql = DbConn.getFac().openSession();
		int status = sql.insert("user.add", userMap);
		System.out.println("상태값 : " + status);
		sql.commit();
		
		System.out.println(name + ", " + email + ", " + pwd + ", " + gender);
		
	}

}
