package com.sd.mommyson.common;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.RTNoticeDTO;
import com.sd.mommyson.member.service.MemberService;
@Component
public class NoticeInterceptor extends HandlerInterceptorAdapter {
	
	private MemberService memberService;
	
	public NoticeInterceptor() {}

	@Autowired
	public NoticeInterceptor(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("preHandler 입장~");
		HttpSession session = request.getSession();
		MemberDTO member = null;
		List<RTNoticeDTO> noticeList = null;
		if((MemberDTO) session.getAttribute("loginMember") != null) {
			member = (MemberDTO) session.getAttribute("loginMember");
			int memCode = member.getMemCode();
			if(!member.getMemType().equals("manager")) {
				noticeList = memberService.selectRTNotice(memCode);
			}
		}
		session.setAttribute("noticeList", noticeList);
		
		return true;
	}

	
}
