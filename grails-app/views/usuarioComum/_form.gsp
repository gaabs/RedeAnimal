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

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuarioComum.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${usuarioComumInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'foto', 'error')} ">
	<label for="foto">
		<g:message code="usuarioComum.foto.label" default="Foto" />
		
	</label>
	<g:textField name="foto" value="${usuarioComumInstance?.foto}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="usuarioComum.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${usuarioComumInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="usuarioComum.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco" required="" value="${usuarioComumInstance?.endereco}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioComumInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="usuarioComum.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${usuarioComumInstance?.telefone}"/>

</div>

