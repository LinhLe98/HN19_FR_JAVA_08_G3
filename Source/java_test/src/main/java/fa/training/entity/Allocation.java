package fa.training.entity;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Allocation {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String allocatedFSU;
	private Double salary;
	private LocalDate startDate;
	private String allocationStatus;
	private String remarks;

	@OneToOne
	@JoinColumn(name = "trainee_id")
	private Trainee trainee;

	public Allocation() {
		super();
	}

	public Allocation(String allocatedFSU, Double salary, LocalDate startDate, String allocationStatus, String remarks,
			Trainee trainee) {
		super();
		this.allocatedFSU = allocatedFSU;
		this.salary = salary;
		this.startDate = startDate;
		this.allocationStatus = allocationStatus;
		this.remarks = remarks;
		this.trainee = trainee;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAllocatedFSU() {
		return allocatedFSU;
	}

	public void setAllocatedFSU(String allocatedFSU) {
		this.allocatedFSU = allocatedFSU;
	}

	public Double getSalary() {
		return salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}

	public LocalDate getStartDate() {
		return startDate;
	}

	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}

	public String getAllocationStatus() {
		return allocationStatus;
	}

	public void setAllocationStatus(String allocationStatus) {
		this.allocationStatus = allocationStatus;
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
		return "Allocation [id=" + id + ", allocatedFSU=" + allocatedFSU + ", salary=" + salary + ", startDate="
				+ startDate + ", allocationStatus=" + allocationStatus + ", remarks=" + remarks + "]";
	}

}
