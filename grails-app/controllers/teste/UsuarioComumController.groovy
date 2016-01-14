package teste


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioComumController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UsuarioComum.list(params), model: [usuarioComumInstanceCount: UsuarioComum.count()]
    }

    def show(UsuarioComum usuarioComumInstance) {
        respond usuarioComumInstance
    }

    def create() {
        respond new UsuarioComum(params)
    }

    @Transactional
    def save(UsuarioComum usuarioComumInstance) {
        if (usuarioComumInstance == null) {
            notFound()
            return
        }

        if (usuarioComumInstance.hasErrors()) {
            respond usuarioComumInstance.errors, view: 'create'
            return
        }

        usuarioComumInstance.save flush: true

        def roleUser = SecRole.findByAuthority('ROLE_USER')
        SecUserRole.create usuarioComumInstance, roleUser, true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioComum.label', default: 'UsuarioComum'), usuarioComumInstance.id])
                redirect usuarioComumInstance
            }
            '*' { respond usuarioComumInstance, [status: CREATED] }
        }
    }

    def edit(UsuarioComum usuarioComumInstance) {
        respond usuarioComumInstance
    }

    @Transactional
    def update(UsuarioComum usuarioComumInstance) {
        if (usuarioComumInstance == null) {
            notFound()
            return
        }

        if (usuarioComumInstance.hasErrors()) {
            respond usuarioComumInstance.errors, view: 'edit'
            return
        }

        usuarioComumInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UsuarioComum.label', default: 'UsuarioComum'), usuarioComumInstance.id])
                redirect usuarioComumInstance
            }
            '*' { respond usuarioComumInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UsuarioComum usuarioComumInstance) {

        if (usuarioComumInstance == null) {
            notFound()
            return
        }

        usuarioComumInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UsuarioComum.label', default: 'UsuarioComum'), usuarioComumInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioComum.label', default: 'UsuarioComum'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
