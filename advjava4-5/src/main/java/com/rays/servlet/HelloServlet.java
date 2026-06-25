package com.rays.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher rd = req.getRequestDispatcher("AddUser.jsp");
		rd.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("in doPost() ===> method");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("LastName");
		String loginId = request.getParameter("login");
		String password = request.getParameter("password");
		String dob = request.getParameter("dob");
		String address = request.getParameter("Address");

		
		System.out.println(firstName + "\n" + lastName + "\n" + loginId + "\n" + password + "\n" + dob + "\n" + address);
		RequestDispatcher rd = request.getRequestDispatcher("AddUser.jsp");
		rd.forward(request, response);

	}

}
