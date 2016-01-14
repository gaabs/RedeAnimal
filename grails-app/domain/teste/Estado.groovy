package teste

class Estado {
    String nome

    static hasMany = [cidades: Cidade]

    static constraints = {
        nome unique: true, blank: false
    }
}
