package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import board.service.BoardService;
import board.vo.Board;

@WebServlet("/board/selectOne")
public class SelectOneServlet extends HttpServlet {
	 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String inputSearch = req.getParameter("inputSearch");
		
		try {
			BoardService service = new BoardService();
			
			Board board = service.selectOne(inputSearch);
			
			new Gson().toJson(board, resp.getWriter());
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	
	}
}
