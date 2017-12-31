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
import wp.model.Lop;

public class LopDAO {
	public static List<Lop> DisplayLop(Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<Lop> list = new ArrayList<Lop>();

		String sql = "select * from lop ";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				
				Lop nv = new Lop();
				nv.setMaKhoaHoc(rs.getNString("maKhoaHoc"));
				nv.setMaLop(rs.getNString("maLop"));
				nv.setTenLop(rs.getNString("tenLop"));
				nv.setThoiGian(rs.getNString("thoiGian"));
				nv.setNgayKG(rs.getDate("ngayKG"));
				nv.setHocPhi(rs.getInt("hocPhi"));
				nv.setSoTiet(rs.getInt("soTiet"));
				nv.setPhong(rs.getNString("phong"));
				
				list.add(nv);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	
	public static List<Lop> DisplayLop_CSDL(Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<Lop> list = new ArrayList<Lop>();

		String sql = "select * from lop where maKhoaHoc='CSDL' ";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				
				Lop nv = new Lop();
				nv.setMaKhoaHoc(rs.getNString("maKhoaHoc"));
				nv.setMaLop(rs.getNString("maLop"));
				nv.setTenLop(rs.getNString("tenLop"));
				nv.setThoiGian(rs.getNString("thoiGian"));
				nv.setNgayKG(rs.getDate("ngayKG"));
				nv.setHocPhi(rs.getInt("hocPhi"));
				nv.setSoTiet(rs.getInt("soTiet"));
				nv.setPhong(rs.getNString("phong"));
				
				list.add(nv);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	public static List<Lop> DisplayLop_KTHVP(Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<Lop> list = new ArrayList<Lop>();

		String sql = "select * from lop where maKhoaHoc='KTHVP' ";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				
				Lop nv = new Lop();
				nv.setMaKhoaHoc(rs.getNString("maKhoaHoc"));
				nv.setMaLop(rs.getNString("maLop"));
				nv.setTenLop(rs.getNString("tenLop"));
				nv.setThoiGian(rs.getNString("thoiGian"));
				nv.setNgayKG(rs.getDate("ngayKG"));
				nv.setHocPhi(rs.getInt("hocPhi"));
				nv.setSoTiet(rs.getInt("soTiet"));
				nv.setPhong(rs.getNString("phong"));
				
				list.add(nv);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	public static List<Lop> DisplayLop_MMT(Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<Lop> list = new ArrayList<Lop>();

		String sql = "select * from lop where maKhoaHoc='MMT' ";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				
				Lop nv = new Lop();
				nv.setMaKhoaHoc(rs.getNString("maKhoaHoc"));
				nv.setMaLop(rs.getNString("maLop"));
				nv.setTenLop(rs.getNString("tenLop"));
				nv.setThoiGian(rs.getNString("thoiGian"));
				nv.setNgayKG(rs.getDate("ngayKG"));
				nv.setHocPhi(rs.getInt("hocPhi"));
				nv.setSoTiet(rs.getInt("soTiet"));
				nv.setPhong(rs.getNString("phong"));
				
				list.add(nv);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	public static boolean InsertLop( String maKhoaHoc,String  maLop,String tenLop ,String thoiGian, Date NgayKG, int hocPhi,int soTiet,String phong, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call pr_themlophoc(?,?,?,?,?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setNString(1, maKhoaHoc);
			cstm.setNString(2,  maLop);
			cstm.setNString(3, tenLop);
			cstm.setNString(4, thoiGian);
			cstm.setDate(5, NgayKG);
			cstm.setInt(6, hocPhi);
			cstm.setInt(7, soTiet);
			cstm.setNString(8, phong);
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
	public static Lop Display_1Lop(String  maLop, Connection conn) {
		Lop nv = new Lop();

		String sql = "select * from lop where maLop='"+ maLop +"'";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {

				nv.setMaLop(rs.getNString("maLop"));
				System.out.println(maLop);
				nv.setTenLop(rs.getNString("tenLop"));
				nv.setNgayKG(rs.getDate("ngayKG"));
				nv.setPhong(rs.getNString("phong"));
				nv.setThoiGian(rs.getNString("thoiGian"));
				nv.setMaKhoaHoc(rs.getNString("maKhoaHoc"));
				nv.setHocPhi(rs.getInt("hocPhi"));
				nv.setSoTiet(rs.getInt("soTiet"));

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return nv;
	}
	public static boolean DeleteLop(String  id, Connection conn) {
		boolean t = false;
		// Câu lệnh gọi thủ tục (***)
		String sql = "{call pr_DeleteLop(?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setString(1, id);
			
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
	public static boolean EditLop(String maKhoaHoc ,String maLop,String tenLop,String thoiGian, Date ngayKG,String phong,int hocPhi, int soTiet, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call pr_EditLop(?,?,?,?,?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setNString(1, maKhoaHoc);
			cstm.setNString(2, maLop);
			cstm.setNString(3, tenLop);
			cstm.setNString(4, thoiGian);
			cstm.setDate(5, ngayKG);
			cstm.setInt(6, soTiet);
			cstm.setInt(7, hocPhi);
		
			cstm.setNString(8, phong);
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