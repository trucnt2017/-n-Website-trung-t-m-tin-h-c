package wp.DAODB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import wp.model.TaiKhoan;

public class LoginDAO {
	public static int LoginUser(String tendangnhap, String matkhau, Connection conn) {

		int t = 0; //t xác định mã quyền của nv hay khách hàng, =0 kug có nghĩa k tồn tại account
		boolean tontai_account=false;
		
		PreparedStatement psmt = null;

		String sql = "select tenDangNhap, matKhau, phanQuyen from taikhoan";

		try {

			psmt = conn.prepareStatement(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

				String tenDangNhap = rs.getString("tenDangNhap");
				String matKhau = rs.getString("matKhau");
				int phanQuyen = rs.getInt("phanQuyen");
				
				if ((tenDangNhap.equals(tendangnhap)) && (matKhau.equals(matkhau)) && phanQuyen == 1) {
					t = 1;
					tontai_account=true;
					break;
				}
				else if ((tenDangNhap.equals(tendangnhap)) && (matKhau.equals(matkhau)) && phanQuyen == 2) {
					t = 2;
					tontai_account=true;
					break;
				}
				
				
				
			}
			
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return t;

	}
	

}
