package edu.global.ex.shape;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Circle {
	static final double PI = 3.1415;
	private double radius;

	public Circle(double rad) {
		radius = rad;
	}

	public void showPerimeter() {
		double peri = (radius * 2) * PI;
		System.out.println("둘레: " + peri);
	}

	public double getArea() {
		double area = (radius * radius) * PI;
		return area;
	}
}