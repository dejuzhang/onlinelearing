package cn.st.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/videoComment")
public class CommentBoxController {
	
	@RequestMapping("/commentBystu")
	public String commentBystu() {
		return "vediou_mng/result";
	}
}
