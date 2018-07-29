package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

public class ErrorsExampleAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ActionMessages messages = new ActionMessages();

		messages.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage("messages.tryagain"));
		messages.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage("messages.error.unexpected"));
		messages.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage("messages.error.contact.administrator"));

		saveMessages(request, messages);

		ActionMessages errors = new ActionMessages();
		errors.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage("errors.message.invalid", "JohnDoe"));
		errors.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage("errors.message.mandatory", "Username"));
		errors.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage("errors.message.length", "JohnDoeTooLongName"));
		saveErrors(request, errors);

		return mapping.findForward("success");
	}
}