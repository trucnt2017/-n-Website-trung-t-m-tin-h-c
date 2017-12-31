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

import wp.DAODB.LopDAO;
import wp.DB.DBConnection;
import wp.model.Lop;

@WebServlet("/act_Cosodulieu")
public class act_Cosodulieu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public act_Cosodulieu() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = (Connection) DBConnection.CreateConnection();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter(); //Ä‘á»ƒ cho code gá»�n hÆ¡n
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
			String  maLop = request.getParameter("maLop");
			Lop mp = LopDAO.Display_1Lop(maLop, conn);
			System.out.println(maLop);
			System.out.println(mp.getTenLop());
			System.out.println(mp.getThoiGian());
			System.out.println(mp.getHocPhi());
			System.out.println(mp.getMaKhoaHoc());
			System.out.println(mp.getSoTiet());
			System.out.println(mp.getPhong());
			System.out.println(mp.getNgayKG());
		

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
				String maKhoaHoc =request.getParameter("maKhoaHoc");
				String maLop = request.getParameter("maLop");
				String tenLop =request.getParameter("tenLop");
				String ngayKG =request.getParameter("ngayKG");
				String thoiGian =request.getParameter("thoiGian");
				
				String phong =request.getParameter("phong");
				int hocPhi =Integer.parseInt(request.getParameter("hocPhi"));
				int soTiet =Integer.parseInt(request.getParameter("soTiet"));
				System.out.println(maKhoaHoc);
				System.out.println(maLop);
				System.out.println(tenLop);
				System.out.println(thoiGian);
				System.out.println(ngayKG);
				System.out.println(hocPhi);
				System.out.println(soTiet);
				System.out.println(phong);
				
				DateFormat  format =  new SimpleDateFormat("yyyy-MM-dd");
				
				try {
					Date startDate = format.parse(ngayKG);
					java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());
					System.out.println(sqlDate);
					kt = false;	
					kt = LopDAO.InsertLop(maKhoaHoc, maLop, tenLop, thoiGian, sqlDate, hocPhi, soTiet, phong, conn);
					
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			else if(action==2) {
				
				String maKhoaHoc = request.getParameter("maKhoaHoc");
				String maLop =request.getParameter("maLop");
				String tenLop =request.getParameter("tenLop");
				String thoiGian =request.getParameter("thoiGian");
			
				System.out.println("ma khóa học"+maKhoaHoc);
				System.out.println("ma lop"+maLop);
				System.out.println("ten lop"+tenLop);
				System.out.println("thoi gian"+thoiGian);
				
				String ngayKG =request.getParameter("ngayKG");
				String phong =request.getParameter("phong");
				
				int  hocPhi =Integer.parseInt(request.getParameter("hocPhi"));
				int  soTiet =Integer.parseInt(request.getParameter("soTiet"));
				
			
				System.out.println("so tiet"+soTiet);
				System.out.println("hoc phí"+hocPhi);
				System.out.println("phong "+phong);
				
				
				
				
				DateFormat  format =  new SimpleDateFormat("yyyy-MM-dd");
				
				try {
					Date startDate = format.parse(ngayKG);
					java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());
					System.out.println("ngày khai giang"+sqlDate);
					kt = false;
					kt = LopDAO.EditLop(maKhoaHoc, maLop, tenLop, thoiGian, sqlDate, phong, hocPhi, soTiet, conn);
					
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
					
					
			}
			
			else if(action==4) {
				String  maLop =request.getParameter("maLop");

				kt = false;
				kt = LopDAO.DeleteLop(maLop, conn);
			}
				
				
			if (kt || str_action==null) {
				System.out.println("Success!");
				List<Lop> list = LopDAO.DisplayLop_CSDL(conn);

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
