package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.mysql.jdbc.Connection;

import wp.DAODB.HocVien_LopDAO;
import wp.DB.DBConnection;
import wp.model.HocVien_Lop;

@WebServlet("/acr_HocVien_Lop")
public class acr_HocVien_Lop extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public acr_HocVien_Lop() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = (Connection) DBConnection.CreateConnection();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter(); 
		String str_action=request.getParameter("action");
		int action=0;
		if(str_action!=null)
		{
			action = Integer.parseInt(request.getParameter("action"));
			System.out.println(action);
		}
		System.out.println(str_action);
		if(action==3)
		{
		}
		else
		{
			boolean kt=false;
			if(action==1) {
				int  maHocVien =Integer.parseInt(request.getParameter("maHocVien"));
				String maLop =request.getParameter("maLop");
				
				System.out.println(maHocVien);
				System.out.println(maLop);
				
				kt = false;	
				kt = HocVien_LopDAO.InsertHocVien_Lop(maHocVien, maLop, conn);
			}
			
			else if(action==4) {
				int   maHocVien =Integer.parseInt(request.getParameter("maHocVien"));
				String  maLop =request.getParameter("maLop");
				

				kt = false;
				kt = HocVien_LopDAO.DeleteHocVien_Lop(maHocVien, maLop, conn);
			}
				
				
			if (kt || str_action==null) {
				System.out.println("Success!");
				List<HocVien_Lop> list = HocVien_LopDAO.DisplayHocVien_Lop(conn);

				 if (!list.isEmpty()) {
			            response.setContentType("application/json");
			            //Import gson-2.2.2.jar
			            Gson gson = new Gson();
			            String objectToReturn = gson.toJson(list); //Convert List -> Json
			            out.write(objectToReturn); 
			            out.flush();
						//response.getWriter().write(objectToReturn);
			        } else {
			            response.setContentType("application/json");
			            out.write("{\"check\":\"fail\"}");
			            out.flush();
			        }
			}
			else {
				response.setContentType("application/json");
	            out.write("{\"check\":\"fail\"}");
	            out.flush();
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
