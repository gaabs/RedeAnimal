<%@ page import="teste.UsuarioComum" %>



<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="usuarioComum.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${usuarioComumInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuarioComum.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${usuarioComumInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="usuarioComum.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${usuarioComumInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="usuarioComum.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${usuarioComumInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'animais', 'error')} ">
	<label for="animais">
		<g:message code="usuarioComum.animais.label" default="Animais" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioComumInstance?.animais?}" var="a">
    <li><g:link controller="animal" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="animal" action="create" params="['usuarioComum.id': usuarioComumInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'animal.label', default: 'Animal')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="usuarioComum.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${usuarioComumInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuarioComum.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${usuarioComumInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="usuarioComum.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${usuarioComumInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="usuarioComum.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco" required="" value="${usuarioComumInstance?.endereco}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'foto', 'error')} required">
	<label for="foto">
		<g:message code="usuarioComum.foto.label" default="Foto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="foto" required="" value="${usuarioComumInstance?.foto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="usuarioComum.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${usuarioComumInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'reputacao', 'error')} required">
	<label for="reputacao">
		<g:message code="usuarioComum.reputacao.label" default="Reputacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reputacao" type="number" value="${usuarioComumInstance.reputacao}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="usuarioComum.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${usuarioComumInstance?.telefone}"/>

</div>

