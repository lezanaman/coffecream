package Com.CoffeCream.Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class sendR extends HttpServlet {

  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    try (PrintWriter out = response.getWriter()) {
        
        final String username = "coffechipgt@gmail.com";
        final String password = "dwmwyrlegqriurba";
        
        String to ="coffechipgt@gmail.com";
        String phone = request.getParameter("Tel");
        String fullname = request.getParameter("NombreC");
        String email = request.getParameter("Correo");
        String subject = "Reservas";
        String msj = request.getParameter("mensaje");
        String horaE= request.getParameter("horaE");
        String minutosE= request.getParameter("minutosE");
        String horaS = request.getParameter("horaS");
        String minutosS = request.getParameter("minutosS");
        String fecha = request.getParameter("fecha");
        String cant = request.getParameter("cant");
        System.out.println(msj);
        String nit = request.getParameter("nit");
        String direccion = request.getParameter("direccion");
        String list= request.getParameter("lista");
        
        System.out.println(list);
        
        final String cel="Celular:   ";
        final String nombre="Nombre:    ";
        final String correo="Correo:   ";
        final String mensaje="Consulta:   ";
        final String entrada="Entrada:   ";
        final String Salida="Salida:   ";
        final String fechaS="Fecha:   ";
        final String cantidad="Cantidad:   ";
        final String nitt="Nit:   ";
        final String direccionn="Direccion:   ";
        
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); 
        props.put("mail.smtp.port", "587");
        
        Session ses; 
        ses = Session.getInstance(
          props, 
          new javax.mail.Authenticator() {                  
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
              return new PasswordAuthentication(username, password);
            } 
        });
        
      try {
        
        Message message = new MimeMessage(ses);
        message.setFrom(new InternetAddress(username));
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
        message.setSubject(subject);
        
        message.setContent("<body>"+nombre+fullname+"<br/>"+correo+email+"<br/>"+cel+phone+"<br/>"+entrada+horaE+":"+minutosE+"<br/>"+Salida+horaS+":"+minutosS+"<br/>"+fechaS+fecha+"<br/>"+cantidad+cant+"<br/>"+nitt+nit+"<br/>"+direccionn+direccion+"<br/>"+mensaje+ msj +"</body>", "text/html; charset=utf-8");
        
        Transport.send(message);
        
        out.println("Correo enviado exitosamente!");
        
        
      } catch(MessagingException ex) {
          System.err.println(ex);
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
  }// </editor-fold>

}
