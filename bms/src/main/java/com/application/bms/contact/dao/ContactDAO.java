package com.application.bms.contact.dao;

import java.util.List;


import com.application.bms.contact.dto.ContactDTO;

public interface ContactDAO {
	public void insertContact(ContactDTO contactDTO)throws Exception;
	public List<ContactDTO> selectListContact()throws Exception;
	public ContactDTO selectOneContact(int contactCd)throws Exception;
	public void updateContact(ContactDTO contactDTO)throws Exception;
	
}
