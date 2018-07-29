package forms;

import org.apache.struts.validator.ValidatorForm;

public class UserFormValidatorFile extends ValidatorForm  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1340794269093697975L;
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

	

}