package com.application.bms.contact.dao;

import java.util.List;
import java.util.Map;

import com.application.bms.contact.dto.ContactDTO;

public interface ContactDAO {
	public void insertContact(ContactDTO contactDTO)throws Exception;
	public List<ContactDTO> selectListContact(Map<String, Object>searchMap)throws Exception;
	public ContactDTO selectOneContact(int contactCd)throws Exception;
	public void updateContact(ContactDTO contactDTO)throws Exception;
	
}
