/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.AddressDAO;
import dal.CartDAO;
import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Address_Detail;
import model.Cart;
import model.Item;
import model.User;
import org.apache.tomcat.jni.SSLContext;

/**
 *
 * @author ASUS
 */
@WebServlet(name="CheckoutServlet", urlPatterns={"/checkout"})
public class CheckoutServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CheckoutServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckoutServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Cookie[] arr=request.getCookies();
       
        String txt="";
        if(arr!=null){
            for (Cookie o:arr) {
                if(o.getName().equals("cart"))
                txt+=o.getValue();
            }
        }
         User u= (User) request.getSession().getAttribute("userNow");
        Cart cart=new Cart(txt,u);
        List<Item> listItem= cart.getItems();
        int totalQuantity;
        if(listItem!=null){
            totalQuantity=listItem.size();
        }else{
            totalQuantity=0;
        }
        AddressDAO adao=new AddressDAO();
        List<Address_Detail> listad=adao.getAddressByUserID(u.getId());
        
        Address_Detail ad=adao.getDefaultAddress(u.getId());
        
        request.setAttribute("ad", ad);
        request.setAttribute("listad", listad);
        request.setAttribute("totalQuan", totalQuantity);
        request.setAttribute("listItem", listItem);
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    } 
    public static void main(String[] args) {
        
         AddressDAO adao=new AddressDAO();
        List<Address_Detail> lista=adao.getAddressByUserID(10);
           System.out.println(lista);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
      
        Cookie arr[]=request.getCookies();
        String txt="";
        if(arr!=null){
            for(Cookie c: arr){
                if(c.getName().equals("cart")) txt=txt+c.getValue();
                c.setMaxAge(0);
                response.addCookie(c);
            }
        }
        int address_id=Integer.parseInt(request.getParameter("radio_address"));
        User u= (User)request.getSession().getAttribute("userNow");
        Cart cart=new Cart(txt,u);
        List<Item> listItem=cart.getItems();
        OrderDAO dao=new OrderDAO();
        dao.addOrder1(u,address_id, cart);
        response.sendRedirect("home");
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
