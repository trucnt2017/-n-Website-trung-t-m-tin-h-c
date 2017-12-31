package wp.DAODB;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import wp.model.HocVien_Lop;

public class HocVien_LopDAO {
	public static List<HocVien_Lop> DisplayHocVien_Lop(Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<HocVien_Lop> list = new ArrayList<HocVien_Lop>();

		String sql = "select * from hocvien_lop";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				HocVien_Lop nv = new HocVien_Lop();
				
				nv.setMaHocVien(rs.getInt("maHocVien"));
				nv.setMaLop(rs.getNString("maLop"));
				
				
				list.add(nv);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	public static boolean InsertHocVien_Lop( int  maHocVien, String maLop, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call pr_ThemHocVien_Lop(?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setInt(1, maHocVien);
			cstm.setNString(2,  maLop);
			
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
	public static boolean DeleteHocVien_Lop(int  maHocVien,String maLop, Connection conn) {
		boolean t = false;
		// Câu lệnh gọi thủ tục (***)
		String sql = "{call pr_DeletetHocVien_Lop(?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setInt(1, maHocVien);
			cstm.setNString(2, maLop);
			
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
