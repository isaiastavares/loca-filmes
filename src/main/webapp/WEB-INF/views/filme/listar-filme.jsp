<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tags:pageTemplate titulo="${titulo}">

	<main class="mdl-layout__content mdl-color--grey-100">
		
		<!-- Pesquisar Filme -->
		<div class="mdl-card mdl-shadow--2dp employer-form" action="#">
	        <div class="mdl-card__supporting-text">
	            <form:form action="${s:mvcUrl('FC#pesquisarFilme').build()}" method="POST" cssClass="form">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--8-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <form:input class="mdl-textfield__input" path="titulo" type="text" id="title" value="Rei Arthur: A Lenda da Espada"/>
                            <form:label class="mdl-textfield__label" for="title" path="titulo">Título</form:label>
                        </div>

                        <div class="mdl-cell mdl-cell--4-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select">
                            <form:input class="mdl-textfield__input" path="genero" value="Suspense" type="text" id="type" readonly tabIndex="-1"/>

                            <form:label class="mdl-textfield__label" path="genero" for="type">Gênero</form:label>

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
                            <form:input class="mdl-textfield__input" path="duracao" type="text" id="time" value="2h 6min"/>
                            <form:label class="mdl-textfield__label" path="duracao" for="time">Duração</form:label>
                        </div>

                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <form:input class="mdl-textfield__input" path="dataLancamento" type="number" id="year" value="2017"/>
                            <form:label class="mdl-textfield__label" path="dataLancamento" for="year">Ano de Lançamento</form:label>
                        </div>

                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <form:input class="mdl-textfield__input" path="censura" type="text" id="age" value="14 anos"/>
                            <form:label class="mdl-textfield__label" path="censura" for="age">Censura</form:label>
                        </div>

                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <form:input class="mdl-textfield__input" path="quantidade" type="number" id="number" value="3"/>
                            <form:label class="mdl-textfield__label" path="quantidade" for="number">Quantidade</form:label>
                        </div>
                    </div>
                    <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" style="margin-left: 13px"
                    href="${s:mvcUrl('FC#pesquisarFilme').arg(0, filme).build()}">
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
				<c:forEach items="${filmes}" var="filme">
					<tr>
						<td class="mdl-data-table__cell--non-numeric">${filme.titulo}</td>
						<td class="mdl-data-table__cell--non-numeric">Ação</td>
						<td class="mdl-data-table__cell--non-numeric">${filme.duracao}</td>
						<td class="mdl-data-table__cell--non-numeric">
							<fmt:formatDate pattern="dd/MM/yyyy" value="${filme.dataLancamento}" />
						</td>
						<td class="mdl-data-table__cell--non-numeric">
							<a href="${s:mvcUrl('FC#editarFilme').arg(0, filme.id).build()}" title="Editar">
								<i class="material-icons">mode_edit</i>
							</a>
							<a href="${s:mvcUrl('FC#excluirFilme').arg(0, filme.id).build()}" title="Excluir">
								<i class="material-icons">delete</i>
							</a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<div class="mdl-card__rodape">
	                <div>
		                <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-light-blue" 
		                	data-upgraded=",MaterialButton,MaterialRipple"   
		                	href="${s:mvcUrl('FC#locarFilme').build()}" 
		                	style="margin-top: 10px" >
		                	<i class="material-icons">forward</i> Locar
		                </a>
		                <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-red" 
		                	data-upgraded=",MaterialButton,MaterialRipple"    
		                	style="margin-top: 10px" >
		                	<i class="material-icons">forward</i> Devolver
		                </a>
	                </div>
	        </div>
		</div>
	</main>
</tags:pageTemplate>