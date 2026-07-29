package com.rays.test;

import java.sql.SQLException;

import com.rays.model.OrderModel;

public class Testorder {
	public static void main(String[] args) throws SQLException {
		testnextPk();
	}

	private static void testnextPk() throws SQLException {
		OrderModel model = new OrderModel();
		int i = model.nextPk();
		System.out.println("Next id is " + i);

	}
}
