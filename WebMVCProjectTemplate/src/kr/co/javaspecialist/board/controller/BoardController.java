package kr.co.javaspecialist.board.controller;

import kr.co.javaspecialist.board.model.BoardDAO;
import kr.co.javaspecialist.board.model.IBoardDAO;
import kr.co.javaspecialist.common.controller.CommandHandler;

public abstract class BoardController implements CommandHandler {

	IBoardDAO dao = new BoardDAO();
}
