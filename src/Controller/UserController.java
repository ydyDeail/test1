package Controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;

import Service.UserService;
import Util.UserParams;

import entity.User;

@Controller
@RequestMapping("jsp/")
public class UserController {
	@Autowired
	private UserService us;
	public UserService getUs() {
		return us;
	}
	public void setUs(UserService us) {
		this.us = us;
	}
	@RequestMapping("showUser.html")
	public String showUser(UserParams up,Model model){
		try {
			if(up.getUserName()!=null){
				up.setUserName(new String(up.getUserName().getBytes("iso-8859-1"),"utf-8"));
			}
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<User> li=us.findUsers(up);
		model.addAttribute("li", li);
		model.addAttribute("up", up);
		return "jsp/userlist";
	}
	@RequestMapping("addUser.html")
	public String addUser(@Valid User user,BindingResult result,Model model){
		if(result.hasErrors()){
			List<FieldError> errorList=result.getFieldErrors();
			for(FieldError f:errorList){
				model.addAttribute("error_"+f.getField(), f.getDefaultMessage());
			}
			return "jsp/useradd";
		}
		System.out.println(user);
		return "redirect:showUser.html";
	}
	public Object
}
