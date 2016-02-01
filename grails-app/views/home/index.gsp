<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'home.label', default: 'Home')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-animal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>

				<li class="controller"><g:link controller="${"animal"}">${"Animal"}</g:link></li>
				<li class="controller"><g:link controller="${"usuarioComum"}">${"Usuário Comum"}</g:link></li>
				<li class="controller"><g:link controller="${"usuarioAbrigo"}">${"Usuário Abrigo"}</g:link></li>
				<li><g:link action="admin">Admin</g:link></li>
				<li class="controller"><g:link controller="${"logout"}">${"Logout"}</g:link></li>
			</ul>
		</div>
		<div id="list-home" class="content scaffold-list" role="main">

			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>

				</thead>
				<tbody>

				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${animalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
