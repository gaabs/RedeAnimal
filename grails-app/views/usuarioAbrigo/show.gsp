
<%@ page import="teste.UsuarioAbrigo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioAbrigo.label', default: 'UsuarioAbrigo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuarioAbrigo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuarioAbrigo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuarioAbrigo">
			
				<g:if test="${usuarioAbrigoInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="usuarioAbrigo.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${usuarioAbrigoInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioAbrigoInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="usuarioAbrigo.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${usuarioAbrigoInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioAbrigoInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="usuarioAbrigo.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${usuarioAbrigoInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioAbrigoInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="usuarioAbrigo.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${usuarioAbrigoInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioAbrigoInstance?.animais}">
				<li class="fieldcontain">
					<span id="animais-label" class="property-label"><g:message code="usuarioAbrigo.animais.label" default="Animais" /></span>
					
						<g:each in="${usuarioAbrigoInstance.animais}" var="a">
						<span class="property-value" aria-labelledby="animais-label"><g:link controller="animal" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioAbrigoInstance?.cnpj}">
				<li class="fieldcontain">
					<span id="cnpj-label" class="property-label"><g:message code="usuarioAbrigo.cnpj.label" default="Cnpj" /></span>
					
						<span class="property-value" aria-labelledby="cnpj-label"><g:fieldValue bean="${usuarioAbrigoInstance}" field="cnpj"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioAbrigoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="usuarioAbrigo.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioAbrigoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioAbrigoInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="usuarioAbrigo.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${usuarioAbrigoInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioAbrigoInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="usuarioAbrigo.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${usuarioAbrigoInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioAbrigoInstance?.foto}">
				<li class="fieldcontain">
					<span id="foto-label" class="property-label"><g:message code="usuarioAbrigo.foto.label" default="Foto" /></span>
					
						<span class="property-value" aria-labelledby="foto-label"><g:fieldValue bean="${usuarioAbrigoInstance}" field="foto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioAbrigoInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="usuarioAbrigo.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${usuarioAbrigoInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioAbrigoInstance?.reputacao}">
				<li class="fieldcontain">
					<span id="reputacao-label" class="property-label"><g:message code="usuarioAbrigo.reputacao.label" default="Reputacao" /></span>
					
						<span class="property-value" aria-labelledby="reputacao-label"><g:fieldValue bean="${usuarioAbrigoInstance}" field="reputacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioAbrigoInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="usuarioAbrigo.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${usuarioAbrigoInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioAbrigoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioAbrigoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
