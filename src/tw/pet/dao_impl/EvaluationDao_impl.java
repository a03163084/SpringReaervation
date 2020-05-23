package tw.pet.dao_impl;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import tw.pet.dao.EvaluationDao;
import tw.pet.model.Evaluation;

@Repository
public class EvaluationDao_impl implements EvaluationDao{
	
	@Autowired
	@Qualifier(value = "sessionFactory")
	private SessionFactory sessionFactory;
	
	public EvaluationDao_impl() {
	} 

	public Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}
	
	@Override
	public Object save(Evaluation bean) {
		getSession().save(bean);
		return bean;
	}

	@Override
	public List<Evaluation> queryAllEvaluation() {
		Query<Evaluation> bean = getSession().createQuery("from Evaluation order by evaluationId", Evaluation.class);
		List<Evaluation> list = bean.list();
		return list;
	}

	@Override
	public Double ScoreAvg() {
		Query query = getSession().createQuery("select AVG(score) from Evaluation");
		Double num = (Double)query.uniqueResult();
		return num;
	}


	

}
