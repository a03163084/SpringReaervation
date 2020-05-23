package tw.pet.dao;



import java.util.List;

import tw.pet.model.Evaluation;


public interface EvaluationDao {
	
	Object save(Evaluation bean);
	
	List<Evaluation> queryAllEvaluation();
	
	Double ScoreAvg();
	
}
