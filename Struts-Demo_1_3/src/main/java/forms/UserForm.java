package forms;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class UserForm extends ActionForm {

	private String firstname;
	private String lastname;
	private Integer age;

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		ActionErrors errors = new ActionErrors();
		if (getFirstname() == null || getFirstname().length() < 1) {
			errors.add("firstname", new ActionMessage("errors.message.mandatory", "First name"));
		} else if (getFirstname().length() < 5) {
			errors.add("firstname", new ActionMessage("errors.message.length", "First name"));

		}
		if (getLastname() == null || getLastname().length() < 1) {
			errors.add("lastname", new ActionMessage("errors.message.mandatory", "Last name"));
		} else if (getLastname().length() < 5) {
			errors.add("lastname", new ActionMessage("errors.message.length", "Last name"));

		}
		if (getAge() == null) {
			errors.add("age", new ActionMessage("errors.message.mandatory", "Age"));
		} else {
			if (getAge() < 5) {
				errors.add("age", new ActionMessage("errors.message.invalid", "Age"));
			}
		}

		return errors;
	}

}