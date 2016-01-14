package teste

class Cidade {
    String nome

    static belongsTo = [estado: Estado]

    static constraints = {
        nome unique: true, blank: false
    }
}
