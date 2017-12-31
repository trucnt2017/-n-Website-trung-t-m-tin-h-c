package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.mysql.jdbc.Connection;

import wp.DAODB.DiemDAO;
import wp.DAODB.HocVienDAO;
import wp.DB.DBConnection;
import wp.model.Diem;
import wp.model.HocVien;

@WebServlet("/act_Diem")
public class act_Diem extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public act_Diem() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = (Connection) DBConnection.CreateConnection();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter(); 
		//
		// String username = request.getParameter("username");
		// String password = request.getParameter("password");

		// NhanVien nv=LoginDAO.DisplayInfoNV(username, password, conn);
		// request.setAttribute("infoadmin", nv);
		//
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
			int maHocVien = Integer.parseInt(request.getParameter("maHocVien"));
			HocVien mp = HocVienDAO.Display_1HocVien(maHocVien, conn);

			if (mp!=null) {
				request.setAttribute("infoauthority", mp);
	            response.setContentType("application/json");
	            //Import gson-2.2.2.jar
	            Gson gson = new Gson();
	            String objectToReturn = gson.toJson(mp); //Convert List -> Json
	            out.write(objectToReturn); 
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
				String tenHocVien = request.getParameter("tenHocVien");
				String gioiTinh =request.getParameter("gioiTinh");
				String sDT =request.getParameter("sDT");
				String diaChi =request.getParameter("diaChi");
				String ngaySinh =(String)request.getParameter("ngaySinh");

				System.out.println("aaaa"+tenHocVien);
				System.out.println("aaaa"+gioiTinh);

				System.out.println(ngaySinh);
				System.out.println(sDT);
				System.out.println(diaChi);
				
				DateFormat  format =  new SimpleDateFormat("yyyy-MM-dd");
		    	
				try {
					Date startDate = format.parse(ngaySinh);
					java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());
					System.out.println(sqlDate);
					kt = false;
					kt = HocVienDAO.InsertHocVien(tenHocVien, sqlDate, gioiTinh, sDT, diaChi, conn);
					
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			else if(action==2) {
				int maHocVien = Integer.parseInt(request.getParameter("maHocVien"));
				String tenHocVien = request.getParameter("tenHocVien");
				String gioiTinh =request.getParameter("gioiTinh");
				String sDT =request.getParameter("sDT");
				String diaChi =request.getParameter("diaChi");
				String ngaySinh =(String)request.getParameter("ngaySinh");
				
				System.out.println("aaaa"+tenHocVien);
				System.out.println("aaaa"+gioiTinh);

				System.out.println("ngay"+ngaySinh);
				System.out.println(sDT);
				System.out.println(diaChi);
				
				DateFormat  format =  new SimpleDateFormat("yyyy-MM-dd");
				
				try {
					Date startDate = format.parse(ngaySinh);
					java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());
					System.out.println(sqlDate);
					kt = false;
					kt = HocVienDAO.EditHocVien(maHocVien,tenHocVien, sqlDate, gioiTinh, sDT, diaChi, conn);
					
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else if(action==4) {
				int maHocVien = Integer.parseInt(request.getParameter("maHocVien"));

				kt = false;
				kt = HocVienDAO.DeleteHocVien(maHocVien, conn);
			}
				
				
			if (kt || str_action==null) {
				System.out.println("Success!");
				List<Diem> list = DiemDAO.DisplayDiem(conn);

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
