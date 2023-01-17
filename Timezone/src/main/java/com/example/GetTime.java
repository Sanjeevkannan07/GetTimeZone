package com.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetTime extends HttpServlet{
		public void doGet(HttpServletRequest req,HttpServletResponse res) {
			  try {
				PrintWriter out = res.getWriter();
				String x = req.getParameter("option");
				SimpleDateFormat date =  new SimpleDateFormat();
				date.setTimeZone(TimeZone.getTimeZone(x));
				date.applyPattern("dd MMM yyyy HH:mm:ss z");
				String time = date.format(Calendar.getInstance().getTime());
				req.setAttribute("t",time);
				RequestDispatcher rs = req.getRequestDispatcher("/time.jsp");
				rs.forward(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
}
