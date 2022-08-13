package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/Store")
public class StoreController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cat = String.valueOf(req.getParameter("cat"));
        String keyWord = req.getParameter("search");


        if (cat.equals("all"))
            req.setAttribute("products", ProductService.getInstance().getTop9());
        else if (cat.equals("family"))
            req.setAttribute("products", ProductService.getInstance().getProductFamilyGame());
        else if (cat.equals("card"))
            req.setAttribute("products", ProductService.getInstance().getProductCardGame());
        else if (cat.equals("combat"))
            req.setAttribute("products", ProductService.getInstance().getProductCombat());
        else if (cat.equals("art"))
            req.setAttribute("products", ProductService.getInstance().getProductArt());
        else if (cat.equals("adventure"))
            req.setAttribute("products", ProductService.getInstance().getProductAdventure());
        else if (cat.equals("dice"))
            req.setAttribute("products", ProductService.getInstance().getProductDice());
        else if (cat.equals("battle"))
            req.setAttribute("products", ProductService.getInstance().getProductBattleRoyale());
        else if (cat.equals("fighting"))
            req.setAttribute("products", ProductService.getInstance().getProductFighting());
        else if (cat.equals("puzzle"))
            req.setAttribute("products", ProductService.getInstance().getProductPuzzle());
        else if (cat.equals("party"))
            req.setAttribute("products", ProductService.getInstance().getProductPartyGame());
        else if (cat.equals("fantasy"))
            req.setAttribute("products", ProductService.getInstance().getProductFantasy());

        req.getRequestDispatcher("store.jsp").forward(req, resp);
    }
}
