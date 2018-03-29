package com.ikbal.resource.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name="create_issue")
public class IssueDTO  implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4L;
	@Id
	@GenericGenerator(name="isId", strategy="increment")
	@GeneratedValue(generator="isId")
	@Column(name="issue_id")
	private int id;
	@Column(name="issue_number")
	private String issueNo;
	@Column(name="projectName")
	private String projectName;
	@Column(name="issue_type")
	private String type;
	@Column(name="issue_priority")
	private String priority;
	@Column(name="issue_description")
	private String description;
	@Column(name="resourceEmail")
	private String resourceEmail;
	@Column(name="issue_status")
	private String status;
	
	public IssueDTO() {
	System.out.println(this.getClass().getSimpleName()+"\t created.......");
	}

	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getIssueNo() {
		return issueNo;
	}


	public void setIssueNo(String issueNo) {
		this.issueNo = issueNo;
	}


	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getResourceEmail() {
		return resourceEmail;
	}

	public void setResourceEmail(String resourceEmail) {
		this.resourceEmail = resourceEmail;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "IssueDTO [projectName=" + projectName + ", type=" + type + ", priority=" + priority + ", description="
				+ description + ", resourceEmail=" + resourceEmail + ", status=" + status + "]";
	}
	
	
}
