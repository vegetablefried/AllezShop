package com.co.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
 
import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.dto.LoginDTO;
import com.example.dto.MemberVO;
import com.example.service.MemberService;
import com.example.service.MemberServiceImpl;
 
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
    
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
    
    
    @Autowired
    private MemberServiceImpl memberServiceImpl;
    
    @Inject
    private MemberService service;
    
    /*
    @Inject
    private BCryptPasswordEncoder pwdEncoder;
    */
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String home(Locale locale, Model model) throws Exception{
 
 
        return "main";
    }
    
    @RequestMapping(value = "/sign")
    public void sign(MemberVO member) throws Exception{
    	

        logger.info("ȸ��������...");
       if (member.id != null) {
    	   service.joinMember(member);       
    	   logger.info("ȸ������ ����!");
       }
       
    }
    
    @RequestMapping(value = "/LoginPage", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/LoginPage", method = RequestMethod.POST)
    public String LoginPage(Model model, HttpServletRequest request, HttpServletResponse response, RedirectAttributes rttr, LoginDTO member, @RequestParam("id") String id
                       , @RequestParam("pw") String pw) throws Exception {
    	
    	
        String path = "";
        LoginDTO vo = new LoginDTO();
        
        vo.setid(id);
        vo.setpw(pw);
        
        HttpSession session = request.getSession();
        LoginDTO result = service.loginMember(member);
        //String userNAME = result.name;
        //LoginDTO result = memberServiceImpl.loginMember(vo);
        
        if(result == null) {
        	System.out.println("�α��� ����!!! - ��Ʈ�ѷ�");
        	session.invalidate();
            rttr.addFlashAttribute("msg", false);
           
            
            path = "redirect:/LoginPage";
        }
        else if(result != null) {
        	/*
        	if(session.isNew() != true) {
        		System.out.println("������ �̹� �����մϴ�.");
        		System.out.println("session.name = " + session.getAttribute("userNAME"));
        		System.out.println("userNAME = " + userNAME);
        		userNAME = (String) session.getAttribute("userNAME");
        		path = "list";
        	}
        	*/
        	     
        	if(id.equals(result.id) == true && pw.equals(result.pw) == true) {
        		//System.out.println("������ ���� ��������� ���� ���� �޽��ϴ�.");
        		//model.addAttribute("userID", id);
        		//model.addAttribute("userPW", pw);
        		System.out.println("�α��� ����!!! - homecontroller");
        		session.setAttribute("result", result);
        		
        		
        		String userNAME = result.name;
        		request.setAttribute("userNAME", userNAME);
        		request.setAttribute("result", result);
        		session.setAttribute("userNAME", userNAME);
        		session.setAttribute("result", result);
        		model.addAttribute("userNAME", userNAME);
        		
        		
        		
        	/*
        		if(request.getParameter("useCookie") != null) {
        			logger.info("remember me...");
        			//��Ű ����
        			Cookie loginCookie = new Cookie("loginCookie", session.getId());
        			loginCookie.setPath("/main");
        			loginCookie.setMaxAge(60*60*24*7);
        			//����
        			response.addCookie(loginCookie);
        		}
        	*/
            
        		if(result.is_admin == 1) {
        			path = "redirect:/admin/main";
        		} else if(result.is_admin == 0) {
        			path = "redirect:/user/main";
        		}
        		
            //System.out.println(id);
            //System.out.println(userNAME);
        	}
        	
        	else {
            	//System.out.println("������ ���� ����������� �Է��� ���� �ùٸ��� �ʽ��ϴ�.");
            	//System.out.println("id = " + id);
            	//System.out.println("result.id = " + result.id);
      
            	//System.out.println("pw = " + pw);
            	//System.out.println("result.pw = " + result.pw);
            	
                //System.out.println(userNAME);
        		System.out.println("�α��� ����!!!");
            	session.invalidate();
                rttr.addFlashAttribute("msg", false);
               
                
                path = "LoginPage";
                
            }
        } 
       
        

        return path;

    }

    @RequestMapping(value = "/user/main", method = {RequestMethod.GET , RequestMethod.POST})
    public String user_main(Locale locale, Model model, LoginDTO member, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception{
    		logger.info("�α��� ����");
    		
   
    		
    		return "user/main";
    }
    
    @RequestMapping(value = "/admin/main", method = {RequestMethod.GET , RequestMethod.POST})
    public String admin_main(Locale locale, Model model, LoginDTO member, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception{
    		logger.info("�α��� ����");
    		String userNAME = (String) session.getAttribute("userNAME");
    		System.out.println(userNAME);
    		
    		return "admin/main";
    }
    
    @RequestMapping(value = "/LoginPage_r", method = {RequestMethod.GET , RequestMethod.POST})
    public ModelAndView login_retry(Locale locale, Model model, LoginDTO member, HttpServletRequest request, HttpServletResponse response) throws Exception{
    		logger.info("�α��� ����.. ��õ��ϱ�");
    		
    		ModelAndView mav = new ModelAndView();
    		
    		mav.setViewName("login"); 		
    	    mav.addObject("message", "error");
    		
    		return mav;
    }
    
    @RequestMapping(value = "/list", method = {RequestMethod.GET , RequestMethod.POST})
    public String list(Locale locale, Model model, LoginDTO member, HttpServletRequest request, HttpServletResponse response) throws Exception{
    		logger.info("�α��� ����");
    		
    		return "list";
    }
    
    
    @RequestMapping(value = "/management_page", method = {RequestMethod.GET , RequestMethod.POST})
    public String management(Locale locale, Model model, LoginDTO member, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception{
    		logger.info("������ ������");
    		String userNAME = (String) session.getAttribute("userNAME");
    		System.out.println(userNAME);
    		
    		return "admin/management_page";
    }  
    
    @RequestMapping(value = "/mypage", method = {RequestMethod.GET , RequestMethod.POST})
    public String mypage(Locale locale, Model model, LoginDTO member, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception{
    		logger.info("���� ������");
    		String userNAME = (String) session.getAttribute("userNAME");
    		System.out.println(userNAME);
    		
    		return "user/mypage";
    }
    
 // �α׾ƿ� �ϴ� �κ�
    @RequestMapping(value="/logout")
    public String logout(HttpSession session, HttpServletResponse response, HttpServletRequest request) {
        session.removeAttribute("result");
        session.removeAttribute("userNAME");
    	session.invalidate();// ���� ��ü�� ��������
//      session.removeAttribute("login"); // �ϳ��� �Ϸ��� �̷��� �ص� ��.
        return "redirect:main";// �α׾ƿ� �� �Խñ� ������� �̵��ϵ���...��
    }

    

    @RequestMapping(value = "/main")
    public String main(Locale locale, Model model) throws Exception{
 
        logger.info("main");
        
       
 
        return "main";
    }
    
    /**
     * Simply selects the home view to render by returning its name.
     */
    
    
    
}
