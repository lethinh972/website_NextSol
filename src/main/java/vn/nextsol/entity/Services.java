package vn.nextsol.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "services")
public class Services {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String service_name;
	private String alt_name;
	private String logo;
	private String image_link;
	private String short_description;
	private String full_description;
	private int is_highlight;
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
	public String getService_name() {
		return service_name;
	}
	public void setService_name(String service_name) {
		this.service_name = service_name;
	}
	public String getAlt_name() {
		return alt_name;
	}
	public void setAlt_name(String alt_name) {
		this.alt_name = alt_name;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getImage_link() {
		return image_link;
	}
	public void setImage_link(String image_link) {
		this.image_link = image_link;
	}
	public String getShort_description() {
		return short_description;
	}
	public void setShort_description(String short_description) {
		this.short_description = short_description;
	}
	public String getFull_description() {
		return full_description;
	}
	public void setFull_description(String full_description) {
		this.full_description = full_description;
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
	public Services(Long id, String service_name, String alt_name, String logo, String image_link,
			String short_description, String full_description, int is_highlight, Date created_at, Date updated_at) {
		super();
		this.id = id;
		this.service_name = service_name;
		this.alt_name = alt_name;
		this.logo = logo;
		this.image_link = image_link;
		this.short_description = short_description;
		this.full_description = full_description;
		this.is_highlight = is_highlight;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}
	public Services() {
		super();
	}
	
	
	
	
}
