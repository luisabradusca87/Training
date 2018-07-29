package processing;

import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextLoader implements ServletContextListener {
    public void contextInitialized(ServletContextEvent event) {
        ServletContext ctx = event.getServletContext( );
        ctx.setAttribute("dateStarted", new Date( ));
    }
    public void contextDestroyed(ServletContextEvent event) {
        // clean up here
    }
}