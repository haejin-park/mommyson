package com.sd.mommyson.common;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.RTNoticeDTO;
import com.sd.mommyson.member.service.MemberService;

public class NoticeInterceptor extends HandlerInterceptorAdapter {

	private MemberService memberService;
	
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
			if(!member.getMemType().equals("manager")) {
				noticeList = memberService.selectRTNotice(member.getMemCode());
				session.setAttribute("noticeList", noticeList);
			}
		}
		
		return noticeList != null || member == null? true : false;
	}

	
}
