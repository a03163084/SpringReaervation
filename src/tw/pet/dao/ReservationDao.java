package tw.pet.dao;


import java.util.List;



import tw.pet.model.MyReservationView;
import tw.pet.model.ReservationBean;



public interface ReservationDao {

	Object save(ReservationBean bean);
	
	ReservationBean Update(ReservationBean bean);
	
	List<MyReservationView> query(Integer memberId);
	
	ReservationBean queryReservationBean(Integer reservationId);
}
