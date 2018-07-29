package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public final class DuplicateKeyExceptionAction extends Action {

	/**
	 * Commons Logging instance.
	 */
	private Log log = LogFactory.getFactory().getInstance(this.getClass().getName());

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest req, HttpServletResponse res)
					throws Exception {
			throw new exceptions.DuplicateKeyException();
	}
	
	
}