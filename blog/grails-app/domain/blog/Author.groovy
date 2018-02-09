package blog

class Author {

    String firstName
    String lastName
    String email
    int phoneNumber
    static hasMany = [blogs:Blog]

    static constraints = {
        email nullable: true
        phoneNumber nullable: true
    }
}
