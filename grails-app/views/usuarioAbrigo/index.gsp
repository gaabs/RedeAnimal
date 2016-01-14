
<%@ page import="teste.UsuarioAbrigo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioAbrigo.label', default: 'UsuarioAbrigo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuarioAbrigo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-usuarioAbrigo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'usuarioAbrigo.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'usuarioAbrigo.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'usuarioAbrigo.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="foto" title="${message(code: 'usuarioAbrigo.foto.label', default: 'Foto')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'usuarioAbrigo.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'usuarioAbrigo.accountLocked.label', default: 'Account Locked')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioAbrigoInstanceList}" status="i" var="usuarioAbrigoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioAbrigoInstance.id}">${fieldValue(bean: usuarioAbrigoInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioAbrigoInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: usuarioAbrigoInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: usuarioAbrigoInstance, field: "foto")}</td>
					
						<td><g:formatBoolean boolean="${usuarioAbrigoInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${usuarioAbrigoInstance.accountLocked}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioAbrigoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
