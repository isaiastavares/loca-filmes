package br.com.loca.filmes.util;

import br.com.loca.filmes.model.Filme;
import br.com.loca.filmes.repository.FilmeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by astr1x on 08/07/17.
 */

@Component
public class PopulaBanco {

    @Autowired
    private FilmeRepository filmeRepository;

    @PostConstruct
    public void init() {

        for (Filme filme : getPessoas()) {
            filmeRepository.save(filme);
        }
    }

    public static List<Filme> getPessoas() {
        List<Filme> filmes = new ArrayList<>();

        Filme filme1 = new Filme();
        filme1.setTitulo("A Bela e a Fera");
        filme1.setDataLancamento(LocalDate.of(2017, 3, 16));
        filme1.setDuracao(LocalTime.parse("01:20:34"));
        filme1.setCensura(0);
        filme1.setQuantidade(3);
        filmes.add(filme1);

        Filme filme2 = new Filme();
        filme2.setTitulo("Piratas do Caribe");
        filme2.setDataLancamento(LocalDate.of(2017, 5, 25));
        filme2.setDuracao(LocalTime.parse("02:09:00"));
        filme2.setCensura(12);
        filme2.setQuantidade(5);
        filmes.add(filme2);

        Filme filme3 = new Filme();
        filme3.setTitulo("A Múmia");
        filme3.setDataLancamento(LocalDate.of(2017, 3, 16));
        filme3.setDuracao(LocalTime.parse("01:51:00"));
        filme3.setCensura(12);
        filme3.setQuantidade(2);
        filmes.add(filme3);

        return filmes;
    }
}
