
<%@ page import="teste.Animal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'animal.label', default: 'Animal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-animal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-animal" class="content scaffold-list" role="main">
			<div>
				<g:form action="filterList">
					Nome: <g:textField name="nome" value="${nome}"></g:textField>
					Espécie: <g:select name="espécie" from="${teste.Especie?.values()}" keys="${teste.Especie.values()*.name()}" value="${animalInstance?.espécie?.name()} " noSelection="['': 'Não importa']" />
					Raça: <g:textField name="raça" value="${raça}"></g:textField>
					Sexo: <g:select name="sexo" from="${teste.Sexo?.values()}" keys="${teste.Sexo.values()*.name()}" value="${animalInstance?.sexo?.name()} " noSelection="['': 'Não importa']" />
					Vermifugado: <g:select name="vermifugação" from="${["Sim","Não"]}" keys="${[true,false]}" noSelection="['': 'Não importa']" />
					Esterilizado: <g:select name="esterilizado" from="${["Sim","Não"]}" keys="${[true,false]}" noSelection="['': 'Não importa']" />
					Estado: <g:selectPrimary id="estado" name="estado"
									 domain='teste.Estado'
									 searchField='nome'
									 collectField='id'

									 domain2='teste.Cidade'
									 bindid="estado.id"
									 searchField2='nome'
									 collectField2='id'

									 noSelection="['': 'Não importa']"
									 setId="cidade"
									 value='2'
									 secondaryValue='1'
					/>
					Cidade: <g:select name="cidade" id="cidade" optionKey="id" optionValue="nome" from="[]" required="" noSelection="['': 'Não importa']" />

					<g:submitButton name="submit" value="Pesquisar"></g:submitButton>
				</g:form>
			</div>
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>

						<g:sortableColumn property="nome" title="${message(code: 'animal.nome.label', default: 'Nome')}" />
						<g:sortableColumn property="idade" title="${message(code: 'animal.idade.label', default: 'Idade')}" />
						<g:sortableColumn property="sexo" title="${message(code: 'animal.sexo.label', default: 'Sexo')}" />
						<g:sortableColumn property="espécie" title="${message(code: 'animal.espécie.label', default: 'Espécie')}" />
						<g:sortableColumn property="raça" title="${message(code: 'animal.raça.label', default: 'Raça')}" />

						<g:sortableColumn property="estado" title="${message(code: 'animal.estado.label', default: 'Estado')}" />
						<g:sortableColumn property="cidade" title="${message(code: 'animal.cidade.label', default: 'Cidade')}" />

						<g:sortableColumn property="vermifugado" title="${message(code: 'animal.vermifugado.label', default: 'Vermifugado')}" />
						<g:sortableColumn property="esterilizado" title="${message(code: 'animal.esterilizado.label', default: 'Esterilizado')}" />
						<g:sortableColumn property="deficiência" title="${message(code: 'animal.deficiência.label', default: 'Deficiência')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${animalInstanceList}" status="i" var="animalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${animalInstance.id}">${fieldValue(bean: animalInstance, field: "nome")}</g:link></td>
						<td>${fieldValue(bean: animalInstance, field: "idade")}</td>
						<td>${fieldValue(bean: animalInstance, field: "sexo")}</td>
						<td>${fieldValue(bean: animalInstance, field: "espécie")}</td>
						<td>${fieldValue(bean: animalInstance, field: "raça")}</td>

						<td><g:fieldValue bean="${animalInstance.estado}" field="nome" /></td>
						<td><g:fieldValue bean="${animalInstance.cidade}" field="nome" /></td>

						<td><g:formatBoolean boolean="${animalInstance.vermifugado}" /></td>
						<td><g:formatBoolean boolean="${animalInstance.esterilizado}" /></td>
						<td>${fieldValue(bean: animalInstance, field: "deficiência")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${animalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
