package tw.pet.dao_impl;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;


import tw.pet.dao.ReservationDao;
import tw.pet.model.MyReservationView;
import tw.pet.model.ReservationBean;


@Repository
public class ReservationDaoImpl implements ReservationDao{
	
	@Autowired
	@Qualifier(value = "sessionFactory")
	private SessionFactory sessionFactory;
	
	public ReservationDaoImpl() {
	} 

	public Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}
	

	@Override
	public Object save(ReservationBean bean) {
		getSession().save(bean);
		return bean;
	}


	@Override
	public List<MyReservationView> query(Integer memberId) {
		Query<MyReservationView> query = getSession().createQuery("from MyReservationView where memberId=:memberId ", MyReservationView.class);
		query.setParameter("memberId", memberId);
		List<MyReservationView> list = query.getResultList();
		return list;
	}

	@Override
	public ReservationBean Update(ReservationBean bean) {
		ReservationBean rb = getSession().get(ReservationBean.class, bean.getReservationId());
		rb.setReservationId(bean.getReservationId());
		rb.setStatuss(bean.getStatuss());
		getSession().update(rb);
		return rb;
	}

	@Override
	public ReservationBean queryReservationBean(Integer reservationId) {
		ReservationBean rb = getSession().get(ReservationBean.class, reservationId);
		return rb;
	}


	

	


	

	


	


	

}
