package wp.DAODB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import wp.model.Diem;

public class DiemDAO {
	
	public static List<Diem> DisplayDiem(Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<Diem> list = new ArrayList<Diem>();

		String sql = "select * from diem ";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				Diem nv = new Diem();
				
				nv.setMaHocVien(rs.getInt("maHocVien"));
				nv.setMaLop(rs.getNString("maLop"));
				nv.setDiem1(rs.getFloat("diem1"));
				nv.setDiem2(rs.getFloat("diem2"));
				nv.setDiemtb(rs.getFloat("diemtb"));
				
				
				list.add(nv);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	
	

}
