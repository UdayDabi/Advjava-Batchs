package com.rays.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.rays.bean.UserBean;
import com.rays.util.JDBCDataSource;

public class UserModel {
	public int nextPk() throws SQLException {

		int pk = 0;

		Connection conn = JDBCDataSource.getConnection();

		PreparedStatement pstmt = conn.prepareStatement("select max(id) from st_user");

		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
			pk = rs.getInt(1);
		}

		return pk + 1;

	}
	public int add(UserBean bean) throws Exception {

//		UserBean existsBean = findByLogin(bean.getLogin());
//
//		if (existsBean != null) {
//			throw new DuplicateRecordException("email id already exists");
//		}

		Connection conn = JDBCDataSource.getConnection();

		PreparedStatement pstmt = conn.prepareStatement("insert into st_user values(?, ?, ?, ?, ?, ?)");

		pstmt.setInt(1, nextPk());
		pstmt.setString(2, bean.getFirstName());
		pstmt.setString(3, bean.getLastName());
		pstmt.setString(4, bean.getLogin());
		pstmt.setString(5, bean.getPassword());
		pstmt.setDate(6, new java.sql.Date(bean.getDob().getTime()));

		int i = pstmt.executeUpdate();

		System.out.println(i + " row affected(record inserted)");

		conn.close();
		pstmt.close();
		return bean.getId();

	}
}
