package fa.training.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.entity.LearningDetail;
import fa.training.repository.LearningDetailRepository;
import fa.training.service.LearingDetailService;
@Service
public class LearningDetailServiceImpl implements LearingDetailService {
	@Autowired
	private LearningDetailRepository learningDetailRepository;
	
	@Override
	public List<LearningDetail> getAllLearningDetail(){
		return learningDetailRepository.findAll();
	}

}
