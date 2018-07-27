package kr.or.ddit.board.dao;

import java.util.List;

import kr.or.ddit.board.model.BoardVo;

public interface BoardDaoInf {
	/**
	* Method : getBoardList
	* 최초작성일 : 2018. 7. 5.
	* 작성자 : PC05
	* 변경이력 :
	* @return
	* Method 설명 :
	*/
	List<BoardVo> getBoardList();
}
