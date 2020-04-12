package co.grandcircus.Survey.Objects;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Survey {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String fullName;
	private String age;
	private String role;
	private String sex;
	private String codingBootcampRecommendation;
	private String futureSkills;
	private String comment;
	private String email;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getCodingBootcampRecommendation() {
		return codingBootcampRecommendation;
	}

	public void setCodingBootcampRecommendation(String codingBootcampRecommendation) {
		this.codingBootcampRecommendation = codingBootcampRecommendation;
	}

	public String getFutureSkills() {
		return futureSkills;
	}

	public void setFutureSkills(String futureSkills) {
		this.futureSkills = futureSkills;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Survey [id=" + id + ", fullName=" + fullName + ", age=" + age + ", role=" + role + ", sex=" + sex
				+ ", codingBootcampRecommendation=" + codingBootcampRecommendation + ", futureSkills=" + futureSkills
				+ ", comment=" + comment + ", email=" + email + "]";
	}

}