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
                            <form:input cssClass="mdl-textfield__input" path="titulo"/>
                            <form:label cssClass="mdl-textfield__label" path="titulo">Título</form:label>
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

                            <label class="mdl-dd-right" for="type">
                                <i class="mdl-icon-toggle__label material-icons">arrow_drop_down</i>
                            </label>
                        </div>
                    </div>

                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <%--<form:input cssClass="mdl-textfield__input" path="duracao"/>--%>
                                <%--<form:label cssClass="mdl-textfield__label" path="duracao">Duração</form:label>--%>
                        </div>

                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <form:input cssClass="mdl-textfield__input" path="dataLancamento"/>
                            <form:label cssClass="mdl-textfield__label"
                                        path="dataLancamento">Ano de Lançamento</form:label>
                        </div>

                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <form:input cssClass="mdl-textfield__input" path="censura"/>
                            <form:label cssClass="mdl-textfield__label" path="censura">Censura</form:label>
                        </div>

                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <form:input cssClass="mdl-textfield__input" path="quantidade"/>
                            <form:label cssClass="mdl-textfield__label" path="quantidade">Quantidade</form:label>
                        </div>
                    </div>
                </div>
                <div class="form__action">
                    <button type="submit" id="submit_button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                        Salvar
                    </button>
                    <a id="cancela_button" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-red" data-upgraded=",MaterialButton,MaterialRipple"
                		href="${s:mvcUrl('FC#listarFilme').build()}" style="width: 115px;" >
                		<i class="material-icons">reply</i>
                			Cancelar
                		<span class="mdl-button__ripple-container"><span class="mdl-ripple is-animating" style="width: 271.783px; height: 271.783px; transform: translate(-50%, -50%) translate(95px, 26px);"></span></span>
                	</a>
                </div>
            </form:form>
        </div>
    </div>
</main>
</tags:pageTemplate>