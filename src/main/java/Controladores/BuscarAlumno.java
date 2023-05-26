package Controladores;


import java.io.IOException;
import Models.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BuscarAlumno
 */
@WebServlet("/BuscarAlumno")
public class BuscarAlumno extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuscarAlumno() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String user = request.getParameter("nombre");
			String pass = request.getParameter("apellido");
			String cedula  = request.getParameter("cedula");
			
			BuscarAlumnos buscar = new BuscarAlumnos();
			
			Alumno unA = buscar.buscarAlumno(user, pass,Integer.parseInt(cedula));
			
			  response.setContentType("text/plain"); 
			  response.setCharacterEncoding("UTF-8"); 
			  response.getWriter().write(unA.toString());  

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
