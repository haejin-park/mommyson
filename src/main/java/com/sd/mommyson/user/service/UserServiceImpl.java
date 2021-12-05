package com.sd.mommyson.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.mommyson.user.dao.UserDAO;
import com.sd.mommyson.user.dto.PostDTO;

@Service
public class UserServiceImpl implements UserService{
	
	private UserDAO userDAO;
	
	@Autowired
	public UserServiceImpl(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public List<PostDTO> selectNotice() {

		List<PostDTO> noticeList = userDAO.selectNotice();
		
		return noticeList;
	}

}
