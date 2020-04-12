package co.grandcircus.Survey.Controller;

import java.util.List;

/**
 * 
 * @author >>RanaSiroosian<<
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.grandcircus.Survey.Objects.Survey;
import co.grandcircus.Survey.Repo.SurveyRepo;

@Controller
public class SurveyController {

//	private Information information;

	@Autowired
	private SurveyRepo infoRepo;

	@RequestMapping("/survey")
	public ModelAndView showSurveyForm() {

		return new ModelAndView("survey-form", "list", infoRepo.findAll());
	}

	@PostMapping("/survey")
	public ModelAndView showSubmitPage(@RequestParam(value = "name", required = true) String name,
			@RequestParam(value = "email", required = true) String email, @RequestParam(value = "sex") String sex,
			@RequestParam(value = "age") String age, @RequestParam(value = "role") String role,
			@RequestParam(value = "recommend") String codingBootcampRecommendation,
			@RequestParam(value = "skills") String futureSkills, @RequestParam("cm") String comment,
			@RequestParam(value="enrolled", required=true)String enrolled,RedirectAttributes red) {
		List<Survey> em = infoRepo.findAll();
		for (Survey ems : em) {
			if (ems.getEmail().equalsIgnoreCase(email)) {
				ModelAndView mav = new ModelAndView("redirect:/survey");
				red.addFlashAttribute("msg", "This email address has been already used for this survey.");
				red.addFlashAttribute("msgType", "warning");
				return mav;
			}
		}

		System.out.println("hellllooooo");
		System.out.println("emial" + email);
		Survey information = new Survey();
		information.setAge(age);
		information.setCodingBootcampRecommendation(codingBootcampRecommendation);
		information.setComment(comment);
		information.setFullName(name);
		information.setSex(sex);
		information.setRole(role);
		information.setFutureSkills(futureSkills);
		information.setEmail(email);
		information.setEnrolled(enrolled);
		System.out.println("info" + information);

		infoRepo.save(information);

		ModelAndView mav = new ModelAndView("redirect:/survey");
		red.addFlashAttribute("msg", "Your survey was submitted successfully.");
		red.addFlashAttribute("msgType", "warning");
		return mav;

	}

}
