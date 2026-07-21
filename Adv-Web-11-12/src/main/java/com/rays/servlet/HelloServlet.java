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
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("in doGet() ===> method");

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		String dob = request.getParameter("dob");

		System.out.println(firstname);
		System.out.println(lastname);
		System.out.println(login);
		System.out.println(password);
		System.out.println(dob);

		RequestDispatcher rd = request.getRequestDispatcher("HelloView.jsp");
		rd.forward(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		String dob = request.getParameter("dob");

		System.out.println(firstname);
		System.out.println(lastname);
		System.out.println(login);
		System.out.println(password);
		System.out.println(dob);
		RequestDispatcher rd = request.getRequestDispatcher("HelloView.jsp");
		rd.forward(request, response);
	}

}
