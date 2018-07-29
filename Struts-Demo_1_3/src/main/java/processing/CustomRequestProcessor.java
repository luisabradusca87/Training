package processing;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.RequestProcessor;

import actionmappings.DisablingActionMapping;

public class CustomRequestProcessor extends RequestProcessor {

	protected ActionForward processActionPerform(HttpServletRequest request, HttpServletResponse response,
			Action action, ActionForm form, ActionMapping mapping) throws IOException, ServletException {
		ActionForward forward = null;
		if (!(mapping instanceof DisablingActionMapping)) {
			forward = super.processActionPerform(request, response, action, form, mapping);
		} else {
			DisablingActionMapping customMapping = (DisablingActionMapping) mapping;
			if (customMapping.isActionDisabled()) {
				forward = customMapping.findForward("underConstruction");
			} else {
				forward = super.processActionPerform(request, response, action, form, mapping);
			}
		}
		return forward;
	}

	// just for demonstration purposes
	protected ActionForward processException(HttpServletRequest request,
            HttpServletResponse response, Exception exception, ActionForm form,  ActionMapping mapping)
                    throws IOException, ServletException {
		
		return super.processException(request, response, exception, form, mapping);
	}
}