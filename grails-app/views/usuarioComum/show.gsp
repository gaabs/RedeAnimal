
<%@ page import="teste.UsuarioComum" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioComum.label', default: 'UsuarioComum')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuarioComum" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuarioComum" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuarioComum">
			
				<g:if test="${usuarioComumInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="usuarioComum.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${usuarioComumInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioComumInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="usuarioComum.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${usuarioComumInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioComumInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="usuarioComum.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${usuarioComumInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioComumInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="usuarioComum.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${usuarioComumInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioComumInstance?.animais}">
				<li class="fieldcontain">
					<span id="animais-label" class="property-label"><g:message code="usuarioComum.animais.label" default="Animais" /></span>
					
						<g:each in="${usuarioComumInstance.animais}" var="a">
						<span class="property-value" aria-labelledby="animais-label"><g:link controller="animal" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioComumInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="usuarioComum.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${usuarioComumInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioComumInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="usuarioComum.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioComumInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioComumInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="usuarioComum.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${usuarioComumInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioComumInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="usuarioComum.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${usuarioComumInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioComumInstance?.foto}">
				<li class="fieldcontain">
					<span id="foto-label" class="property-label"><g:message code="usuarioComum.foto.label" default="Foto" /></span>
					
						<span class="property-value" aria-labelledby="foto-label"><g:fieldValue bean="${usuarioComumInstance}" field="foto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioComumInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="usuarioComum.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${usuarioComumInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioComumInstance?.reputacao}">
				<li class="fieldcontain">
					<span id="reputacao-label" class="property-label"><g:message code="usuarioComum.reputacao.label" default="Reputacao" /></span>
					
						<span class="property-value" aria-labelledby="reputacao-label"><g:fieldValue bean="${usuarioComumInstance}" field="reputacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioComumInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="usuarioComum.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${usuarioComumInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioComumInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioComumInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
