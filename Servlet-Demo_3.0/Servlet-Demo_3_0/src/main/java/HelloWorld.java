import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * Multiple examples of annotations

@WebServlet("/sayHello")

@WebServlet(
		urlPatterns = {"/sayHello", "/sayGoodbye"},  

 */


@WebServlet(
		name = "SayHello",
		description = "A sample annotated servlet",
		urlPatterns = {"/sayHello"}  )
public class HelloWorld  extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
		  // Set response content type
	      response.setContentType("text/html");

	      // Actual logic goes here.
	      PrintWriter out = response.getWriter();
	      out.println("<h1>" + "Hello" + "</h1>");
    }
}