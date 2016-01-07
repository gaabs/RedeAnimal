package teste

abstract class Usuario extends SecUser{
    String email
    String endereco
    String telefone
    String foto
    int reputacao

    static hasMany = [animais: Animal]

    static constraints = {
    }
}
