package com.ikbal.admin.createResource.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ikbal.admin.createResource.dto.CreateResourceDTO;
@SuppressWarnings("unchecked")
@Repository
public class CreateResourceDAO {
	@Autowired
	private SessionFactory factory;

	public CreateResourceDAO() {
		System.out.println(this.getClass().getSimpleName() + "Created...");
	}

	public void saveResourceDetails(CreateResourceDTO createResourceDTO) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.saveOrUpdate(createResourceDTO);
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();

		}
	}

	public void update(CreateResourceDTO dto) {
		System.out.println("update method started inside ResourceDAO");
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		try {

			System.out.println(dto.getRid());
			session.saveOrUpdate(dto);
			tx.commit();

		} catch (HibernateException e) {
			e.printStackTrace();
			tx.rollback();
		} finally {
			session.close();
		}
		System.out.println("update method ended inside ResourceDAO");

	}
	
	
	public List<CreateResourceDTO> viewResourceDAO() {
		String fetchQuery="select crdto from CreateResourceDTO crdto";
		Session session=factory.openSession();
		Query query=session.createQuery(fetchQuery);
		return query.list();
	}


	public List<String> getProjectNameDao() {
		String hrq = " select cpdto.pname from CreateProjectDTO cpdto";
		Session session = factory.openSession();
		Query query = session.createQuery(hrq);
		return query.list();

	}

	


}
