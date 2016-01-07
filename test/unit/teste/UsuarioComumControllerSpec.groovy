package teste


import grails.test.mixin.*
import spock.lang.*

@TestFor(UsuarioComumController)
@Mock(UsuarioComum)
class UsuarioComumControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.usuarioComumInstanceList
        model.usuarioComumInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.usuarioComumInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'POST'
        def usuarioComum = new UsuarioComum()
        usuarioComum.validate()
        controller.save(usuarioComum)

        then: "The create view is rendered again with the correct model"
        model.usuarioComumInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        usuarioComum = new UsuarioComum(params)

        controller.save(usuarioComum)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/usuarioComum/show/1'
        controller.flash.message != null
        UsuarioComum.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def usuarioComum = new UsuarioComum(params)
        controller.show(usuarioComum)

        then: "A model is populated containing the domain instance"
        model.usuarioComumInstance == usuarioComum
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def usuarioComum = new UsuarioComum(params)
        controller.edit(usuarioComum)

        then: "A model is populated containing the domain instance"
        model.usuarioComumInstance == usuarioComum
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'PUT'
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/usuarioComum/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def usuarioComum = new UsuarioComum()
        usuarioComum.validate()
        controller.update(usuarioComum)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.usuarioComumInstance == usuarioComum

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        usuarioComum = new UsuarioComum(params).save(flush: true)
        controller.update(usuarioComum)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/usuarioComum/show/$usuarioComum.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'DELETE'
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/usuarioComum/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def usuarioComum = new UsuarioComum(params).save(flush: true)

        then: "It exists"
        UsuarioComum.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(usuarioComum)

        then: "The instance is deleted"
        UsuarioComum.count() == 0
        response.redirectedUrl == '/usuarioComum/index'
        flash.message != null
    }
}
