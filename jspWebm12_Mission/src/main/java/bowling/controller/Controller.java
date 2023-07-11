package bowling.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface Controller {
	//추상 메소드
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}