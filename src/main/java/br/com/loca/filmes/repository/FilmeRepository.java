package br.com.loca.filmes.repository;

import br.com.loca.filmes.model.Filme;
import org.springframework.stereotype.Repository;

/**
 * Created by astr1x on 08/07/17.
 */

@Repository
public interface FilmeRepository extends MyJpaRepository<Filme> {

}
