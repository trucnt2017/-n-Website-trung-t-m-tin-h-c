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

public class HocVienDAO {
	public static List<HocVien> DisplayHocVien(Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<HocVien> list = new ArrayList<HocVien>();

		String sql = "select * from hocvien";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				HocVien nv = new HocVien();
				
				nv.setMaHocVien(rs.getInt("maHocVien"));
				nv.setTenHocVien(rs.getNString("tenHocVien"));
				nv.setNgaySinh(rs.getDate("ngaySinh"));
				nv.setGioiTinh(rs.getNString("gioiTinh"));
				nv.setsDT(rs.getNString("sDT"));
				nv.setDiaChi(rs.getNString("diaChi"));
				
				list.add(nv);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	public static boolean InsertHocVien( String tenHocVien,Date ngaySinh, String  gioiTinh, String sDT, String diaChi, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call pr_themhocvien(?,?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setNString(1, tenHocVien);
			cstm.setDate(2,  ngaySinh);
			cstm.setNString(3, gioiTinh);
			cstm.setNString(4, sDT);
			cstm.setNString(5, diaChi);
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
	public static HocVien Display_1HocVien(int maHocVien, Connection conn) {
		HocVien nv = new HocVien();

		String sql = "select * from hocvien where maHocVien='"+ maHocVien +"'";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

				nv.setMaHocVien(rs.getInt("maHocVien"));
				System.out.println(maHocVien);
				nv.setTenHocVien(rs.getNString("tenHocVien"));
			
				nv.setNgaySinh(rs.getDate("ngaySinh"));
				nv.setGioiTinh(rs.getNString("gioiTinh"));
				nv.setsDT(rs.getNString("sDT"));
				nv.setDiaChi(rs.getNString("diaChi"));

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return nv;
	}
	public static boolean DeleteHocVien(int id, Connection conn) {
		boolean t = false;
		// Câu lệnh gọi thủ tục (***)
		String sql = "{call pr_DeleteHocVien(?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setInt(1, id);
			
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
	public static boolean EditHocVien(int maHocVien ,String tenHocVien, Date ngaySinh,String gioiTinh,String sDT, String diaChi, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call pr_EditHocVien(?,?,?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setInt(1, maHocVien);
			cstm.setNString(2, tenHocVien);
			cstm.setDate(3, ngaySinh);
			cstm.setNString(4, gioiTinh);
			cstm.setNString(5, sDT);
			cstm.setNString(6, diaChi);
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
