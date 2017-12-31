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


import wp.DAODB.KhoaHocDAO;
import wp.DB.DBConnection;
import wp.model.KhoaHoc;


@WebServlet("/act_KhoaHoc")
public class act_KhoaHoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public act_KhoaHoc() {
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
			String  maKhoaHoc = request.getParameter("maKhoaHoc");
			KhoaHoc mp = KhoaHocDAO.Display_1KhoaHoc(maKhoaHoc, conn);

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
				String maKhoaHoc = request.getParameter("maKhoaHoc");
				String tenKhoaHoc =request.getParameter("tenKhoaHoc");
				
				System.out.println(maKhoaHoc);
				System.out.println(tenKhoaHoc);
				
				kt = false;	
				kt = KhoaHocDAO.InsertKhoaHoc(maKhoaHoc, tenKhoaHoc, conn);
			}
			else if(action==2) {
				
				String maKhoaHoc = request.getParameter("maKhoaHoc");
				String tenKhoaHoc =request.getParameter("tenKhoaHoc");
				System.out.println(maKhoaHoc);
				System.out.println(tenKhoaHoc);
				
					kt = false;
					kt = KhoaHocDAO.EditKhoaHoc(maKhoaHoc, tenKhoaHoc, conn);
					
			}
			
			else if(action==4) {
				String  maKhoaHoc =request.getParameter("maKhoaHoc");

				kt = false;
				kt = KhoaHocDAO.DeleteKhoaHoc(maKhoaHoc, conn);
			}
				
				
			if (kt || str_action==null) {
				System.out.println("Success!");
				List<KhoaHoc> list = KhoaHocDAO.DisplayKhoaHoc(conn);

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
