package kr.or.ddit.boardProduce.model;

public class boardProduceVo {

	private int BOARD_ORDER;
	private String BOARD_WRITER;
	private String BOARD_DATE;

	//get set
	public int getBOARD_ORDER() {
		return BOARD_ORDER;
	}
	public void setBOARD_ORDER(int bOARD_ORDER) {
		BOARD_ORDER = bOARD_ORDER;
	}
	public String getBOARD_WRITER() {
		return BOARD_WRITER;
	}
	public void setBOARD_WRITER(String bOARD_WRITER) {
		BOARD_WRITER = bOARD_WRITER;
	}
	public String getBOARD_DATE() {
		return BOARD_DATE;
	}
	public void setBOARD_DATE(String bOARD_DATE) {
		BOARD_DATE = bOARD_DATE;
	}
	
	//tostring
	@Override
	public String toString() {
		return "boardProduceVo [BOARD_ORDER=" + BOARD_ORDER + ", BOARD_WRITER="
				+ BOARD_WRITER + ", BOARD_DATE=" + BOARD_DATE + "]";
	}
	
	
}
