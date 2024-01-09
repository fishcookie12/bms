package com.application.bms.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.bms.admin.dao.AdminDAO;
import com.application.bms.admin.dto.AdminDTO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDAO;

	@Override
	public AdminDTO adminLog(AdminDTO adminDTO) throws Exception {
		if(adminDAO.selectOneAdmin(adminDTO)!=null) {
			return adminDTO;
		}
		return null;
	}
	

}
