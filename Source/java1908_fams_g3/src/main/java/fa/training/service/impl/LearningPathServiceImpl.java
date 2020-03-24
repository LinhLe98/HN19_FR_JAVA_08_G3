package fa.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import fa.training.entity.LearningPath;
import fa.training.repository.LearningPathRepository;
import fa.training.service.LearningPathService;

@Service
public class LearningPathServiceImpl implements LearningPathService{

	@Autowired
	LearningPathRepository learningPathRepository;

	@Override
	public LearningPath saveMilestone(LearningPath learningPath) {
		// TODO Auto-generated method stub
		return learningPathRepository.save(learningPath);
	}
	

	public static void main(String[] args) {
		
		LearningPathServiceImpl impl = new LearningPathServiceImpl();
	}
}
