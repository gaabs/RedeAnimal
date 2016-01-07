<%@ page import="teste.UsuarioAbrigo" %>



<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="usuarioAbrigo.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${usuarioAbrigoInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuarioAbrigo.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${usuarioAbrigoInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="usuarioAbrigo.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${usuarioAbrigoInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="usuarioAbrigo.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${usuarioAbrigoInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'animais', 'error')} ">
	<label for="animais">
		<g:message code="usuarioAbrigo.animais.label" default="Animais" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioAbrigoInstance?.animais?}" var="a">
    <li><g:link controller="animal" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="animal" action="create" params="['usuarioAbrigo.id': usuarioAbrigoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'animal.label', default: 'Animal')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'cnpj', 'error')} required">
	<label for="cnpj">
		<g:message code="usuarioAbrigo.cnpj.label" default="Cnpj" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cnpj" required="" value="${usuarioAbrigoInstance?.cnpj}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuarioAbrigo.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${usuarioAbrigoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="usuarioAbrigo.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${usuarioAbrigoInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="usuarioAbrigo.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco" required="" value="${usuarioAbrigoInstance?.endereco}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'foto', 'error')} required">
	<label for="foto">
		<g:message code="usuarioAbrigo.foto.label" default="Foto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="foto" required="" value="${usuarioAbrigoInstance?.foto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="usuarioAbrigo.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${usuarioAbrigoInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'reputacao', 'error')} required">
	<label for="reputacao">
		<g:message code="usuarioAbrigo.reputacao.label" default="Reputacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reputacao" type="number" value="${usuarioAbrigoInstance.reputacao}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="usuarioAbrigo.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${usuarioAbrigoInstance?.telefone}"/>

</div>

