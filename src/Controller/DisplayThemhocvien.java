package Controller;

import java.io.IOException;

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

@WebServlet("/DisplayThemhocvien")
public class DisplayThemhocvien extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DisplayThemhocvien() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
Connection conn = (Connection) DBConnection.CreateConnection();
   	
   	if(request.getParameter("temp")==null)
   	{
  		RequestDispatcher rd = request.getRequestDispatcher("themhocvien.jsp");
    		rd.forward(request, response);
  	}
   	else {
       	int id = Integer.parseInt(request.getParameter("temp"));
    		HocVien entry = HocVienDAO.Display_1HocVien(id,conn);
    		request.setAttribute("entry", entry);

    		RequestDispatcher rd = request.getRequestDispatcher("SuaHocVien.jsp");
    		rd.forward(request, response);
    	}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
