package br.com.loca.filmes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/conta")
public class ContaController {

	@RequestMapping("/minha-conta")
	public ModelAndView minhaConta() {
		ModelAndView modelAndView = new ModelAndView("conta/minha-conta");
		modelAndView.addObject("titulo", "Minha Conta");
		return modelAndView;
	}

}
