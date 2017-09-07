package com.niit.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.dao.PersonDao;
import com.niit.model.Person;

@Controller
public class PersonController {
	@Autowired
private PersonDao personDao;
	@RequestMapping(value="/getallpersons",method=RequestMethod.GET)
	public @ResponseBody List<Person> getAllPersons(){
		List<Person> persons=personDao.getAllPersons();
		return persons;
	}
}