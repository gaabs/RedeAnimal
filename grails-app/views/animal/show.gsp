
<%@ page import="teste.Animal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'animal.label', default: 'Animal')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-animal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-animal" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list animal">

				<g:if test="${animalInstance?.nome}">
					<li class="fieldcontain">
						<span id="nome-label" class="property-label"><g:message code="animal.nome.label" default="Nome" /></span>

						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${animalInstance}" field="nome"/></span>

					</li>
				</g:if>
			
				<g:if test="${animalInstance?.idade}">
				<li class="fieldcontain">
					<span id="idade-label" class="property-label"><g:message code="animal.idade.label" default="Idade" /></span>
					
						<span class="property-value" aria-labelledby="idade-label"><g:fieldValue bean="${animalInstance}" field="idade"/></span>
					
				</li>
				</g:if>


				<g:if test="${animalInstance?.sexo}">
					<li class="fieldcontain">
						<span id="sexo-label" class="property-label"><g:message code="animal.sexo.label" default="Sexo" /></span>

						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${animalInstance}" field="sexo"/></span>

					</li>
				</g:if>

				<g:if test="${animalInstance?.espécie}">
				<li class="fieldcontain">
					<span id="espécie-label" class="property-label"><g:message code="animal.espécie.label" default="Espécie" /></span>
					
						<span class="property-value" aria-labelledby="espécie-label"><g:fieldValue bean="${animalInstance}" field="espécie"/></span>
					
				</li>
				</g:if>

				<g:if test="${animalInstance?.raça}">
					<li class="fieldcontain">
						<span id="raça-label" class="property-label"><g:message code="animal.raça.label" default="Raça" /></span>

						<span class="property-value" aria-labelledby="raça-label"><g:fieldValue bean="${animalInstance}" field="raça"/></span>

					</li>
				</g:if>

				<g:if test="${animalInstance?.porte}">
					<li class="fieldcontain">
						<span id="porte-label" class="property-label"><g:message code="animal.porte.label" default="Porte" /></span>

						<span class="property-value" aria-labelledby="porte-label"><g:fieldValue bean="${animalInstance}" field="porte"/></span>

					</li>
				</g:if>

				<g:if test="${animalInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="animal.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:link controller="estado" action="show" id="${animalInstance?.estado?.id}">${animalInstance?.estado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>

				<g:if test="${animalInstance?.cidade}">
					<li class="fieldcontain">
						<span id="cidade-label" class="property-label"><g:message code="animal.cidade.label" default="Cidade" /></span>

						<span class="property-value" aria-labelledby="cidade-label"><g:link controller="cidade" action="show" id="${animalInstance?.cidade?.id}">${animalInstance?.cidade?.encodeAsHTML()}</g:link></span>

					</li>
				</g:if>


				<li class="fieldcontain">
					<span id="vermifugado-label" class="property-label"><g:message code="animal.vermifugação.label" default="Vermifugado" /></span>

					<span class="property-value" aria-labelledby="vermifugado-label"><g:formatBoolean boolean="${animalInstance?.vermifugado}" /></span>

				</li>

				<li class="fieldcontain">
					<span id="esterilizado-label" class="property-label"><g:message code="animal.esterilizado.label" default="Esterilizado" /></span>

						<span class="property-value" aria-labelledby="esterilizado-label"><g:formatBoolean boolean="${animalInstance?.esterilizado}" /></span>

				</li>

				<g:if test="${animalInstance?.deficiência}">
					<li class="fieldcontain">
						<span id="deficiência-label" class="property-label"><g:message code="animal.deficiência.label" default="Deficiência" /></span>

						<span class="property-value" aria-labelledby="deficiência-label"><g:fieldValue bean="${animalInstance}" field="deficiência"/></span>

					</li>
				</g:if>

				<g:if test="${animalInstance?.observações}">
				<li class="fieldcontain">
					<span id="observações-label" class="property-label"><g:message code="animal.observações.label" default="Observações" /></span>
					
						<span class="property-value" aria-labelledby="observações-label"><g:fieldValue bean="${animalInstance}" field="observações"/></span>
					
				</li>
				</g:if>





				<g:if test="${animalInstance?.usuário}">
				<li class="fieldcontain">
					<span id="usuário-label" class="property-label"><g:message code="animal.usuário.label" default="Usuário" /></span>
					
						<span class="property-value" aria-labelledby="usuário-label"><g:link controller="usuario" action="show" id="${animalInstance?.usuário?.id}">${animalInstance?.usuário?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>


			</ol>
			<g:form url="[resource:animalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${animalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
