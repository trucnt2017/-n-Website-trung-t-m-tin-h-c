package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import wp.model.Lop;
import wp.DB.DBConnection;
import wp.DAODB.LopDAO;


@WebServlet("/DisplayLop")
public class DisplayLop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DisplayLop() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = (Connection) DBConnection.CreateConnection();
		List<Lop>list = LopDAO.DisplayLop(conn);
		request.setAttribute("lop", list);
		RequestDispatcher rd = request.getRequestDispatcher("tinhocvanphong.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
