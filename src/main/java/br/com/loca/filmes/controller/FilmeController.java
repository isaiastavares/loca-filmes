package br.com.loca.filmes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/filme")
public class FilmeController {
	
	@RequestMapping("/")
    public ModelAndView listarFilme() {
    	ModelAndView modelAndView = new ModelAndView("filme/listar-filme");
    	modelAndView.addObject("titulo", "Filmes");
    	return modelAndView;
    }
	
	@RequestMapping("/cadastro")
    public ModelAndView cadastrarFilme() {
    	ModelAndView modelAndView = new ModelAndView("filme/cadastrar-filme");
    	modelAndView.addObject("titulo", "Cadastrar Filme");
    	return modelAndView;
    }
	
	@RequestMapping(value = "/salvar", method = RequestMethod.POST)
    public ModelAndView salvarFilme() {
    	return listarFilme();
    }

	@RequestMapping("/locar")
    public ModelAndView locarFilme() {
    	ModelAndView modelAndView = new ModelAndView("filme/locar-filme");
    	modelAndView.addObject("titulo", "Locar Filme");
    	return modelAndView;
    }
}
