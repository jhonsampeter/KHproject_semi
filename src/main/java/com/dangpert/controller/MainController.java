package com.dangpert.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dangpert.dao.FoodDAO;
import com.dangpert.dao.GymDAO;
import com.dangpert.dto.FoodDTO;
import com.dangpert.dto.GymInfoDTO;

@WebServlet("*.main")
public class MainController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
	      String uri = request.getRequestURI(); 
	      System.out.println("요청 uri : " + uri);
	      
	         FoodDAO foodDAO = new FoodDAO();
	         GymDAO gymDAO = new GymDAO();

	         try {
	            ArrayList<GymInfoDTO> gymList = gymDAO.selectAllGym();
	            ArrayList<FoodDTO> foodList = foodDAO.selectPromo();
	               
	            request.setAttribute("gymList", gymList);
	            request.setAttribute("foodList", foodList);
	            
	            System.out.println("??"+gymList.toString());
	            System.out.println("??"+foodList.toString());
	               
	         }catch(Exception e) {
	            e.printStackTrace();
	         }
	         request.getRequestDispatcher("/main.jsp").forward(request, response);
		}
		
	}


