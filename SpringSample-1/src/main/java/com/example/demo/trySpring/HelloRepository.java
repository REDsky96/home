package com.example.demo.trySpring;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class HelloRepository {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public Map<String, Object>findOne(int id){
		String sql = "select id, name, age from employee where id = ?";
		Map<String, Object>employee = jdbcTemplate.queryForMap(sql, id);
		return employee;
	}


}
