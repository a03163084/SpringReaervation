package tw.pet.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.pet.dao_impl.EvaluationDao_impl;
import tw.pet.model.Evaluation;


@Service
@Transactional
public class EvaluationService {
	@Autowired
	private EvaluationDao_impl daoImpl;
	
	public Object save(Evaluation bean) {
		return daoImpl.save(bean);
	}
	
	public List<Evaluation> queryAllEvaluation(){
		return daoImpl.queryAllEvaluation();
	}
	
	public Double ScoreAvg() {
		return daoImpl.ScoreAvg();
	}
}
