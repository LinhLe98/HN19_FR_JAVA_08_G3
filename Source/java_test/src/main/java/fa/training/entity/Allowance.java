package fa.training.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Allowance {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private Double GPA;
	private String level;
	private boolean salaryPaid;
	private Double standardAllowance;
	private String remarks;

	@ManyToOne
	@JoinColumn(name = "trainee_id")
	private Trainee trainee;

	public Allowance() {
		super();
	}

	public Allowance(Double gPA, String level, boolean salaryPaid, Double standardAllowance, String remarks,
			Trainee trainee) {
		super();
		GPA = gPA;
		this.level = level;
		this.salaryPaid = salaryPaid;
		this.standardAllowance = standardAllowance;
		this.remarks = remarks;
		this.trainee = trainee;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Double getGPA() {
		return GPA;
	}

	public void setGPA(Double gPA) {
		GPA = gPA;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public boolean isSalaryPaid() {
		return salaryPaid;
	}

	public void setSalaryPaid(boolean salaryPaid) {
		this.salaryPaid = salaryPaid;
	}

	public Double getStandardAllowance() {
		return standardAllowance;
	}

	public void setStandardAllowance(Double standardAllowance) {
		this.standardAllowance = standardAllowance;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public Trainee getTrainee() {
		return trainee;
	}

	public void setTrainee(Trainee trainee) {
		this.trainee = trainee;
	}

	@Override
	public String toString() {
		return "Allowance [id=" + id + ", GPA=" + GPA + ", level=" + level + ", salaryPaid=" + salaryPaid
				+ ", standardAllowance=" + standardAllowance + ", remarks=" + remarks + "]";
	}

}
