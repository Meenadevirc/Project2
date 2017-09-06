package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Person;
@Repository
@Transactional
public class PersonDaoImpl implements PersonDao {
	@Autowired
private SessionFactory sessionFactory;
	public List<Person> getAllPersons() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Person");
		return query.list();
	}

}