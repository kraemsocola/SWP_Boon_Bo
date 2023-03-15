/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package admin;

import dal.CategoryDAO;
import dal.DashboardDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Category;
import model.Order;
import model.OrderDetail;
import model.Product;
import model.User;

/**
 *
 * @author asus
 */
@WebServlet(name = "OrderList", urlPatterns = {"/orderlist"})
public class OrderList extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OrderList</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderList at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String status_id = request.getParameter("status_id");
        DashboardDAO dd = new DashboardDAO();
        List<Order> o = null;
        if (status_id == null) {
            o = dd.getAllOrder();
        } else {
            int status = Integer.parseInt(status_id);
            o = dd.getOrderByID(status);
            if (o.isEmpty() && status != 0) {
                request.setAttribute("msg", "No orders found!");
            }
            if (status == 0) {
                o = dd.getAllOrder();
            }
        }
        request.setAttribute("orderlist", o);
        request.getRequestDispatcher("dashboard/orderlist.jsp").forward(request, response);
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
        request.setCharacterEncoding("UTF-8");
       String order_id_raw = request.getParameter("oid");
        int order_id = Integer.parseInt(order_id_raw);    
        String status_id_raw = request.getParameter("sttid");
        int statusid = Integer.parseInt(status_id_raw);
        DashboardDAO dd = new DashboardDAO();
        try {
            OrderDetail od = dd.getOrderDetailById(order_id);
            od.getOrder().setStatus_id(statusid);
            dd.updateStatus(od);
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
         response.sendRedirect("orderlist?status_id=4");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}