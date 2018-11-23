package com.movie.comment.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.movie.comment.dto.NewCinemaParadiseDTO;
import com.movie.comment.util.DBConnector;

public class NewCinemaParadiseDAO {

	List<NewCinemaParadiseDTO> dtoList = new ArrayList<NewCinemaParadiseDTO>();

	public List<NewCinemaParadiseDTO> getComment() throws SQLException {
	  DBConnector db = new DBConnector();
	  Connection con = db.getConnection();

	  String sql = "select * from newcinema";

	  try {
		  PreparedStatement ps = con.prepareStatement(sql);
		  ResultSet rs = ps.executeQuery();

		  while(rs.next()) {
			  NewCinemaParadiseDTO dto = new NewCinemaParadiseDTO();
			  dto.setName(rs.getString("name"));
			  dto.setStar(rs.getString("star"));
			  dto.setComment(rs.getString("comment"));
			  dtoList.add(dto);
		  }
	  }catch (SQLException e) {
		  e.printStackTrace();
	  }finally {
		  con.close();
	  }

	  return dtoList;


	}

	public int insert(String name, String star, String comment) throws SQLException {
		int ret = 0;
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "insert into newcinema (name, star, comment) value(?,?,?)";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, star);
			ps.setString(3, comment);

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
