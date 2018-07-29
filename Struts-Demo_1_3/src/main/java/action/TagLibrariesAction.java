package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import forms.HelloForm;
import forms.UserForm;

public final class TagLibrariesAction extends Action {

	private static final String SUCCESS = "success";

	private Log log = LogFactory.getFactory().getInstance(this.getClass().getName());

	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		HelloForm helloForm = (HelloForm)form;
		helloForm.setMsg("msg");
		
		List<UserForm> users = new ArrayList<>();
		users.add(createUserForm("John", "Doe", 36));
		users.add(createUserForm("Millie", "Ice", 56));
		users.add(createUserForm("Jilly", "Joe", 16));
		helloForm.setUsers(users);
		
		return mapping.findForward(SUCCESS);

	}
	
	private UserForm createUserForm(String firstName, String lastName, int age){
		UserForm user = new UserForm();
		user.setFirstname(firstName);
		user.setLastname(lastName);
		user.setAge(age);
		
		return user;
	}
}