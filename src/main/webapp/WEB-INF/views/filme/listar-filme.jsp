<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<tags:pageTemplate titulo="${titulo}">

	<main class="mdl-layout__content mdl-color--grey-100">
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
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Velozes e Furiosos 8 </td>
						<td class="mdl-data-table__cell--non-numeric">Ação</td>
						<td class="mdl-data-table__cell--non-numeric">2h 40m</td>
						<td class="mdl-data-table__cell--non-numeric">2017</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">A Cabana</td>
						<td class="mdl-data-table__cell--non-numeric">Fantasia/Drama</td>
						<td class="mdl-data-table__cell--non-numeric">2h 13min</td>
						<td class="mdl-data-table__cell--non-numeric">2017</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Interestelar</td>
						<td class="mdl-data-table__cell--non-numeric">Ficção Científica</td>
						<td class="mdl-data-table__cell--non-numeric">2h 49min</td>
						<td class="mdl-data-table__cell--non-numeric">2014</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Clube da Luta</td>
						<td class="mdl-data-table__cell--non-numeric">Drama</td>
						<td class="mdl-data-table__cell--non-numeric">2h 31min</td>
						<td class="mdl-data-table__cell--non-numeric">1999</td>
					</tr>
				</tbody>
			</table>
		</div>
	</main>
</tags:pageTemplate>