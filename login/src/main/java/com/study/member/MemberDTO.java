package com.study.member;

import lombok.Data;

@Data
public class MemberDTO {
  private String userId;
  private String password;
  private String address;
  private String tell;
}
