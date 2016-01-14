package teste

abstract class Usuario extends SecUser{
    String email
    String endereco
    String telefone
    String foto
    int reputacao = 42

    static hasMany = [animais: Animal]

    static constraints = {
        email unique: true
        foto blank: true, nullable: true
    }

    static mapping = {
        reputacao defaultValue: "22"
    }
}
