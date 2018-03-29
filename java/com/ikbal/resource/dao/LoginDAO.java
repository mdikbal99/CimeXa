package com.ikbal.resource.dao;


import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ikbal.admin.createResource.dto.*;
@Repository
public class LoginDAO 
{
	@Autowired
	private SessionFactory factory;
	
	public LoginDAO() 
	{
	System.out.println(this.getClass().getSimpleName()+"Created.....");
	}
	public boolean resourceLogin(String uname, String password) {

		String qry = "Select resource from CreateResourceDTO resource where resource.email=:un and resource.rpassword=:pwd";
		Session session = factory.openSession();

		try {
			Query query = session.createQuery(qry);
			query.setParameter("un", uname);
			query.setParameter("pwd", password);
			CreateResourceDTO dto = (CreateResourceDTO) query.uniqueResult();
			if (dto != null) {
				return true;
			}

		} catch (HibernateException e) {
			e.printStackTrace();
		}

		return false;
	}	}

