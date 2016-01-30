import teste.Animal
import teste.Cidade
import teste.Especie
import teste.Estado
import teste.Porte
import teste.SecUser
import teste.SecRole
import teste.SecUserRole
import teste.Sexo
import teste.UsuarioAbrigo

class BootStrap {

    def init = { servletContext ->
        def adminRole = new SecRole('ROLE_ADMIN').save()
        def userRole = new SecRole('ROLE_USER').save()

        def testUser = new SecUser('me', 'pass').save()

        SecUserRole.create testUser, adminRole, true

//        assert SecUser.count() == 1
//        assert SecRole.count() == 2
//        assert SecUserRole.count() == 1

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


        // para testes Testes
        UsuarioAbrigo usuario = new UsuarioAbrigo(username: "AbrigoAnimal", password: "a", email: "a", cnpj: "a", endereco: "a", telefone: "a")
        usuario.save()

        Animal animal;
        animal = new Animal(
                estado: estado,
                cidade: cidade,
                deficiência: "n",
                espécie: Especie.Gato,
                esterilizado: false,
                idade: 0,
                nome: "a",
                observações: "asd",
                porte: Porte.Grande,
                raça: "a",
                sexo: Sexo.Feminino,
                vermifugado: false,
                usuário: usuario
        )
        animal.save()
        animal = new Animal(
                estado: estado,
                cidade: cidade,
                deficiência: "n",
                espécie: Especie.Cachorro,
                esterilizado: false,
                idade: 0,
                nome: "abc",
                observações: "asd",
                porte: Porte.Grande,
                raça: "b",
                sexo: Sexo.Feminino,
                vermifugado: false,
                usuário: usuario
        )
        animal.save()
    }
    def destroy = {
    }
}
