<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="${titulo}">

<main class="mdl-layout__content mdl-color--grey-100">
    <div class="mdl-card mdl-shadow--2dp employer-form" action="#">
        <div class="mdl-card__title">
            <h2>Locar Filme</h2>
        </div>

        <div class="mdl-card__supporting-text">
            <form action="#" class="form">
                <div class="form__article">

                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--8-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="title" value="Velozes e Furiosos 8"/>
                            <label class="mdl-textfield__label" for="title">Título</label>
                        </div>

                        <div class="mdl-cell mdl-cell--4-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" value="Ação" type="text" id="type" readonly tabIndex="-1"/>
                            <label class="mdl-textfield__label" for="type">Gênero</label>
                        </div>
                    </div>

                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="time" value="2h 6min"/>
                            <label class="mdl-textfield__label" for="time">Código</label>
                        </div>

                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label is-dirty is-upgraded" data-upgraded=",MaterialTextfield">
                            <input class="mdl-textfield__input" type="text" id="data-dev" value="30/05/2017"/>
                            <label class="mdl-textfield__label" for="data-dev">Data de devolução</label>
                        </div>

                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="age" value="14 anos"/>
                            <label class="mdl-textfield__label" for="age">Censura</label>
                        </div>

                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="number" id="number" value="3"/>
                            <label class="mdl-textfield__label" for="number">Quantidade Disponível</label>
                        </div>
                    </div>
                </div>
                <div class="form__action">
                    <button id="submit_button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                        Confirma
                    </button>
                </div>
            </form>
        </div>
    </div>
</main>
</tags:pageTemplate>