package forms;
import java.util.List;

import org.apache.struts.action.ActionForm;

public class HelloForm extends ActionForm{
    
    private String msg;
    
    private List<UserForm> users;
 
    public String getMsg() {
        return msg;
    }
 
    public void setMsg(String msg) {
        this.msg = msg;
    }

	public List<UserForm> getUsers() {
		return users;
	}

	public void setUsers(List<UserForm> users) {
		this.users = users;
	}
    
}