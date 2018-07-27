package kr.or.ddit.board.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import kr.or.ddit.board.dao.BoardDao;
import kr.or.ddit.board.dao.BoardDaoInf;
import kr.or.ddit.board.model.BoardVo;

public class BoardService implements BoardServiceInf {
	private BoardDaoInf boardDao = new BoardDao();

	/**
	* Method : getBoardList
	* 최초작성일 : 2018. 7. 5.
	* 작성자 : PC05
	* 변경이력 :
	* @return
	* Method 설명 :
	*/
	@Override
	public List<BoardVo> getBoardList() {
		return boardDao.getBoardList();
	}

}
