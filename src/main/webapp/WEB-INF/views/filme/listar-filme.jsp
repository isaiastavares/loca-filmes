<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<tags:pageTemplate titulo="${titulo}">

	<main class="mdl-layout__content mdl-color--grey-100">

		<!-- Pesquisar Filme -->
		<div class="mdl-card mdl-shadow--2dp employer-form" action="#">
	        <div class="mdl-card__supporting-text">
	            <form:form action="${s:mvcUrl('FC#pesquisarFilme').build()}" method="POST" cssClass="form">
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

                            <label class="mdl-dd-right" for="type">
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
                    <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" style="margin-left: 13px">
                        Pesquisar
                    </button>
	            </form:form>
	        </div>
	    </div>

    	<!-- Listar Filme -->
		<div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--4-col-phone ">
			<table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp projects-table">
				<div class="mdl-card__title">
					<div>
						<h2 class="mdl-card__title-text">Filmes</h2>
					</div>
	                <div class="mdl-button-right">
		                <a class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored"
		                	href="${s:mvcUrl('FC#cadastrarFilme').build()}">
		                	<i class="material-icons">add</i>
		                </a>
	                </div>
	            </div>
				<thead>
					<tr>
						<th class="mdl-data-table__cell--non-numeric">Título</th>
						<th class="mdl-data-table__cell--non-numeric">Gênero</th>
						<th class="mdl-data-table__cell--non-numeric">Duração</th>
						<th class="mdl-data-table__cell--non-numeric">Ano de Lançamento</th>
						<th style="width: 7%" class="mdl-data-table__cell--non-numeric">Ações</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Velozes e Furiosos 8 </td>
						<td class="mdl-data-table__cell--non-numeric">Ação</td>
						<td class="mdl-data-table__cell--non-numeric">2h 40m</td>
						<td class="mdl-data-table__cell--non-numeric">2017</td>
						<td class="mdl-data-table__cell--non-numeric">
							<a href="${s:mvcUrl('FC#locarFilme').build()}" title="Locar Filme">
								<i class="material-icons">forward</i>
							</a>
							<a href="${s:mvcUrl('FC#cadastrarFilme').build()}" title="Editar">
								<i class="material-icons">mode_edit</i>
							</a>
							<a href="#" data-toggle="modal" data-target="#confirm-delete" title="Excluir">
								<i class="material-icons">delete</i>
							</a>
						</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">A Cabana</td>
						<td class="mdl-data-table__cell--non-numeric">Fantasia/Drama</td>
						<td class="mdl-data-table__cell--non-numeric">2h 13min</td>
						<td class="mdl-data-table__cell--non-numeric">2017</td>
						<td class="mdl-data-table__cell--non-numeric">
							<a href="${s:mvcUrl('FC#locarFilme').build()}" title="Locar Filme">
								<i class="material-icons">forward</i>
							</a>
							<a href="${s:mvcUrl('FC#cadastrarFilme').build()}" title="Editar">
								<i class="material-icons">mode_edit</i>
							</a>
							<a href="#" data-toggle="modal" data-target="#confirm-delete" title="Excluir">
								<i class="material-icons">delete</i>
							</a>
						</td>
						</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Interestelar</td>
						<td class="mdl-data-table__cell--non-numeric">Ficção Científica</td>
						<td class="mdl-data-table__cell--non-numeric">2h 49min</td>
						<td class="mdl-data-table__cell--non-numeric">2014</td>
						<td class="mdl-data-table__cell--non-numeric">
							<a href="${s:mvcUrl('FC#locarFilme').build()}" title="Locar Filme">
								<i class="material-icons">forward</i>
							</a>
							<a href="${s:mvcUrl('FC#cadastrarFilme').build()}" title="Editar">
								<i class="material-icons">mode_edit</i>
							</a>
							<a href="#" data-toggle="modal" data-target="#confirm-delete" title="Excluir">
								<i class="material-icons">delete</i>
							</a>
						</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Clube da Luta</td>
						<td class="mdl-data-table__cell--non-numeric">Drama</td>
						<td class="mdl-data-table__cell--non-numeric">2h 31min</td>
						<td class="mdl-data-table__cell--non-numeric">1999</td>
						<td class="mdl-data-table__cell--non-numeric">
							<a href="${s:mvcUrl('FC#locarFilme').build()}" title="Locar Filme">
								<i class="material-icons">forward</i>
							</a>
							<a href="${s:mvcUrl('FC#cadastrarFilme').build()}" title="Editar">
								<i class="material-icons">mode_edit</i>
							</a>
							<a href="#" data-toggle="modal" data-target="#confirm-delete" title="Excluir">
								<i class="material-icons">delete</i>
							</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</main>
</tags:pageTemplate>