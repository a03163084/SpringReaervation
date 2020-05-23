package tw.pet.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.pet.dao_impl.ReservationDaoImpl;
import tw.pet.model.MyReservationView;
import tw.pet.model.ReservationBean;




@Service
@Transactional
public class ReservationService {
	@Autowired
	private ReservationDaoImpl daoImpl;
	

	public Object save(ReservationBean bean) {
		return daoImpl.save(bean);
	}
	
	public List<MyReservationView> query(int memberId) {
		return daoImpl.query(memberId);
	}
	
	public ReservationBean update(ReservationBean bean) {
		return daoImpl.Update(bean);
	}
	
	public ReservationBean queryReservationBean(Integer reservationId) {
		return daoImpl.queryReservationBean(reservationId);
		
	}
}
