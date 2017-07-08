package br.com.loca.filmes.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import java.time.LocalDate;
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
    private Integer censura;

    @Column(nullable = false)
    private LocalDate dataLancamento;

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

    public Integer getCensura() {
        return censura;
    }

    public void setCensura(Integer censura) {
        this.censura = censura;
    }

    public LocalDate getDataLancamento() {
        return dataLancamento;
    }

    public void setDataLancamento(LocalDate dataLancamento) {
        this.dataLancamento = dataLancamento;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }
}
