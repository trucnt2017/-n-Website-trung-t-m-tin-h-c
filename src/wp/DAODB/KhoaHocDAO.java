package wp.DAODB;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import wp.model.HocVien;
import wp.model.KhoaHoc;

public class KhoaHocDAO {
	
	public static List<KhoaHoc> DisplayKhoaHoc(Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<KhoaHoc> list = new ArrayList<KhoaHoc>();

		String sql = "select * from khoahoc";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				KhoaHoc nv = new KhoaHoc();
				
				nv.setMaKhoaHoc(rs.getNString("maKhoaHoc"));
				nv.setTenKhoaHoc(rs.getNString("tenKhoaHoc"));
				
				
				list.add(nv);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	
	public static boolean InsertKhoaHoc( String maKhoaHoc, String tenKhoaHoc, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call pr_khoahoc(?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setNString(1, maKhoaHoc);
			cstm.setNString(2,  tenKhoaHoc);
			
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
	public static KhoaHoc Display_1KhoaHoc(String maKhoaHoc, Connection conn) {
		KhoaHoc nv = new KhoaHoc();

		String sql = "select * from khoahoc where maKhoaHoc='"+ maKhoaHoc +"'";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				nv.setMaKhoaHoc(rs.getNString("maKhoaHoc"));
				System.out.println(maKhoaHoc);
				nv.setTenKhoaHoc(rs.getNString("tenKhoaHoc"));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return nv;
	}
	public static boolean DeleteKhoaHoc(String id, Connection conn) {
		boolean t = false;
		// Câu lệnh gọi thủ tục (***)
		String sql = "{call pr_DeleteKhoaHoc(?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setNString(1, id);
			
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
	public static boolean EditKhoaHoc(String maKhoaHoc, String tenKhoaHoc, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call pr_EditKhoaHoc(?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setNString(1, maKhoaHoc);
			cstm.setNString(2, tenKhoaHoc);
			
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

}
