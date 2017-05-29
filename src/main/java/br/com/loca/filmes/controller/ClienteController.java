package br.com.loca.filmes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ClienteController {
	
	@RequestMapping("/cliente")
    public ModelAndView listarCliente() {
    	ModelAndView modelAndView = new ModelAndView("cliente/listar-cliente");
    	modelAndView.addObject("titulo", "Clientes");
    	return modelAndView;
    }
	
	@RequestMapping("/cliente/cadastro")
    public ModelAndView cadastrarCliente() {
    	ModelAndView modelAndView = new ModelAndView("cliente/cadastrar-cliente");
    	modelAndView.addObject("titulo", "Cadastrar Cliente");
    	return modelAndView;
    }

}
