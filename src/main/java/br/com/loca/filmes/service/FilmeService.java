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
}
