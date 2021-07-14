package vn.nextsol.entity;

import java.util.Date;

import javax.persistence.EntityListeners;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import lombok.Data;

@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
@Data
public abstract class Auditable<U> {
	
	@CreatedBy
	protected U create_by;
	
	@CreatedDate
	@Temporal(TemporalType.TIMESTAMP)
	protected Date create_date;
	
	@LastModifiedBy
	protected U modifiled_by;
	
	@LastModifiedDate
	@Temporal(TemporalType.TIMESTAMP)
	protected Date modifiled_date;
}
