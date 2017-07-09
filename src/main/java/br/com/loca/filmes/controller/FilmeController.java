package br.com.loca.filmes.controller;

import br.com.loca.filmes.model.Filme;
import br.com.loca.filmes.service.FilmeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/filme")
public class FilmeController {

	@Autowired
	private FilmeService filmeService;

	@RequestMapping("/")
    public ModelAndView listarFilme() {
    	ModelAndView modelAndView = new ModelAndView("filme/listar-filme");
    	modelAndView.addObject("titulo", "Filmes");
		modelAndView.addObject("filmes", filmeService.listarFilmes());
		return modelAndView;
    }

	@RequestMapping("/pesquisar")
    public ModelAndView pesquisarFilme() {
    	return listarFilme();
    }

	@RequestMapping("/cadastro")
    public ModelAndView cadastrarFilme() {
		ModelAndView modelAndView = new ModelAndView("filme/cadastrar-filme", "command", new Filme());
		modelAndView.addObject("titulo", "Cadastrar Filme");
    	return modelAndView;
    }

	@RequestMapping(value = "/salvar", method = RequestMethod.POST)
	public ModelAndView salvarFilme(@ModelAttribute("SpringWeb") Filme filme, ModelMap model) {
		filmeService.salvarFilme(filme);

    	return listarFilme();
    }

	@RequestMapping("/locar")
    public ModelAndView locarFilme() {
    	ModelAndView modelAndView = new ModelAndView("filme/locar-filme");
    	modelAndView.addObject("titulo", "Locar Filme");
    	return modelAndView;
    }

	@RequestMapping(value = "/delete", method = RequestMethod.DELETE)
	public ModelAndView deletarFilme(@ModelAttribute("SpringWeb") Filme filme) {
		filmeService.salvarFilme(filme);

		return listarFilme();
	}
}
