package fa.training.entity;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class LearningPath {
	@Id
	private int id;

	@ManyToOne
	@JoinColumn(name = "topic_id")
	private Topic topic;

	@ManyToOne
	@JoinColumn(name = "trainee_id")
	private Trainee trainee;

	private String milestoneName;
	private LocalDate startMilestoneDate;
	private LocalDate endMilestoneDate;

	private Double maxScore;
	private Double passScore;
	private Double score;
	private Double weightedNumber;

	private String learningCode;

//	@ManyToOne
//	@JoinColumn(referencedColumnName="learncode", name="path")
//	@JoinColumn(referencedColumnName="topic", name="topic")
//	private LearningDetail learningCode;
	public LearningPath() {
		super();
	}

	public LearningPath(Topic topic, Trainee trainee, String milestoneName, LocalDate startMilestoneDate,
			LocalDate endMilestoneDate, Double maxScore, Double passScore, Double score, Double weightedNumber,
			String learningCode) {
		super();
		this.topic = topic;
		this.trainee = trainee;
		this.milestoneName = milestoneName;
		this.startMilestoneDate = startMilestoneDate;
		this.endMilestoneDate = endMilestoneDate;
		this.maxScore = maxScore;
		this.passScore = passScore;
		this.score = score;
		this.weightedNumber = weightedNumber;
		this.learningCode = learningCode;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public Trainee getTrainee() {
		return trainee;
	}

	public void setTrainee(Trainee trainee) {
		this.trainee = trainee;
	}

	public String getMilestoneName() {
		return milestoneName;
	}

	public void setMilestoneName(String milestoneName) {
		this.milestoneName = milestoneName;
	}

	public LocalDate getStartMilestoneDate() {
		return startMilestoneDate;
	}

	public void setStartMilestoneDate(LocalDate startMilestoneDate) {
		this.startMilestoneDate = startMilestoneDate;
	}

	public LocalDate getEndMilestoneDate() {
		return endMilestoneDate;
	}

	public void setEndMilestoneDate(LocalDate endMilestoneDate) {
		this.endMilestoneDate = endMilestoneDate;
	}

	public Double getMaxScore() {
		return maxScore;
	}

	public void setMaxScore(Double maxScore) {
		this.maxScore = maxScore;
	}

	public Double getPassScore() {
		return passScore;
	}

	public void setPassScore(Double passScore) {
		this.passScore = passScore;
	}

	public Double getScore() {
		return score;
	}

	public void setScore(Double score) {
		this.score = score;
	}

	public Double getWeightedNumber() {
		return weightedNumber;
	}

	public void setWeightedNumber(Double weightedNumber) {
		this.weightedNumber = weightedNumber;
	}

	public String getLearningCode() {
		return learningCode;
	}

	public void setLearningCode(String learningCode) {
		this.learningCode = learningCode;
	}

}
