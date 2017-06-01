<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="${titulo}">

<main class="mdl-layout__content mdl-color--grey-100">
    <div class="mdl-card mdl-shadow--2dp employer-form" action="#">
        <div class="mdl-card__title">
            <h2>Filme</h2>
        </div>

        <div class="mdl-card__supporting-text">
            <form:form action="${s:mvcUrl('FC#salvarFilme').build()}" method="POST" cssClass="form">
                <div class="form__article">

                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--8-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="title" value="Rei Arthur: A Lenda da Espada"/>
                            <label class="mdl-textfield__label" for="title">Título</label>
                        </div>

                        <div class="mdl-cell mdl-cell--4-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select">
                            <input class="mdl-textfield__input" value="Suspense" type="text" id="type" readonly tabIndex="-1"/>

                            <label class="mdl-textfield__label" for="type">Gênero</label>

                            <ul class="mdl-menu mdl-menu--bottom-left mdl-js-menu dark_dropdown" for="type">
                                <li class="mdl-menu__item">Ação</li>
                                <li class="mdl-menu__item">Animação</li>
                                <li class="mdl-menu__item">Aventura</li>
                                <li class="mdl-menu__item">Comédia</li>
                                <li class="mdl-menu__item">Fantasia</li>
                                <li class="mdl-menu__item">Faroeste</li>
                                <li class="mdl-menu__item">Ficção científica</li>
                                <li class="mdl-menu__item">Guerra</li>
                                <li class="mdl-menu__item">Musicais</li>
                                <li class="mdl-menu__item">Romance</li>
                                <li class="mdl-menu__item">Suspense</li>

                            </ul>

                            <label for="type">
                                <i class="mdl-icon-toggle__label material-icons">arrow_drop_down</i>
                            </label>
                        </div>
                    </div>

                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="time" value="2h 6min"/>
                            <label class="mdl-textfield__label" for="time">Duração</label>
                        </div>

                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="number" id="year" value="2017"/>
                            <label class="mdl-textfield__label" for="year">Ano de Lançamento</label>
                        </div>

                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="age" value="14 anos"/>
                            <label class="mdl-textfield__label" for="age">Censura</label>
                        </div>

                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="number" id="number" value="3"/>
                            <label class="mdl-textfield__label" for="number">Quantidade</label>
                        </div>
                    </div>
                </div>
                <button type="submit" id="submit_button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                    Salvar
                </button>
            </form:form>
        </div>
    </div>
</main>
</tags:pageTemplate>