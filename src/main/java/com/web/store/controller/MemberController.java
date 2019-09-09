package com.web.store.controller;

import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.web.store.exception.MemberNotFoundException;
import com.web.store.model.ManagerBean;
import com.web.store.model.MemberBean;
import com.web.store.service.MemberService;

@Controller
public class MemberController {

	// TODO: Input String check -> should not include space or special symbol which
	// likes SQL command (pending)

	@Autowired
	MemberService service;

	@Autowired
	ServletContext context;

	@ExceptionHandler({ MemberNotFoundException.class })
	public ModelAndView handleError(HttpServletRequest request, MemberNotFoundException exception) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("invalidAccount", exception.getAccount());
		mv.addObject("exception", exception);
		mv.addObject("errorMessage", exception.getMessage());
		mv.addObject("url", request.getRequestURL() + "?" + request.getQueryString());
		mv.setViewName("errorPage/memberNotFound");
		return mv;
	}

	@RequestMapping("/members")
	public String list(Model model) {
		List<MemberBean> list = service.getAllMember();
		model.addAttribute("members", list);
		return "members";
	}

	@RequestMapping("/member")
	public String getMemberById(@RequestParam("account") String account, Model model) {
		model.addAttribute("member", service.getMemberByAccount(account));
		return "member";
	}

	@RequestMapping(value = "/idExists", method = RequestMethod.GET)
	public String idExists(Model model, Integer mId) {
		MemberBean mb = new MemberBean();
		model.addAttribute("MemberBean", mb);
		return "idcheck/idExists";
	}

	@RequestMapping(value = "/idExists", method = RequestMethod.POST)
	public String idExists(@ModelAttribute("MemberBean") MemberBean mb) {
		System.out.println(mb.getAccount());
		service.idExists(mb.getmId());
		return "idcheck/idFound";
	}

//登入控制器
	@RequestMapping(value = "/memberLogin", method = RequestMethod.GET)
	public String getManagerForm(Model model1) {
		MemberBean mb = new MemberBean();
		model1.addAttribute("memberBean", mb);
		return "login/memberLogin";
	}

	@RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
	public String processManagerForm(@ModelAttribute("memberBean") MemberBean mb, @RequestParam("form") boolean form,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println("form :" + form);
		if (!form) {
			int mId = service.addMember(mb);
			mb.setmId(mId);
			System.out.println(mb.toString());
			session.setAttribute("memberLoginOK", mb);
		} else {
			MemberBean Member = new MemberBean();
			Member = service.checkIdPassword(mb.getAccount(), mb.getPassword());
			System.out.println(Member.toString());
			session.setAttribute("memberLoginOK", Member);
		}
		String uri = (String) session.getAttribute("requestURI");
		System.out.println("uri : " + uri);
		if (uri == null) {
			return "redirect:/home";
		} else {
			session.removeAttribute("requestURI");
			return "redirect:/" + uri.substring(15);
		}
	}

//註冊會員控制器
	@RequestMapping(value = "/member/add", method = RequestMethod.GET)
	public String getAddNewMemberForm(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("MemberBean", mb);
		return "registration/addMember";
	}

	@RequestMapping(value = "/member/add", method = RequestMethod.POST)
	public String processAddNewMemberForm(@ModelAttribute("MemberBean") MemberBean mb, BindingResult result,
			HttpServletRequest request) {
		service.addMember(mb);
		return "redirect:/members";
	}

//變更密碼控制器
	@RequestMapping(value = "/member/change", method = RequestMethod.GET)
	public String getChangeMemberForm(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("MemberBean", mb);
		return "account/changeMemberPassword";
	}

	@RequestMapping(value = "/member/change", method = RequestMethod.POST)
	public String processChangeMemberForm(@ModelAttribute("MemberBean") MemberBean mb,
			@RequestParam("newPW") String newPW, BindingResult result, HttpServletRequest request) {
		service.changePassword(service.checkIdPassword(mb.getAccount(), mb.getPassword()), newPW);
		return "redirect:/members";
	}

	// 刪除會員控制器
	@RequestMapping(value = "/member/delete", method = RequestMethod.GET)
	public String deleteMember(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("MemberBean", mb);
		return "account/deleteMember";
	}

	@RequestMapping(value = "/member/delete", method = RequestMethod.POST)
	public String deleteMember(@ModelAttribute("MemberBean") MemberBean mb, BindingResult result,
			HttpServletRequest request) {
		service.deleteMember(mb);
		return "redirect:/members";
	}

	// 登出控制器
	@RequestMapping("/memberLogout")
	public String manageLogout(Model model) {
		System.out.println("Mout");
		return "login/memberLogout";
	}

}
