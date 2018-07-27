package kr.or.ddit.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.or.ddit.board.model.BoardVo;
import kr.or.ddit.mybatis.SqlMapSessionFactory;

public class BoardDao implements BoardDaoInf {
	private SqlSessionFactory sqlSessionFactory = SqlMapSessionFactory.getSqlSessionFactory();

	@Override
	public List<BoardVo> getBoardList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<BoardVo> boardList= session.selectList("board.getBoardList");
		session.close();
		return boardList;
	}

}
