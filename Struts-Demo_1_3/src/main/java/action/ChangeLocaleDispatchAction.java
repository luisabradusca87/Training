package action;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

public final class ChangeLocaleDispatchAction extends DispatchAction {

	private static final String SUCCESS = "success";

	/**
	 * Commons Logging instance.
	 */
	private Log log = LogFactory.getFactory().getInstance(this.getClass().getName());

	public ActionForward english(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return changeLanguage(mapping, form, request, "en");
	}
	
	public ActionForward german(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return changeLanguage(mapping, form, request, "de");
	}
	
	private ActionForward changeLanguage(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			String localeCode) throws Exception {
		// Extract attributes we will need
		HttpSession session = request.getSession();
		Locale locale = new java.util.Locale(localeCode);
		String page = null;
		
		try {
			page = (String) PropertyUtils.getSimpleProperty(form, "page");
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}


		// reset the Struts locale
		session.setAttribute("org.apache.struts.action.LOCALE", locale);

		if (null == page || "".equals(page))
			return mapping.findForward(SUCCESS);
		else
			return new ActionForward(page);
	}
	
	
}