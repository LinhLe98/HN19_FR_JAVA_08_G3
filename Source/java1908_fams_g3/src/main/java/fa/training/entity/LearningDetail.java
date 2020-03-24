package fa.training.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class LearningDetail {
	@Id
	private int id;
	private String topic;

//	@Id
//	@Column(name="learncode")
//	private String learnCode;
//	
//	@Id
//	@Column(name="topic")
//	private String topic;
//	public LearningDetail() {
//		super();
//	}
	
	@ManyToOne  // wrong
	@JoinColumn(referencedColumnName = "learningCode")
	LearningPath learningPath;

	public LearningDetail() {
		super();
	}

	public LearningDetail(String topic, LearningPath learningPath) {
		super();
		this.topic = topic;
		this.learningPath = learningPath;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public LearningPath getLearningPath() {
		return learningPath;
	}

	public void setLearningPath(LearningPath learningPath) {
		this.learningPath = learningPath;
	}

}
