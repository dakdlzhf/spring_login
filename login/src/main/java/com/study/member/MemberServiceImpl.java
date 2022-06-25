package com.study.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("com.study.member.MemberServiceImpl")
public class MemberServiceImpl implements MemberService {
  
  
  @Autowired
  private MemberMapper mapper;
  
  //member table 회원가입 C
  public int create(MemberDTO dto) {
    return mapper.create(dto);
  }

}
