package com.movie.comment.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.movie.comment.dto.NewCinemaParadiseDTO;
import com.movie.comment.util.DBConnector;
import com.movie.comment.util.DateUtil;

public class OrangeDAO {

	List<NewCinemaParadiseDTO> dtoListOrange = new ArrayList<NewCinemaParadiseDTO>();

	public List<NewCinemaParadiseDTO> getComment() throws SQLException {
	  DBConnector db = new DBConnector();
	  Connection con = db.getConnection();

	  String sql = "select * from comments where id = 3 ORDER BY insert_date DESC";

	  try {
		  PreparedStatement ps = con.prepareStatement(sql);
		  ResultSet rs = ps.executeQuery();

		  while(rs.next()) {
			  NewCinemaParadiseDTO dto = new NewCinemaParadiseDTO();
			  dto.setId(rs.getString("id"));
			  dto.setName(rs.getString("name"));
			  dto.setStar(rs.getString("star"));
			  dto.setComment(rs.getString("comment"));
			  dto.setDate(rs.getString("insert_date"));
			  dtoListOrange.add(dto);
		  }
	  }catch (SQLException e) {
		  e.printStackTrace();
	  }finally {
		  con.close();
	  }

	  return dtoListOrange;


	}

	public int insert(String name, String star, String comment) throws SQLException {
		DateUtil dateUtil = new DateUtil();
		int ret = 0;
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "insert into comments (name, star, comment, insert_date, id) value(?,?,?,?,'3')";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, star);
			ps.setString(3, comment);
			ps.setString(4, dateUtil.getDate());

			int i = ps.executeUpdate();
			if(i>0) {
				System.out.println(i+"件の登録が完了しました。");
				ret = i;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
		return ret;
	}

}
