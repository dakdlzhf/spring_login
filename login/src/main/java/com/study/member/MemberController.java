package com.study.member;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MemberController {

  private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

  @Autowired
  @Qualifier("com.study.member.MemberServiceImpl")
  private MemberService service;
  
  //index.jsp 페이지
  @GetMapping("/")
  public String home() {
    logger.info("MemberController() 실행 중)");
    return "index";
  }
  //로그인페이지
  @GetMapping("/login")
  public String login() {
    
    return "/member/login";
  }
  // 회원가입 페이지
  @PostMapping("/join")
  public String join() {
    
    return "/member/join";
  }
  
  //회원가입 동의 페이지
  @GetMapping("/agreement")
  public String agreement() {

    return "/member/agreement";
  }
}
