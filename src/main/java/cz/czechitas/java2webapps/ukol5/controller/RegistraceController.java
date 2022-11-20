package cz.czechitas.java2webapps.ukol5.controller;
import org.springframework.http.server.DelegatingServerHttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.Random;
import javax.validation.Valid;
/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {
  private final Random random = new Random();
  @GetMapping("/")
  public ModelAndView index() {
    ModelAndView modelAndView = new ModelAndView("/formular");
    modelAndView.addObject("form", new RegistraceForm());
    return modelAndView;
  }
  @PostMapping("")
  public Object form(@Valid @ModelAttribute("form") RegistraceForm form, BindingResult bindingResult) {
    if (bindingResult.hasErrors()) {
      return "registrace:/";
    }
    if (form.getVek() <= 9 || form.getVek() >= 15) {
      return "/chybny-vek";
    }
    return new ModelAndView("/registrace");

  }

}
