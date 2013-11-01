package com.cyou.ctu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cyou.ctu.model.BanAccountInfo;
import com.cyou.ctu.service.BanAccountInfoService;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Servlet implementation class Table
 */
@WebServlet("/Table")
public class Table extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static BanAccountInfoService service = new BanAccountInfoService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Table() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String account = request.getParameter("account");
	    String charName = request.getParameter("charName");
	    String ip = request.getParameter("ip");
	    String ruleName = request.getParameter("ruleName");
	    String date = request.getParameter("date");
	    
	    ObjectMapper mapper = new ObjectMapper();
	    BanAccountInfo uers1 = new BanAccountInfo();
	    uers1.setAccount(account);
	    uers1.setCharName(charName);
	    uers1.setIp(ip);
	    uers1.setRuleName(ruleName);
	    uers1.setDate(date);
	    service.addBanAccountInfo(uers1);
	    String json = mapper.writeValueAsString(service.getData());
	    response.getWriter().append(json);
	}
}

