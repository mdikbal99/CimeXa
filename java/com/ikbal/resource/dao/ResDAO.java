package com.ikbal.resource.dao;

import java.util.List;

import org.hibernate.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ikbal.admin.createProject.dto.CreateProjectDTO;
import com.ikbal.admin.createResource.dto.CreateResourceDTO;
import com.ikbal.resource.dto.IssueDTO;
@SuppressWarnings("unchecked")
@Repository
public class ResDAO {

	@Autowired
	private SessionFactory factory;
	Session session = null;
	Transaction tx = null;

	public ResDAO() {
		System.out.println(this.getClass().getSimpleName() + "\t created....");
	}



	public List<CreateProjectDTO> getProjectListDAO() {
		session = factory.openSession();
		String qry = "Select  project.pname from CreateProjectDTO project where project.pstatus='Active'";
		try {
			Query query = session.createQuery(qry);
			List<CreateProjectDTO> list = query.list();

			return list;
		} finally {
			session.close();
		}

	}

	public List<CreateResourceDTO> getResourceDAO() {
		session = factory.openSession();
		String qry = "Select  resource from CreateResourceDTO resource";
		try {
			Query query = session.createQuery(qry);
			List<CreateResourceDTO> resList = query.list();

			return resList;
		} finally {
			session.close();
		}
	}

	public void createIssueDAO(IssueDTO dto) {
		session = factory.openSession();
		tx = session.beginTransaction();
		try {
			session.save(dto);
			tx.commit();
		} finally {
			session.close();
		}

	}

	public List<IssueDTO> viewIssueDAO() {
		session = factory.openSession();
		String qry = "Select issue from IssueDTO issue";
		try {
			Query query = session.createQuery(qry);
			List<IssueDTO> issue = query.list();

			return issue;
		} finally {
			session.close();
		}
	}

	public IssueDTO searchIssueDAO(String issueno) {
		session = factory.openSession();
		String qry = "Select issue from IssueDTO issue where issue.issueNo=:in";
		try {
			Query query = session.createQuery(qry);
			query.setParameter("in", issueno);
			IssueDTO dto = (IssueDTO) query.uniqueResult();
			return dto;
		} finally {
			session.close();
		}

	}

	public void updateIssueStatusDAO(String status, int id) {
		session = factory.openSession();
		tx = session.beginTransaction();
		IssueDTO dto = (IssueDTO) session.load(IssueDTO.class, new Integer(id));
		try {
			dto.setStatus(status);
			session.merge(dto);
			tx.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			tx.rollback();
		} finally {
			session.close();
		}

	}

}
