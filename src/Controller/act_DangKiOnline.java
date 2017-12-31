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

import wp.DAODB.DangKiOnlineDAO;
import wp.DB.DBConnection;
import wp.model.DanKiOnline;


@WebServlet("/act_DangKiOnline")
public class act_DangKiOnline extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public act_DangKiOnline() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter(); //Ä‘á»ƒ cho code gá»�n hÆ¡n
		
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
			int maDangKi = Integer.parseInt(request.getParameter("maDangKi"));
			DanKiOnline mp = DangKiOnlineDAO.Display_1DKO(maDangKi, conn);

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
				String tenDangKi = request.getParameter("tenDangKi");
				String sDT =request.getParameter("sDT");
				String maLop =request.getParameter("maLop");
				String maKhoaHoc =request.getParameter("maKhoaHoc");
				String tenLop =request.getParameter("tenLop");
				String thoiGian =request.getParameter("thoiGian");
				String ngayKG =(String)request.getParameter("ngayKG");
				String ghiChu =request.getParameter("ghiChu");

				System.out.println("aaaa"+tenDangKi);
				System.out.println("aaaa"+sDT);

				System.out.println(maLop);
				System.out.println(ngayKG);
				System.out.println(thoiGian);
				
				DateFormat  format =  new SimpleDateFormat("yyyy-MM-dd");
		    	
				try {
					Date startDate = format.parse(ngayKG);
					java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());
					System.out.println(sqlDate);
					kt = false;
					kt = DangKiOnlineDAO.InsertDangKiOnline(tenDangKi, sDT,maKhoaHoc, maLop, tenLop, thoiGian, sqlDate, ghiChu, conn);
					
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
			else if(action==4) {
				int maDangKi = Integer.parseInt(request.getParameter("maDangKi"));

				kt = false;
				kt = DangKiOnlineDAO.DeleteDangKiO(maDangKi, conn);
			}
				
				
			if (kt || str_action==null) {
				System.out.println("Success!");
				List<DanKiOnline> list = DangKiOnlineDAO.DisplayDangKiOnline(conn);

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
