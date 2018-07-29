package exceptions;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.config.ExceptionConfig;

public class DuplicateKeyExceptionHandler extends org.apache.struts.action.ExceptionHandler {
	public ActionForward execute(java.lang.Exception ex, ExceptionConfig ec, ActionMapping mapping,
			ActionForm formInstance, javax.servlet.http.HttpServletRequest request,
			javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException {
		request.getSession(true).setAttribute("error", ec.getKey());
		return mapping.findForward("error");
	}
}
