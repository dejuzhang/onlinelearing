package cn.st.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/register")
public class UserRegisterController {
	
	@RequestMapping("/userRegister")
	public String userRegister() {
		return "register/user_register";
	}
}
