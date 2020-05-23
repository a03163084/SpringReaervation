package tw.pet.controller;


import java.util.List;

import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;


import tw.pet.model.Evaluation;
import tw.pet.model.PetMembers;

import tw.pet.service.EvaluationService;

@Controller
@SessionAttributes(value = {"Evaluation"})
public class EvaluationController {
	
	@Autowired
	private EvaluationService service;
		

	
	@PostMapping("/saveEvaluation")
	public String save(@SessionAttribute("petMembers") PetMembers petMembers,
			@RequestParam("reservationId")Integer reservationId,
			@RequestParam("score")Double score,
			@RequestParam("content")String content,Model m) {
		
		Evaluation en = new Evaluation();
		en.setReservationId(reservationId);
		en.setScore(score);
		en.setContent(content);
		en.setMemberId(petMembers.getMemberId());
		
		service.save(en);
		
		return "reservation/evaluationSuccess";	
	}
	
	@RequestMapping(value = "/Evaluationlist", method = RequestMethod.GET)
	public String Evaluationlist(Model m)  {
		List<Evaluation> list = service.queryAllEvaluation();
		m.addAttribute("Evaluation" , list);
		
		double num = service.ScoreAvg();
		m.addAttribute("scoreAvg" , num);
		
		return "reservation/index37";
	}
}
