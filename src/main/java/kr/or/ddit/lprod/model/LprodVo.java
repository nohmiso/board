package kr.or.ddit.lprod.model;

public class LprodVo {

	private int NO;
	private int PNO;
	private int GNO;
	private String TITLE;

	//get set
	public int getNO() {
		return NO;
	}
	public void setNO(int nO) {
		NO = nO;
	}
	public int getPNO() {
		return PNO;
	}
	public void setPNO(int pNO) {
		PNO = pNO;
	}
	public int getGNO() {
		return GNO;
	}
	public void setGNO(int gNO) {
		GNO = gNO;
	}
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}
	
	//tostring
	@Override
	public String toString() {
		return "LprodVo [NO=" + NO + ", PNO=" + PNO + ", GNO=" + GNO
				+ ", TITLE=" + TITLE + "]";
	}

	
}
