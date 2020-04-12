package co.grandcircus.Survey.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.Survey.Objects.Survey;
import co.grandcircus.Survey.Repo.SurveyRepo;



@Controller
public class SurveyController {

	
//	private Information information;
	
	
	
	@Autowired
	private SurveyRepo infoRepo;
	
	@RequestMapping("/survey")
	public ModelAndView showSurveyForm() {
		
		return new ModelAndView("survey-form");
	}
	 
	@PostMapping("/survey")
	public ModelAndView showSubmitPage(@RequestParam (value="name",required=true) String name,
			@RequestParam(value="email",required=true) String email,@RequestParam (value="sex") String sex,
			@RequestParam(value="age") String age, @RequestParam(value="role") String role,
			@RequestParam(value="recommend") String codingBootcampRecommendation,
			@RequestParam(value="skills") String futureSkills,
			@RequestParam("cm") String comment) {
		System.out.println("hellllooooo");
		System.out.println("emial"+email);
		Survey information = new Survey();
		information.setAge(age);
		information.setCodingBootcampRecommendation(codingBootcampRecommendation);
		information.setComment(comment);
		information.setFullName(name);
		information.setSex(sex);
		information.setRole(role);
		information.setFutureSkills(futureSkills);
		information.setEmail(email);
		System.out.println("info"+information);

		
		infoRepo.save(information);
		
		return new ModelAndView("submit-page","msg","Your survey was submitted successfully.");
	}
}
