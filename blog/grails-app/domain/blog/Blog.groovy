package blog

class Blog {

    String title
    Date datePosted
    Date dateModified
    String content
    String imgUrl
    String tag
    Author blogAuthor

    static constraints = {
        dateModified nullable: true
        imgUrl nullable: true
        tag nullable: true
    }
}
