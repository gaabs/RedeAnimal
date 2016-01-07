package teste

class Animal {
    String nome
    Sexo sexo
    Especie espécie
    String raça
    Estado estado
    Cidade cidade
    int idade
    Porte porte
    String vermifugação
    boolean esterilizado
    String deficiência
    String observações

    static belongsTo = [usuário: Usuario]


    static constraints = {
    }
}
