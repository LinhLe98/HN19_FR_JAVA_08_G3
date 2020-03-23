package fa.training.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class GPA {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String milestoneName;
	private Double acacdemicMark;
	private Double disciplinaryPoint;
	private Double bonus;
	private Double GPA;

	@ManyToOne
	@JoinColumn(name = "trainee_id")
	private Trainee trainee;

	public GPA() {
		super();
	}

	public GPA(String milestoneName, Double acacdemicMark, Double disciplinaryPoint, Double bonus, Double gPA,
			Trainee trainee) {
		super();
		this.milestoneName = milestoneName;
		this.acacdemicMark = acacdemicMark;
		this.disciplinaryPoint = disciplinaryPoint;
		this.bonus = bonus;
		GPA = gPA;
		this.trainee = trainee;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMilestoneName() {
		return milestoneName;
	}

	public void setMilestoneName(String milestoneName) {
		this.milestoneName = milestoneName;
	}

	public Double getAcacdemicMark() {
		return acacdemicMark;
	}

	public void setAcacdemicMark(Double acacdemicMark) {
		this.acacdemicMark = acacdemicMark;
	}

	public Double getDisciplinaryPoint() {
		return disciplinaryPoint;
	}

	public void setDisciplinaryPoint(Double disciplinaryPoint) {
		this.disciplinaryPoint = disciplinaryPoint;
	}

	public Double getBonus() {
		return bonus;
	}

	public void setBonus(Double bonus) {
		this.bonus = bonus;
	}

	public Double getGPA() {
		return GPA;
	}

	public void setGPA(Double gPA) {
		GPA = gPA;
	}

	public Trainee getTrainee() {
		return trainee;
	}

	public void setTrainee(Trainee trainee) {
		this.trainee = trainee;
	}

	@Override
	public String toString() {
		return "GPA [id=" + id + ", milestoneName=" + milestoneName + ", acacdemicMark=" + acacdemicMark
				+ ", disciplinaryPoint=" + disciplinaryPoint + ", bonus=" + bonus + ", GPA=" + GPA + "]";
	}

}
