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
						<h2 class="mdl-card__title-text">Clientes</h2>
					</div>
	                <div>
		                <a class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-button-right" 
		                	href="${s:mvcUrl('CC#cadastrarCliente').build()}">
		                	<i class="material-icons">add</i>
		                </a>
	                </div>
	            </div>
				<thead>
					<tr>
						<th class="mdl-data-table__cell--non-numeric">Nome</th>
						<th class="mdl-data-table__cell--non-numeric">CPF</th>
						<th class="mdl-data-table__cell--non-numeric">Email</th>
						<th class="mdl-data-table__cell--non-numeric">Telefone</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Isaias Tavares da Silva Neto</td>
						<td class="mdl-data-table__cell--non-numeric">043.962.081-38</td>
						<td class="mdl-data-table__cell--non-numeric">isaiasengsoft@gmail.com</td>
						<td class="mdl-data-table__cell--non-numeric">(62) 98266-4145</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Alexandre de Matos Xavier</td>
						<td class="mdl-data-table__cell--non-numeric">470.143.514-78</td>
						<td class="mdl-data-table__cell--non-numeric">amxalexandre@gmail.com</td>
						<td class="mdl-data-table__cell--non-numeric">(62) 99296-5155</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Igor Cavalcante Montenegro Cerqueira</td>
						<td class="mdl-data-table__cell--non-numeric">208.057.310-16</td>
						<td class="mdl-data-table__cell--non-numeric">igor.c.montenegro.c@gmail.com</td>
						<td class="mdl-data-table__cell--non-numeric">(62) 98244-9069</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Lucas Araujo da Serra Campos</td>
						<td class="mdl-data-table__cell--non-numeric">536.558.740-57</td>
						<td class="mdl-data-table__cell--non-numeric">lucaslupus1@gmail.com</td>
						<td class="mdl-data-table__cell--non-numeric">(62) 98115-0722</td>
					</tr>
				</tbody>
			</table>
		</div>
	</main>
</tags:pageTemplate>