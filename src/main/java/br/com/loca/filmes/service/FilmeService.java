package br.com.loca.filmes.service;

import br.com.loca.filmes.model.Filme;
import br.com.loca.filmes.repository.FilmeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by astr1x on 08/07/17.
 */

@Service
public class FilmeService {

    @Autowired
    private FilmeRepository filmeRepository;

    public Filme salvarFilme(Filme filme) {
        filme = filmeRepository.save(filme);
        return filme;
    }

    public List<Filme> listarFilmes() {
        return filmeRepository.findAll();
    }

    public void deletarFilme(Filme filme) {
        filmeRepository.delete(filme);
    }

    public Filme consultarFilme(Long id) {
        return filmeRepository.findOne(id);
    }
    
    public List<Filme> pesquisarFilmes(Filme parametrosFilme) {
    	List<Filme> filmesSelecionados = null;
    	filmesSelecionados = filtraFilmes(filmesSelecionados, parametrosFilme);

    	return filmesSelecionados;
    }
    
    private List<Filme> filtraFilmes(List<Filme> filmesSelecionados, Filme parametrosFilme){
    	List<Filme> todosFilmes = filmeRepository.findAll();
    	Filme filme;
    	
    	//percorre todos os filmes
    	while (todosFilmes.isEmpty()){
    		int contador = 0;
    		filme = todosFilmes.get(contador);
    		
    		//Verifica se o registro atual tem os parametros da busca
    		if (((filme.getCensura() == parametrosFilme.getCensura() )||( parametrosFilme.getCensura() == null ))&&((
    			filme.getDataLancamento() == parametrosFilme.getDataLancamento() )||( parametrosFilme.getDataLancamento() == null ))&&(( 
    			filme.getDuracao() == parametrosFilme.getDuracao() )||( parametrosFilme.getDuracao() == null ))&&((
    			filme.getGenero() == parametrosFilme.getGenero() )||( parametrosFilme.getGenero() == null ))&&((
    			filme.getTitulo() == parametrosFilme.getTitulo() )||( parametrosFilme.getTitulo() == null ))&&((
    			filme.getId() == parametrosFilme.getId() )||( parametrosFilme.getId() == null ))&&((
    			filme.getQuantidade() == parametrosFilme.getQuantidade() )||( parametrosFilme.getCensura() == null)))
    		{
    			filmesSelecionados.add(filme);
    		}
    		
    		todosFilmes.remove(contador);
			contador++;
		}
    	
    	return filmesSelecionados;
    }
}
