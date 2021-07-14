package vn.nextsol.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "recruitment")
public class Recruitment {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String job_name;
	private String type;
	private String salary;
	private String experience;
	private String image_link;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date expire_on;
	private String details;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date created_at;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updated_at;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getJob_name() {
		return job_name;
	}
	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getImage_link() {
		return image_link;
	}
	public void setImage_link(String image_link) {
		this.image_link = image_link;
	}
	public Date getExpire_on() {
		return expire_on;
	}
	public void setExpire_on(Date expire_on) {
		this.expire_on = expire_on;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public Date getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}
	public Recruitment(Long id, String job_name, String type, String salary, String experience, String image_link,
			Date expire_on, String details, Date created_at, Date updated_at) {
		super();
		this.id = id;
		this.job_name = job_name;
		this.type = type;
		this.salary = salary;
		this.experience = experience;
		this.image_link = image_link;
		this.expire_on = expire_on;
		this.details = details;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}
	public Recruitment() {
		super();
	}
	
	
	
	
	
}
