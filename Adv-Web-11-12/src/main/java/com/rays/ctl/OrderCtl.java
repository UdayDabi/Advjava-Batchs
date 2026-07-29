package com.rays.ctl;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rays.bean.OrderBean;
import com.rays.bean.UserBean;
import com.rays.model.OrderModel;
import com.rays.model.UserModel;

@WebServlet("/OrderCtl")
public class OrderCtl extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		OrderModel model = new OrderModel();
		String id = request.getParameter("id");
		if (id != null) {
			try {
				OrderBean bean = model.findByPk(Integer.parseInt(id));
				request.setAttribute("bean", bean);

			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		RequestDispatcher rd = request.getRequestDispatcher("OrderView.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		OrderBean bean = new OrderBean();
		OrderModel model = new OrderModel();
		String op = request.getParameter("operation");

		String ordername = request.getParameter("ordername");
		String orderprice = request.getParameter("orderprice");
		String orderquanitity = request.getParameter("orderquanitity");
		String orderdate = request.getParameter("orderdate");

		try {
			bean.setOrdername(ordername);
			bean.setOrderPrice(orderprice);
			bean.setOrderQuanitity(orderquanitity);
			bean.setOrderDate(sdf.parse(orderdate));
			if (op.equals("update")) {
				bean.setId(Integer.parseInt(request.getParameter("id")));
				request.setAttribute("bean", bean);
				model.update(bean);
				System.out.println("Order added successfully");
				request.setAttribute("successMsg", "Order updated successfully");
			} else {
				model.add(bean);
				System.out.println("user added successfully");
				request.setAttribute("successMsg", "user added successfully");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("OrderView.jsp");
		rd.forward(request, response);
	}

}