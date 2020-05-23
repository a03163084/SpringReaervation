package tw.pet.controller;

import java.sql.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.pet.dao.MemberDao;
import tw.pet.model.MyReservationView;
import tw.pet.model.PetMembers;
import tw.pet.model.ReservationBean;
import tw.pet.service.MemberService;
import tw.pet.service.ReservationService;


@Controller
@SessionAttributes(value = {"reservationBean"})
public class ReservationController {
	
	@Autowired
	private ReservationService service;
	@Autowired
	private MemberService ms;
	
	@GetMapping("/index37")
	public String transferReservationPage() {
		return "reservation/index37";
	}
	
	
	@PostMapping("/insertSuccess")
	public String insert(@SessionAttribute("petMembers") PetMembers petMembers,
			@RequestParam("sortId")Integer sortId, @RequestParam("breed")String breed,
			@RequestParam("petName")String petName, @RequestParam("petGenger")String petGenger,
			@RequestParam("petAge") Integer petAge, @RequestParam("createDate")Date createDate,
			@RequestParam("availableDateTime")Integer availableDateTime, @RequestParam("require")String require,
			@RequestParam("statuss")String statuss,@RequestParam("done")String done, Model m) {
		
		
		
		ReservationBean rb = new ReservationBean();
		rb.setSortId(sortId);
		rb.setBreed(breed);
		rb.setPetName(petName);
		rb.setPetGenger(petGenger);
		rb.setPetAge(petAge);
		rb.setCreateDate(createDate);
		rb.setAvailableDateTime(availableDateTime);
		rb.setRequire(require);
		rb.setStatuss(statuss);
		rb.setDone(done);
		rb.setMemberId(petMembers.getMemberId());
		
		
		service.save(rb);
		return "reservation/insertSuccess37";
	}
	
	@RequestMapping(value = "/query", method = RequestMethod.GET)
	public String MyReservationlist(@SessionAttribute("petMembers") PetMembers petMembers,
				Model m) {
	
		Integer memberId = petMembers.getMemberId();
		List<MyReservationView> list = service.query(memberId);
		m.addAttribute("myReservation",list);
	
		return "reservation/myReservation";
	}
	
	
	@PostMapping("/update")
	public String update(@RequestParam("reservationId")Integer reservationId,
			@RequestParam("statuss")String statuss, Model m) {
		
		ReservationBean rb = new ReservationBean();
		rb.setReservationId(reservationId);
		rb.setStatuss(statuss);
		System.out.println(reservationId);
		System.out.println(statuss);
		
		service.update(rb);
		
		return "redirect:/query";
	}
	
	@PostMapping("/queryReservation")
	public String showReservationBean(@RequestParam("reservationId")Integer reservationId,Model m) {
		ReservationBean bean = service.queryReservationBean(reservationId);
		m.addAttribute("reservation", bean);

		return "reservation/evaluation37";
		
	}
	
}
