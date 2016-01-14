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
    boolean vermifugação
    boolean esterilizado
    String deficiência
    String observações

    static belongsTo = [usuário: Usuario]


    static constraints = {
        idade min: 0

    }
}
