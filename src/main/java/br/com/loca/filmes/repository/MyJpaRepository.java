package br.com.loca.filmes.repository;

import br.com.loca.filmes.model.Entidade;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

/**
 * Created by astr1x on 08/07/17.
 */

@NoRepositoryBean
public interface MyJpaRepository<T extends Entidade> extends JpaRepository<T, Long> {
}
