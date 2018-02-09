package blog

class AuthorController {

    def list() {
        List<Author> authorList = Author.list()
        render view:"index", model:[authorList:authorList]
    }

    def index(){
        render view:"index"
    }

    def create(){
        render view:"create"
    }

    def save(Author author){
        if(author.validate()){
            author.save flush:true, failOrError: true
            flash.Message = "Your blog is ready."
            redirect action: "list"
        }else {
            flash.Message = "Something went wrong. Please fill in all fields that is required."
            redirect action: "create"
        }
    }

    def edit() {
        Author author = Author.get(param.id)
        render view:"edit", model:[author:author]
    }

    def update(Author author){
        if(author.validate()){
            author.save()
            redirect action: "list"
        }
        else{
            redirect action: "edit"
        }
    }

    def detail(){
        Author auth = Author.get(param.id)
        render view: "index", model:[auth:auth]
    }
}
