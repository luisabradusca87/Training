import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "Extension of Servlet class", urlPatterns = { "/showData" },
	initParams = {
        @WebInitParam(name="training", value="Servlet"),
        @WebInitParam(name="topic", value="annotations")
    })
	public class ServletExample implements Servlet {
	    
	    private transient ServletConfig servletConfig;

	    @Override
	    public void init(ServletConfig servletConfig)
	            throws ServletException {
	        this.servletConfig = servletConfig;
	    }
	    
	    @Override
	    public ServletConfig getServletConfig() {
	        return servletConfig;
	    }

	    @Override
	    public String getServletInfo() {
	        return "My Servlet";
	    }

	    @Override
	    public void service(ServletRequest request,
	            ServletResponse response) throws ServletException,
	            IOException {
	        String servletName = servletConfig.getServletName();
	        String training = servletConfig.getInitParameter("training");
	        String topic = servletConfig.getInitParameter("topic");
	        
	        response.setContentType("text/html");
	        PrintWriter writer = response.getWriter();
	        writer.print("<!DOCTYPE html>"
	                + "<html>"
	                + "<h1>Servlet name: " + servletName 
	                + "</h1>"
	                + "<h2>WebInitParam: \"training\", value: " + servletName 
	                + "</h2>"
	                + "<h2>WebInitParam: \"topic\", value: " + servletName 
	                + "</h2>"
	                + "</html>");
	    }

	    @Override
	    public void destroy() {
	    }    

}
