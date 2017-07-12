package br.com.loca.filmes.controller;

import br.com.loca.filmes.model.Filme;
import br.com.loca.filmes.model.Genero;
import br.com.loca.filmes.service.FilmeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
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
    public ModelAndView pesquisarFilme(Filme filme) {
		ModelAndView modelAndView = new ModelAndView("filme/listar-filme");
    	modelAndView.addObject("titulo", "Filmes");
		modelAndView.addObject("filmes", filmeService.pesquisarFilmes(filme));
    	return modelAndView;
    }

	@RequestMapping("/cadastro")
    public ModelAndView cadastrarFilme() {
		ModelAndView modelAndView = new ModelAndView("filme/cadastrar-filme", "command", new Filme());
		modelAndView.addObject("titulo", "Cadastrar Filme");
		modelAndView.addObject("generos", Genero.values());
		return modelAndView;
    }
	
	@RequestMapping("/editar")
    public ModelAndView editarFilme(Long id) {
		Filme filme = filmeService.consultarFilme(id);
		ModelAndView modelAndView = new ModelAndView("filme/cadastrar-filme", "command", filme);
		return modelAndView;
    }

	@RequestMapping(value = "/salvar", method = RequestMethod.POST)
	public ModelAndView salvarFilme(Filme filme) {
		filmeService.salvarFilme(filme);

    	return listarFilme();
    }

	@RequestMapping("/locar")
    public ModelAndView locarFilme() {
    	ModelAndView modelAndView = new ModelAndView("filme/locar-filme");
    	modelAndView.addObject("titulo", "Locar Filme");
    	return modelAndView;
    }

	@RequestMapping(value = "/excluir")
	public ModelAndView excluirFilme(Long id) {
		Filme filme = filmeService.consultarFilme(id);
		filmeService.deletarFilme(filme);

		return listarFilme();
	}
}
