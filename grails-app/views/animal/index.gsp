
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
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="animal.cidade.label" default="Cidade" /></th>
					
						<g:sortableColumn property="deficiência" title="${message(code: 'animal.deficiência.label', default: 'Deficiência')}" />
					
						<g:sortableColumn property="espécie" title="${message(code: 'animal.espécie.label', default: 'Espécie')}" />
					
						<th><g:message code="animal.estado.label" default="Estado" /></th>
					
						<g:sortableColumn property="esterilizado" title="${message(code: 'animal.esterilizado.label', default: 'Esterilizado')}" />
					
						<g:sortableColumn property="idade" title="${message(code: 'animal.idade.label', default: 'Idade')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${animalInstanceList}" status="i" var="animalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${animalInstance.id}">${fieldValue(bean: animalInstance, field: "cidade")}</g:link></td>
					
						<td>${fieldValue(bean: animalInstance, field: "deficiência")}</td>
					
						<td>${fieldValue(bean: animalInstance, field: "espécie")}</td>
					
						<td>${fieldValue(bean: animalInstance, field: "estado")}</td>
					
						<td><g:formatBoolean boolean="${animalInstance.esterilizado}" /></td>
					
						<td>${fieldValue(bean: animalInstance, field: "idade")}</td>
					
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