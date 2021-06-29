package com.team404.user.service;

import com.team404.command.UserVO;

public interface UserService {
	
	public int idCheck(UserVO vo);//아이디중복체크
	public int join(UserVO vo); //가입요청
	public UserVO login(UserVO vo); //로그인
}
