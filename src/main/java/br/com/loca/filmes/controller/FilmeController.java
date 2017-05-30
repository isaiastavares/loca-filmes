package br.com.loca.filmes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FilmeController {
	
	@RequestMapping("/filme")
    public ModelAndView listarFilme() {
    	ModelAndView modelAndView = new ModelAndView("filme/listar-filme");
    	modelAndView.addObject("titulo", "Filmes");
    	return modelAndView;
    }
	
	@RequestMapping("/filme/cadastro")
    public ModelAndView cadastrarFilme() {
    	ModelAndView modelAndView = new ModelAndView("filme/cadastrar-filme");
    	modelAndView.addObject("titulo", "Cadastrar Filme");
    	return modelAndView;
    }

}
