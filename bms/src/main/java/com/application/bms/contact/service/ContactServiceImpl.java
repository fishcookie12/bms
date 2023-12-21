package com.application.bms.contact.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.bms.contact.dao.ContactDAO;
import com.application.bms.contact.dto.ContactDTO;

@Service
public class ContactServiceImpl implements ContactService {
	@Autowired
	private ContactDAO contactDAO;

	@Override
	public void addContact(ContactDTO contactDTO) throws Exception {
		contactDAO.insertContact(contactDTO);
		
	}

	@Override
	public List<ContactDTO> contactList() throws Exception {
		
		return contactDAO.selectListContact();
	}
}
