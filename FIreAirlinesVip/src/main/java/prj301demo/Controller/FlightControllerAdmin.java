/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj301demo.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import prj301demo.Model.Flights.FlightDAO;
import prj301demo.Model.Flights.FlightDTO;

/**
 *
 * @author Lenovo
 */
public class FlightControllerAdmin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String keyword = request.getParameter("keyword");
            String action = request.getParameter("action");
            
            
            FlightDAO flightdao = new FlightDAO(); 
            
            HttpSession session = request.getSession(false);
            if(session == null || session.getAttribute("usersession")== null){
            response.sendRedirect("login");
            return;
            }
            
            
            if (keyword == null) keyword = "";
            
            if (action == null || action.equals("list")){  
                FlightDAO dao = new FlightDAO();
                List<FlightDTO> list = dao.flightlist(keyword);
                request.setAttribute("flightlist", list);
                request.getRequestDispatcher("/flight_admin.jsp").forward(request, response);
                
            }
            
            else if(action.equals("details")){
                Integer id = null;
                try {
                    id = Integer.parseInt(request.getParameter("id"));
                } catch (NumberFormatException e) {
                    log("Parameter id has wrong format.");
                }
                FlightDTO flight = null;
                if(id!=null){
                    flight = flightdao.load(id);
                }
                
                request.setAttribute("flight", flight);
                RequestDispatcher rd = request.getRequestDispatcher("flight_admin_details.jsp");
                rd.forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>f

}
