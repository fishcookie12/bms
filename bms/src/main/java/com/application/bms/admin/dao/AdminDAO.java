package com.application.bms.admin.dao;

import com.application.bms.admin.dto.AdminDTO;

public interface AdminDAO {
	public AdminDTO selectOneAdmin(AdminDTO adminDTO)throws Exception;
	
}
