package br.com.loca.filmes.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import java.time.LocalTime;

/**
 * Created by astr1x on 08/07/17.
 */

@Entity
public class Filme extends Entidade {

    @Column(nullable = false)
    private String titulo;

    @Column(nullable = false)
    private LocalTime duracao;

    @Column(nullable = false)
    private Byte censura;

    @Column(nullable = false)
    private Short anoLancamento;

    @Column(nullable = false)
    private Integer quantidade;

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public LocalTime getDuracao() {
        return duracao;
    }

    public void setDuracao(LocalTime duracao) {
        this.duracao = duracao;
    }

    public Byte getCensura() {
        return censura;
    }

    public void setCensura(Byte censura) {
        this.censura = censura;
    }

    public Short getAnoLancamento() {
        return anoLancamento;
    }

    public void setAnoLancamento(Short anoLancamento) {
        this.anoLancamento = anoLancamento;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }
}
