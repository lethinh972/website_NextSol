package vn.nextsol.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
@Entity
@Table(name = "customer_comment")
public class CustomerComment {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String name;
	private String company;
	private String comment;
	private int is_highlight;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date created_at;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updated_at;
}
