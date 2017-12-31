package wp.DAODB;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.model.KhoaHoc;
import wp.model.TaiKhoan;


@WebServlet("/TaiKhoanDAO")
public class TaiKhoanDAO  {

	public static List<TaiKhoan> DisplayTaiKhoan(Connection conn) {
		// Láº¥y ra káº¿t ná»‘i tá»›i cÆ¡ sá»Ÿ dá»¯ liá»‡u.

		List<TaiKhoan> list = new ArrayList<TaiKhoan>();

		String sql = "select * from taikhoan";

		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				TaiKhoan tk = new TaiKhoan();
				
				tk.setTenDangNhap(rs.getNString("tenDangNhap"));
				tk.setMatKhau(rs.getNString("matKhau"));
				tk.setPhanQuyen(rs.getInt("phanQuyen"));
				
				list.add(tk);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	
	public static boolean InsertTaiKhoan( String tenDangNhap, String matKhau, int phanQuyen, Connection conn) {
		boolean t = false;

		// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
		String sql = "{call pr_themtaikhoan(?,?,?)}";

		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setNString(1, tenDangNhap);
			cstm.setNString(2,  matKhau);
			cstm.setInt(3, phanQuyen);
			
			cstm.executeUpdate();
			cstm.close(); // k Ä‘Ã³ng láº¡i thÃ¬ náº¿u gá»�i store khÃ¡c ná»¯a sáº½ k Ä‘c
			
			t = true;
		}

		catch (SQLException ex) {
			// e.printStackTrace();
			System.out.println(ex.getMessage());
		}

		return t;
	}
	public static boolean DeleteTaiKhoan(String id, Connection conn) {
		boolean t = false;
		// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
		String sql = "{call pr_DeletetTaiKhoan(?)}";

		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setNString(1, id);
			
			cstm.executeUpdate();

			cstm.close(); // k Ä‘Ã³ng láº¡i thÃ¬ náº¿u gá»�i store khÃ¡c ná»¯a sáº½ k Ä‘c

			t = true;
		}

		catch (SQLException ex) {
			// e.printStackTrace();
			System.out.println(ex.getMessage());
		}

		return t;
	}
	public static TaiKhoan Display_1TaiKhoan(String tenDangNhap, Connection conn) {
		TaiKhoan tk = new TaiKhoan();

		String sql = "select * from taikhoan where tenDangNhap='"+ tenDangNhap +"'";

		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				tk.setTenDangNhap(rs.getNString("tenDangNhap"));
				tk.setMatKhau(rs.getNString("matKhau"));
				System.out.println(tenDangNhap);
				tk.setPhanQuyen(rs.getInt("phanQuyen"));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return tk;
	}
	public static boolean EditTaiKhoan(String tenDangNhap, String matKhau,int phanQuyen, Connection conn) {
		boolean t = false;

		// CÃ¢u lá»‡nh gá»�i thá»§ tá»¥c (***)
		String sql = "{call pr_EditTaiKhoan(?,?,?)}";

		try {
			// Táº¡o má»™t Ä‘á»‘i tÆ°á»£ng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setNString(1, tenDangNhap);
			cstm.setNString(2, matKhau);
			cstm.setInt(3, phanQuyen);
			
			cstm.executeUpdate();

			cstm.close(); // k Ä‘Ã³ng láº¡i thÃ¬ náº¿u gá»�i store khÃ¡c ná»¯a sáº½ k Ä‘c

			t = true;
		}

		catch (SQLException ex) {
			// e.printStackTrace();
			System.out.println(ex.getMessage());
		}

		return t;
	}


}
