package vn.nextsol.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name = "question")
public class Question {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String name;
	private String email;
	private String sdt;
	private String content;
	public Question(Long id, String name, String email, String sdt, String content, Date created_at) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.sdt = sdt;
		this.content = content;
		this.created_at = created_at;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date created_at;
	public Question(Long id, String name, String email, String sdt, Date created_at) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.sdt = sdt;
		this.created_at = created_at;
	}
	public Question() {
		super();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	
	
	
}
