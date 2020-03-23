package fa.training.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Classes {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String className;
	private String sill;
	private String status;

	@OneToMany(mappedBy = "classes")
	private List<Trainee> trainees;

	public Classes() {
		super();
	}

	public Classes(String className, String sill, String status) {
		super();
		this.className = className;
		this.sill = sill;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getSill() {
		return sill;
	}

	public void setSill(String sill) {
		this.sill = sill;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<Trainee> getTrainees() {
		return trainees;
	}

	public void setTrainees(List<Trainee> trainees) {
		this.trainees = trainees;
	}

}
