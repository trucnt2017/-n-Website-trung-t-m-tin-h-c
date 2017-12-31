package wp.DAODB;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import wp.model.DanKiOnline;

public class DangKiOnlineDAO {
	public static List<DanKiOnline> DisplayDangKiOnline(Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<DanKiOnline> list = new ArrayList<DanKiOnline>();

		String sql = "select * from dangkionline where maKhoaHoc='CSDL'";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				DanKiOnline nv = new DanKiOnline();
				
				nv.setMaDangKi(rs.getInt("maDangKi"));
				nv.setTenDangKi(rs.getNString("tenDangKi"));
				nv.setsDT(rs.getNString("sDT"));
				nv.setMaKhoaHoc(rs.getNString("maKhoaHoc"));
				nv.setMaLop(rs.getNString("maLop"));
				nv.setTenLop(rs.getNString("tenLop"));
				nv.setThoiGian(rs.getNString("thoiGian"));
				nv.setNgayKG(rs.getDate("ngayKG"));
				nv.setGhiChu(rs.getNString("ghiChu"));
			
				
				list.add(nv);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	public static List<DanKiOnline> DisplayDangKiOnline_THVP(Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<DanKiOnline> list = new ArrayList<DanKiOnline>();

		String sql = "select * from dangkionline where maKhoaHoc='KTHVP'";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				DanKiOnline nv = new DanKiOnline();
				
				nv.setMaDangKi(rs.getInt("maDangKi"));
				nv.setTenDangKi(rs.getNString("tenDangKi"));
				nv.setsDT(rs.getNString("sDT"));
				nv.setMaKhoaHoc(rs.getNString("maKhoaHoc"));
				nv.setMaLop(rs.getNString("maLop"));
				nv.setTenLop(rs.getNString("tenLop"));
				nv.setThoiGian(rs.getNString("thoiGian"));
				nv.setNgayKG(rs.getDate("ngayKG"));
				nv.setGhiChu(rs.getNString("ghiChu"));
			
				
				list.add(nv);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	public static boolean InsertDangKiOnline( String tenDangKi, String  sDT,String maKhoaHoc, String maLop,String tenLop, String thoiGian,Date ngayKG, String ghiChu, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call pr_themdangkionline(?,?,?,?,?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setNString(1, tenDangKi);
			cstm.setNString(2,  sDT);
			cstm.setNString(3, maKhoaHoc);
			cstm.setNString(4, maLop);
			cstm.setNString(5, tenLop);
			cstm.setNString(6, thoiGian);
			cstm.setDate(7, ngayKG);
			cstm.setNString(8, ghiChu);
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
	public static DanKiOnline Display_1DKO(int maDangKi, Connection conn) {
		DanKiOnline nv = new DanKiOnline();

		String sql = "select * from dangkionline where maDangKi='"+ maDangKi +"'";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

				nv.setMaDangKi(rs.getInt("maDangKi"));
				System.out.println(maDangKi);
				nv.setTenDangKi(rs.getNString("tenDangKi"));
				nv.setsDT(rs.getNString("sDT"));
				nv.setMaKhoaHoc(rs.getNString("maKhoaHoc"));
				nv.setMaLop(rs.getNString("maLop"));
				nv.setTenLop(rs.getNString("tenLop"));
				nv.setThoiGian(rs.getNString("thoiGian"));
				nv.setNgayKG(rs.getDate("ngayKG"));
				nv.setGhiChu(rs.getNString("ghiChu"));
				

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return nv;
	}
	public static boolean DeleteDangKiO(int id, Connection conn) {
		boolean t = false;
		// Câu lệnh gọi thủ tục (***)
		String sql = "{call pr_Deletedangkionline(?)}";

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
//	public static boolean EditHocVien(int maHocVien ,String tenHocVien, Date ngaySinh,String gioiTinh,String sDT, String diaChi, Connection conn) {
//		boolean t = false;
//
//		// Câu lệnh gọi thủ tục (***)
//		String sql = "{call pr_EditHocVien(?,?,?,?,?,?)}";
//
//		try {
//			// Tạo một đối tượng CallableStatement.
//			CallableStatement cstm = conn.prepareCall(sql);
//		
//			cstm.setInt(1, maHocVien);
//			cstm.setNString(2, tenHocVien);
//			cstm.setDate(3, ngaySinh);
//			cstm.setNString(4, gioiTinh);
//			cstm.setNString(5, sDT);
//			cstm.setNString(6, diaChi);
//			cstm.executeUpdate();
//
//			cstm.close(); // k đóng lại thì nếu gọi store khác nữa sẽ k đc
//
//			t = true;
//		}
//
//		catch (SQLException ex) {
//			// e.printStackTrace();
//			System.out.println(ex.getMessage());
//		}
//
//		return t;
//	}

}
