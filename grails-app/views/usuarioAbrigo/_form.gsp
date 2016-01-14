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

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuarioAbrigo.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${usuarioAbrigoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'foto', 'error')} ">
	<label for="foto">
		<g:message code="usuarioAbrigo.foto.label" default="Foto" />
		
	</label>
	<g:textField name="foto" value="${usuarioAbrigoInstance?.foto}"/>

</div>


</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'cnpj', 'error')} required">
	<label for="cnpj">
		<g:message code="usuarioAbrigo.cnpj.label" default="Cnpj" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cnpj" required="" value="${usuarioAbrigoInstance?.cnpj}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="usuarioAbrigo.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco" required="" value="${usuarioAbrigoInstance?.endereco}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioAbrigoInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="usuarioAbrigo.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${usuarioAbrigoInstance?.telefone}"/>

</div>

