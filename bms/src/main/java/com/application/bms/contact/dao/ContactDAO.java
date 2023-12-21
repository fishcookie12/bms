package com.application.bms.contact.dao;

import java.util.List;

import com.application.bms.contact.dto.ContactDTO;

public interface ContactDAO {
	public void insertContact(ContactDTO contactDTO)throws Exception;
	public List<ContactDTO> selectListContact()throws Exception;
}
