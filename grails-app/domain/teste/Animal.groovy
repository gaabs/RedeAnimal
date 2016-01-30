package teste

class Animal {
    String nome
    Sexo sexo
    Especie espécie
    String raça
    int idade
    Porte porte
    Estado estado
    Cidade cidade
    boolean vermifugado
    boolean esterilizado
    String deficiência
    String observações

    static belongsTo = [usuário: Usuario]


    static constraints = {
        idade min: 0

    }
}
