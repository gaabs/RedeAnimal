
<%@ page import="teste.UsuarioComum" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioComum.label', default: 'UsuarioComum')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuarioComum" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-usuarioComum" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'usuarioComum.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'usuarioComum.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'usuarioComum.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'usuarioComum.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'usuarioComum.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'usuarioComum.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioComumInstanceList}" status="i" var="usuarioComumInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioComumInstance.id}">${fieldValue(bean: usuarioComumInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioComumInstance, field: "password")}</td>
					
						<td><g:formatBoolean boolean="${usuarioComumInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${usuarioComumInstance.accountLocked}" /></td>
					
						<td>${fieldValue(bean: usuarioComumInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: usuarioComumInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioComumInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
