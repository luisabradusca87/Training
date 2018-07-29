package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import forms.HelloForm;

public class HelloAction extends Action{
	 
    public ActionForward execute(ActionMapping mapping,ActionForm form,
            HttpServletRequest request,HttpServletResponse response)
            throws Exception {
 
            HelloForm helloForm = (HelloForm) form;
            helloForm.setMsg("Hello from Struts !!");
 
            return mapping.findForward("success");
        }
}