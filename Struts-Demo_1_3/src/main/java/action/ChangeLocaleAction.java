package action;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public final class ChangeLocaleAction extends Action {

	private static final String SUCCESS = "success";

	private Log log = LogFactory.getFactory().getInstance(this.getClass().getName());

	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		// Extract attributes we will need
		HttpSession session = request.getSession();
		Locale locale = getLocale(request);

		String language = null;
		String page = null;

		try {
			language = (String) PropertyUtils.getSimpleProperty(form, "language");
			page = (String) PropertyUtils.getSimpleProperty(form, "page");
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}

		boolean isLanguage = language != null && language.length() > 0;
		if (isLanguage) {
			locale = new java.util.Locale(language, "");
		}

		// reset the Struts locale
		session.setAttribute("org.apache.struts.action.LOCALE", locale);

		if (null == page || "".equals(page))
			return mapping.findForward(SUCCESS);
		else
			return new ActionForward(page);
	}
}