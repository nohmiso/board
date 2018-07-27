package kr.or.ddit.board;

import static org.junit.Assert.assertEquals;

import java.util.Iterator;
import java.util.List;

import kr.or.ddit.board.dao.BoardDao;
import kr.or.ddit.board.dao.BoardDaoInf;
import kr.or.ddit.board.model.BoardVo;

import org.junit.Test;

public class BoardTest {

	@Test
	private void selectAllBoardTest() {
		/***Given***/
		BoardDaoInf boardDao = new BoardDao();

		/***When***/
		List<BoardVo> boardList = boardDao.getBoardList();

		for(BoardVo vo : boardList){
			System.out.println(vo);
		}
		
		/***Then***/
		assertEquals(15, boardList.size());
	}

}
