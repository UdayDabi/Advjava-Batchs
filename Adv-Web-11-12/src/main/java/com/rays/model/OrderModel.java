package com.rays.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.rays.bean.OrderBean;
import com.rays.bean.UserBean;
import com.rays.exception.DuplicateRecordException;
import com.rays.util.JDBCDataSource;

public class OrderModel {
	public int nextPk() throws SQLException {

		int pk = 0;

		Connection conn = JDBCDataSource.getConnection();

		PreparedStatement pstmt = conn.prepareStatement("select max(id) from  St_order");

		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
			pk = rs.getInt(1);
		}

		return pk + 1;

	}

	public int add(OrderBean bean) throws Exception {

		Connection conn = JDBCDataSource.getConnection();

		PreparedStatement pstmt = conn.prepareStatement("insert into st_order values(?, ?, ?, ?, ?)");

		pstmt.setInt(1, nextPk());
		pstmt.setString(2, bean.getOrdername());
		pstmt.setString(3, bean.getOrderPrice());
		pstmt.setString(4, bean.getOrderQuanitity());
		pstmt.setDate(5, new java.sql.Date(bean.getOrderDate().getTime()));

		int i = pstmt.executeUpdate();

		System.out.println(i + " row affected(record inserted)");

		conn.close();
		pstmt.close();
		return bean.getId();

	}

	
	public OrderBean findByPk(int pk) throws Exception {

		Connection conn = JDBCDataSource.getConnection();

		PreparedStatement pstmt = conn.prepareStatement("select * from st_order where id = ?");

		pstmt.setInt(1, pk);

		ResultSet rs = pstmt.executeQuery();

		OrderBean bean = null;

		while (rs.next()) {
			bean = new OrderBean();
			bean.setId(rs.getInt(1));
			bean.setOrdername(rs.getString(2));
			bean.setOrderPrice(rs.getString(3));
			bean.setOrderQuanitity(rs.getString(4));
			bean.setOrderDate(rs.getDate(5));
		}

		conn.close();
		pstmt.close();
		return bean;
	}
	
	
	
	public void update(OrderBean bean) throws Exception {
		

		Connection conn = JDBCDataSource.getConnection();

		PreparedStatement pstmt = conn.prepareStatement(
				"update st_order set ordername = ?, orderprice = ?, orderQuanitity = ?, orderdate = ? where id = ?");

		pstmt.setString(1, bean.getOrdername());
		pstmt.setString(2, bean.getOrderPrice());
		pstmt.setString(3, bean.getOrderQuanitity());
		pstmt.setDate(4, new java.sql.Date(bean.getOrderDate().getTime()));
		pstmt.setInt(5, bean.getId());

		int i = pstmt.executeUpdate();

		System.out.println(i + " row affected(records updated...)");

		conn.close();
		pstmt.close();

	}
	public void delete(OrderBean bean) throws Exception {

		Connection conn = JDBCDataSource.getConnection();

		PreparedStatement pstmt = conn.prepareStatement("delete from st_order where id = ?");

		pstmt.setInt(1, bean.getId());

		int i = pstmt.executeUpdate();

		System.out.println(i + " row affected(records deleted...)");

		conn.close();
		pstmt.close();

	}

	public List search(OrderBean bean) throws Exception {

		Connection conn = JDBCDataSource.getConnection();

		StringBuffer sql = new StringBuffer("select * from st_order where 1=1");

//		if (bean != null) {
//			if (bean.getFirstName() != null && bean.getFirstName().length() > 0) {
//				sql.append(" and firstName like '" + bean.getFirstName() + "%'");
//			}
//			if (bean.getLastName() != null && bean.getLastName().length() > 0) {
//				sql.append(" and lastName like '" + bean.getLastName() + "%'");
//			}
//		}

		System.out.println("sql ===> " + sql.toString());
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());

		ResultSet rs = pstmt.executeQuery();

		List list = new ArrayList();

		while (rs.next()) {
			bean = new OrderBean();
			bean.setId(rs.getInt(1));
			bean.setOrdername(rs.getString(2));
			bean.setOrderPrice(rs.getString(3));
			bean.setOrderQuanitity(rs.getString(4));
			bean.setOrderDate(rs.getDate(5));
			list.add(bean);
		}

		conn.close();
		pstmt.close();
		return list;

	}

}
