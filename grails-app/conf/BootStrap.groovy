import teste.Cidade
import teste.Estado
import teste.User
import teste.Role
import teste.UserRole

class BootStrap {

    def init = { servletContext ->
//        def adminRole = new Role('ROLE_ADMIN').save()
//        def userRole = new Role('ROLE_USER').save()
//
//        def testUser = new User('me', 'pass').save()
//
//        UserRole.create testUser, adminRole, true
//
//        assert User.count() == 1
//        assert Role.count() == 2
//        assert UserRole.count() == 1
//
//        def estado = new Estado(nome: "Pernambuco").save()
//        def cidade = new Cidade(nome: "Recife")
//        cidade.estado = estado
//        cidade.save()
//        cidade = new Cidade(nome: "Olinda")
//        cidade.estado = estado
//        cidade.save()
//
//        estado = new Estado(nome: "São Paulo").save()
//        cidade = new Cidade(nome: "São paulo")
//        cidade.estado = estado
//        cidade.save()
    }
    def destroy = {
    }
}
