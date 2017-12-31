package wp.model;

import java.sql.Date;

public class DanKiOnline {
	  private int  maDangKi ;
	  private String  tenDangKi ;
	  private String sDT ;
	  private String ghiChu ;
	  private String maLop ;
	  private String tenLop;
	  private String thoiGian;
	  private Date ngayKG;
	  private String maKhoaHoc;
	  
	  public String getMaKhoaHoc() {
		return maKhoaHoc;
	}
	public void setMaKhoaHoc(String maKhoaHoc) {
		this.maKhoaHoc = maKhoaHoc;
	}
	public String getTenLop() {
			return tenLop;
		}
		public void setTenLop(String tenLop) {
			this.tenLop = tenLop;
		}
	public int getMaDangKi() {
		return maDangKi;
	}
	public void setMaDangKi(int maDangKi) {
		this.maDangKi = maDangKi;
	}
	public String getTenDangKi() {
		return tenDangKi;
	}
	public void setTenDangKi(String tenDangKi) {
		this.tenDangKi = tenDangKi;
	}
	public String getsDT() {
		return sDT;
	}
	public void setsDT(String sDT) {
		this.sDT = sDT;
	}
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	public String getMaLop() {
		return maLop;
	}
	public void setMaLop(String maLop) {
		this.maLop = maLop;
	}
	public String getThoiGian() {
		return thoiGian;
	}
	public void setThoiGian(String thoiGian) {
		this.thoiGian = thoiGian;
	}
	public Date getNgayKG() {
		return ngayKG;
	}
	public void setNgayKG(Date ngayKG) {
		this.ngayKG = ngayKG;
	}
	  

}
