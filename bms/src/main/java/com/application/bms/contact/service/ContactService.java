package com.application.bms.contact.service;

import java.util.List;

import com.application.bms.contact.dto.ContactDTO;

public interface ContactService {
	public void addContact(ContactDTO contactDTO)throws Exception;
	public List<ContactDTO> contactList()throws Exception;
	public ContactDTO contactDetail(int contactCd)throws Exception;
	public void modifyContact(ContactDTO contactDTO)throws Exception;
	
}
