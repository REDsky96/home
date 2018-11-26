package com.movie.comment.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.movie.comment.dao.NewCinemaParadiseDAO;
import com.movie.comment.dto.NewCinemaParadiseDTO;
import com.opensymphony.xwork2.ActionSupport;

public class NewCinemaParadise extends ActionSupport implements SessionAware{


	private Map<String,Object>session;
	List<NewCinemaParadiseDTO> dtoList = new ArrayList<NewCinemaParadiseDTO>();



	public String execute() throws SQLException {
		String ret = ERROR;
		NewCinemaParadiseDAO dao = new NewCinemaParadiseDAO();


			dtoList = dao.getComment();
			session.put("dtoList", dtoList);

			ret = SUCCESS;

		return ret;
    }

	public Map<String, Object> getSession(){
		return session;
	}

	public void setSession(Map<String, Object>session) {
		this.session = session;
	}


}
