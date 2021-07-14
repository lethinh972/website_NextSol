package vn.nextsol.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "hrpolicies")
public class HRpolicies {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String title;
	private String content;
	private String image;
	private int is_highlight;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date created_at;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updated_at;
	public HRpolicies(Long id, String title, String content, String image, int is_highlight, Date created_at,
			Date updated_at) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.image = image;
		this.is_highlight = is_highlight;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}
	public HRpolicies() {
		super();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getIs_highlight() {
		return is_highlight;
	}
	public void setIs_highlight(int is_highlight) {
		this.is_highlight = is_highlight;
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
	
	
}
