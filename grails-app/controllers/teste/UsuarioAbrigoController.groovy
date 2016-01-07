package teste


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioAbrigoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UsuarioAbrigo.list(params), model: [usuarioAbrigoInstanceCount: UsuarioAbrigo.count()]
    }

    def show(UsuarioAbrigo usuarioAbrigoInstance) {
        respond usuarioAbrigoInstance
    }

    def create() {
        respond new UsuarioAbrigo(params)
    }

    @Transactional
    def save(UsuarioAbrigo usuarioAbrigoInstance) {
        if (usuarioAbrigoInstance == null) {
            notFound()
            return
        }

        if (usuarioAbrigoInstance.hasErrors()) {
            respond usuarioAbrigoInstance.errors, view: 'create'
            return
        }

        usuarioAbrigoInstance.save flush: true

        def roleUser = SecRole.findByAuthority('ROLE_USER')
        SecUserRole.create usuarioAbrigoInstance, roleUser, true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioAbrigo.label', default: 'UsuarioAbrigo'), usuarioAbrigoInstance.id])
                redirect usuarioAbrigoInstance
            }
            '*' { respond usuarioAbrigoInstance, [status: CREATED] }
        }
    }

    def edit(UsuarioAbrigo usuarioAbrigoInstance) {
        respond usuarioAbrigoInstance
    }

    @Transactional
    def update(UsuarioAbrigo usuarioAbrigoInstance) {
        if (usuarioAbrigoInstance == null) {
            notFound()
            return
        }

        if (usuarioAbrigoInstance.hasErrors()) {
            respond usuarioAbrigoInstance.errors, view: 'edit'
            return
        }

        usuarioAbrigoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UsuarioAbrigo.label', default: 'UsuarioAbrigo'), usuarioAbrigoInstance.id])
                redirect usuarioAbrigoInstance
            }
            '*' { respond usuarioAbrigoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UsuarioAbrigo usuarioAbrigoInstance) {

        if (usuarioAbrigoInstance == null) {
            notFound()
            return
        }

        usuarioAbrigoInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UsuarioAbrigo.label', default: 'UsuarioAbrigo'), usuarioAbrigoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioAbrigo.label', default: 'UsuarioAbrigo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
