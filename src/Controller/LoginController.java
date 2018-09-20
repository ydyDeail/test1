package Controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Service.UserService;
import Util.UserParams;

import entity.User;

@Controller
public class LoginController {
	@Autowired
	@Qualifier("userService")
	private UserService us;
	public UserService getUs() {
		return us;
	}
	public void setUs(UserService us) {
		this.us = us;
	}
	@RequestMapping("login.html")
	public String login(String userCode,String userPassword,Model model,HttpSession session){
		User user=us.userLogin(userCode,userPassword);
		if(user!=null){
			session.setAttribute("user", user);
			return "redirect:jsp/frame.jsp";
		}else{
			model.addAttribute("msg", "用户名或密码错误");
			return "login";
		}
	}
	@RequestMapping("jsp/loginout.html")
	public String logout(HttpSession session){
		session.removeAttribute("user");
		return "redirect:../login.jsp";
	}
}
