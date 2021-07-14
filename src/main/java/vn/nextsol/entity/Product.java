package vn.nextsol.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name = "products")
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String classify;
	private String name;
	private String description;
	private String image;
	private String theme;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date created_at;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updated_at;
	public Product(Long id, String classify, String name, String description, String image, String theme, Date created_at,
			Date updated_at) {
		super();
		this.id = id;
		this.classify = classify;
		this.name = name;
		this.description = description;
		this.image = image;
		this.theme = theme;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}
	public Product() {
		super();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getClassify() {
		return classify;
	}
	public void setClassify(String classify) {
		this.classify = classify;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
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
