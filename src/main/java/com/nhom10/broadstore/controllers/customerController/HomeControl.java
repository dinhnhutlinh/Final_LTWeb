package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.services.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/Home")
public class HomeControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("familyGame", ProductService.getInstance().getProductFamilyGame());
        req.setAttribute("cardGame", ProductService.getInstance().getProductCardGame());
        req.setAttribute("combat", ProductService.getInstance().getProductCombat());
        req.setAttribute("art", ProductService.getInstance().getProductArt());
        req.setAttribute("adventure", ProductService.getInstance().getProductAdventure());
        req.setAttribute("dice", ProductService.getInstance().getProductDice());
        req.setAttribute("battleRoyale", ProductService.getInstance().getProductBattleRoyale());
        req.setAttribute("fighting", ProductService.getInstance().getProductFighting());
        req.setAttribute("puzzle", ProductService.getInstance().getProductPuzzle());
        req.setAttribute("partyGame", ProductService.getInstance().getProductPartyGame());
        req.setAttribute("fantasy", ProductService.getInstance().getProductFantasy());
        RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}