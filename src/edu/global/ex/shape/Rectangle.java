package edu.global.ex.shape;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Rectangle {
	
	private double width, height;

	public Rectangle(double wid, double hei) {
		width = wid;
		height = hei;
	}

	public void showPerimeter() {
		double peri = width + height;
		System.out.println("둘레: " + peri);
	}

	public double getArea() {
		double area = width * height;
		return area;
	}
}