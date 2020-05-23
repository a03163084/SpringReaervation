package tw.pet.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;


@Component
@Entity
@Table(name="Reservation")
public class ReservationBean {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer reservationId;
	
	private Integer memberId;
	private Integer sortId;
	private String breed;
	private String petName;
	private String petGenger;
	private Integer petAge;
	private Date createDate;
	private Integer availableDateTime;
	private String require;
	private String statuss;
	private String done;
	
	public Integer getReservationId() {
		return reservationId;
	}
	public void setReservationId(Integer reservationId) {
		this.reservationId = reservationId;
	}
	
	
	
	public String getDone() {
		return done;
	}
	public void setDone(String done) {
		this.done = done;
	}
	public Integer getMemberId() {
		return memberId;
	}
	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}
	public Integer getSortId() {
		return sortId;
	}
	public void setSortId(Integer sortId) {
		this.sortId = sortId;
	}
	public String getBreed() {
		return breed;
	}
	public void setBreed(String breed) {
		this.breed = breed;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetGenger() {
		return petGenger;
	}
	public void setPetGenger(String petGenger) {
		this.petGenger = petGenger;
	}
	public Integer getPetAge() {
		return petAge;
	}
	public void setPetAge(Integer petAge) {
		this.petAge = petAge;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Integer getAvailableDateTime() {
		return availableDateTime;
	}
	public void setAvailableDateTime(Integer availableDateTime) {
		this.availableDateTime = availableDateTime;
	}
	public String getRequire() {
		return require;
	}
	public void setRequire(String require) {
		this.require = require;
	}
	public String getStatuss() {
		return statuss;
	}
	public void setStatuss(String statuss) {
		this.statuss = statuss;
	}
	
	
}
