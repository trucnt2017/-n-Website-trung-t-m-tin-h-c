package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

import wp.DAODB.LoginDAO;
import wp.DB.DBConnection;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginController() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = (Connection) DBConnection.CreateConnection();
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter(); //để cho code gọn hơn
		//
		      
		
		//
		HttpSession session = request.getSession(true);
		String tenDangNhap = request.getParameter("tenDangNhap");
		String matKhau = request.getParameter("matKhau");
		session.setAttribute("tenDangNhap", tenDangNhap);
		String nme=(String) session.getAttribute("tenDangNhap");
		int kt = LoginDAO.LoginUser(tenDangNhap, matKhau, conn);
		if (kt==1) {
			
			RequestDispatcher rd = request.getRequestDispatcher("KhoaHoc.jsp");
			rd.forward(request, response);
		} 
		else if (kt==2) {
			
			RequestDispatcher rd = request.getRequestDispatcher("danhsachhocvien.jsp");
			rd.forward(request, response);
		}
		
		else {

			request.setAttribute("message", "Login Failed");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);

		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
