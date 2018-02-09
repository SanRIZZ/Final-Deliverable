package blog

class BlogController {

    def list() {
        List<Blog> blogList = Blog.list()
        render view:"index", model:[blogList:blogList]
    }

    def index(){
        render view:"index"
    }

    def create(){
        List<Author> authorList = Author.list()
        render view:"create", model:[authorList:authorList]
    }

    def save(Blog blog){
        blog.datePosted = new Date()
        blog.dateModified = new Date()
        if(blog.validate()){
            blog.save flush:true, failOrError: true
            flash.Message = "Your blog is ready."
            redirect action: "list"
        }else {
            flash.Message = "Something went wrong. Please fill in all fields that is required."
            redirect action: "create"
        }
    }

    def edit(Blog blogs) {
        List<Author> authorList = Author.list()
        render view:"edit", model: [blogs:blogs, authorList:authorList]
    }

    def update(Blog blog){
       blog.dateModified = new Date()
        if(blog.validate()){
            blog.save()
            redirect action: "list"
        }
        else{
            redirect action: "edit"
        }
    }

    def detail(){
        Blog blogs = Blog.get(params.id)
        render view: "index", model:[blogs:blogs]
    }
}
