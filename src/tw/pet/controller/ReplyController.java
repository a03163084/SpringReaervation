package tw.pet.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tw.pet.model.PetMembers;
import tw.pet.model.Reply;
import tw.pet.service.MemberService;
import tw.pet.service.ReplyService;
import tw.pet.service.TopicService;

@Controller
public class ReplyController {
	
	@Autowired
	private TopicService ts;
	
	@Autowired
	private MemberService ms;
	
	@Autowired
	private ReplyService rs;
	
	@RequestMapping(value = "/addreply", method = RequestMethod.POST)
	public String saveReply(@RequestParam("replyContent") String replyContent, @RequestParam("topicId") String topicId,
			@RequestParam("username") String username, HttpServletRequest req) {
		Reply reply = new Reply();
		PetMembers mb = (PetMembers) req.getSession(false).getAttribute("petMembers");

		reply.setReplyContent(replyContent);
		reply.setTopicId(Integer.parseInt(topicId));
		java.sql.Timestamp replyTime = null;
		reply.setReplyTime(replyTime);
		reply.setUsername(mb.getUsername());
		
		rs.saveReply(reply);
		return "redirect:/topic?topicId="+topicId;

	}
	
	
}
