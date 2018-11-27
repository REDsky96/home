package com.movie.comment.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.movie.comment.dao.OrangeDAO;
import com.movie.comment.dto.NewCinemaParadiseDTO;
import com.opensymphony.xwork2.ActionSupport;

public class Orange extends ActionSupport implements SessionAware {

	private Map<String,Object>session;
	List<NewCinemaParadiseDTO> dtoListOrange = new ArrayList<NewCinemaParadiseDTO>();



	public String execute() throws SQLException {
		String ret = ERROR;
		OrangeDAO dao = new OrangeDAO();


			dtoListOrange = dao.getComment();
			session.put("dtoListOrange", dtoListOrange);

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
