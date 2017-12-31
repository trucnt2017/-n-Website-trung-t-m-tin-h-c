package Controller;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import wp.model.HocVien;

import wp.DB.DBConnection;
import wp.DAODB.HocVienDAO;


@WebServlet("/DisplayHocVien")
public class DisplayHocVien extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DisplayHocVien() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = (Connection) DBConnection.CreateConnection();
		List<HocVien>list = HocVienDAO.DisplayHocVien(conn);
		request.setAttribute("hocvien", list);
		RequestDispatcher rd = request.getRequestDispatcher("danhsachhocvien.jsp");
		rd.forward(request, response);
	}
	public static boolean ThemHocVien(String name, String message, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procThemGuestBook(?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setNString(1, name);
			cstm.setNString(2, message);
			
			cstm.executeUpdate();

			cstm.close(); // k đóng lại thì nếu gọi store khác nữa sẽ k đc

			t = true;
		}

		catch (SQLException ex) {
			// e.printStackTrace();
			System.out.println(ex.getMessage());
		}

		return t;
	}
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
