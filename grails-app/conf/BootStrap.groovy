import teste.Cidade
import teste.Estado
import teste.SecUser
import teste.SecRole
import teste.SecUserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = new SecRole('ROLE_ADMIN').save()
        def userRole = new SecRole('ROLE_USER').save()

        def testUser = new SecUser('me', 'pass').save()

        SecUserRole.create testUser, adminRole, true

        assert SecUser.count() == 1
        assert SecRole.count() == 2
        assert SecUserRole.count() == 1

        def estado = new Estado(nome: "Pernambuco").save()
        def cidade = new Cidade(nome: "Recife")
        cidade.estado = estado
        cidade.save()
        cidade = new Cidade(nome: "Olinda")
        cidade.estado = estado
        cidade.save()

        estado = new Estado(nome: "São Paulo").save()
        cidade = new Cidade(nome: "São paulo")
        cidade.estado = estado
        cidade.save()
    }
    def destroy = {
    }
}
