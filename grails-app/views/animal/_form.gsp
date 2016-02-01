<%@ page import="teste.Animal" %>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="animal.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${animalInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'idade', 'error')} required">
	<label for="idade">
		<g:message code="animal.idade.label" default="Idade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idade" type="number" value="${animalInstance.idade}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="animal.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${teste.Sexo?.values()}" keys="${teste.Sexo.values()*.name()}" required="" value="${animalInstance?.sexo?.name()}" />

</div>


<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'espécie', 'error')} required">
	<label for="espécie">
		<g:message code="animal.espécie.label" default="Espécie" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="espécie" from="${teste.Especie?.values()}" keys="${teste.Especie.values()*.name()}" required="" value="${animalInstance?.espécie?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'raça', 'error')} required">
	<label for="raça">
		<g:message code="animal.raça.label" default="Raça" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="raça" required="" value="${animalInstance?.raça}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'porte', 'error')} required">
	<label for="porte">
		<g:message code="animal.porte.label" default="Porte" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="porte" from="${teste.Porte?.values()}" keys="${teste.Porte.values()*.name()}" required="" value="${animalInstance?.porte?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="animal.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:selectPrimary id="estado" name="estado"
					 domain='teste.Estado'
					 searchField='nome'
					 collectField='id'

					 domain2='teste.Cidade'
					 bindid="estado.id"
					 searchField2='nome'
					 collectField2='id'

					 noSelection="['': 'Please choose Estado']"
					 setId="cidade"
					 value='1'
					 secondaryValue='2'
	/>
</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="animal.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="cidade" id="cidade" optionKey="id" optionValue="nome" from="[]" required="required" noSelection="['': 'Please choose estado']" />
</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'deficiência', 'error')} required">
	<label for="deficiência">
		<g:message code="animal.deficiência.label" default="Deficiência" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="deficiência" required="" value="${animalInstance?.deficiência}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'esterilizado', 'error')} ">
	<label for="esterilizado">
		<g:message code="animal.esterilizado.label" default="Esterilizado" />

	</label>
	<g:checkBox name="esterilizado" value="${animalInstance?.esterilizado}" />

</div>


<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'observações', 'error')} required">
	<label for="observações">
		<g:message code="animal.observações.label" default="Observações" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observações" required="" value="${animalInstance?.observações}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'vermifugado', 'error')} required">
	<label for="vermifugado">
		<g:message code="animal.vermifugação.label" default="Vermifugado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="vermifugado" required="" value="${animalInstance?.vermifugado}"/>

</div>



<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'usuário', 'error')} required">
	<label for="usuário">
		<g:message code="animal.usuário.label" default="Usuário" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuário" name="usuário.id" from="${teste.Usuario.list()}" optionKey="id" required="" value="${animalInstance?.usuário?.id}" class="many-to-one"/>

</div>



