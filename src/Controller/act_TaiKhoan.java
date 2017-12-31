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

import wp.DAODB.TaiKhoanDAO;
import wp.DB.DBConnection;
import wp.model.TaiKhoan;


@WebServlet("/act_TaiKhoan")
public class act_TaiKhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public act_TaiKhoan() {
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
			String  tenDangNhap = request.getParameter("tenDangNhap");
			TaiKhoan mp = TaiKhoanDAO.Display_1TaiKhoan(tenDangNhap, conn);

			if (mp!=null) {
				request.setAttribute("infoauthority", mp);
	            response.setContentType("application/json");
	            //Import gson-2.2.2.jar
	            Gson gson = new Gson();
	            String objectToReturn = gson.toJson(mp); //Convert List -> Json
	            out.write(objectToReturn); //Ä�Æ°a Json tráº£ vá»� Ajax
	            out.flush();
				//response.getWriter().write(objectToReturn);
	        } else {
	            response.setContentType("application/json");
	            out.write("{\"check\":\"fail\"}");
	            out.flush();
	        }
		}
		else
		{
			boolean kt=false;
			if(action==1) {
				String tenDangNhap = request.getParameter("tenDangNhap");
				String matKhau =request.getParameter("matKhau");
				int phanQuyen=Integer.parseInt(request.getParameter("phanQuyen"));
				
				System.out.println("aaaa"+tenDangNhap);
				System.out.println("aaaa"+matKhau);
				System.out.println(phanQuyen);
				
				kt = false;	
				kt = TaiKhoanDAO.InsertTaiKhoan(tenDangNhap, matKhau,phanQuyen, conn);
			}
			else if(action==2) {
				
				String tenDangNhap = request.getParameter("tenDangNhap");
				String matKhau =request.getParameter("matKhau");
				int phanQuyen=Integer.parseInt(request.getParameter("phanQuyen"));
				
				System.out.println("aaaa"+tenDangNhap);
				System.out.println("aaaa"+matKhau);
				System.out.println(phanQuyen);
				
				kt = false;	
				kt = TaiKhoanDAO.EditTaiKhoan(tenDangNhap, matKhau, phanQuyen, conn);
					
			}
			
			else if(action==4) {
				String  tenDangNhap =request.getParameter("tenDangNhap");

				kt = false;
				kt = TaiKhoanDAO.DeleteTaiKhoan(tenDangNhap, conn);
			}
				
				
			if (kt || str_action==null) {
				System.out.println("Success!");
				List<TaiKhoan> list = TaiKhoanDAO.DisplayTaiKhoan(conn);

				 if (!list.isEmpty()) {
			            response.setContentType("application/json");
			            //Import gson-2.2.2.jar
			            Gson gson = new Gson();
			            String objectToReturn = gson.toJson(list); //Convert List -> Json
			            out.write(objectToReturn); //Ä�Æ°a Json tráº£ vá»� Ajax
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
