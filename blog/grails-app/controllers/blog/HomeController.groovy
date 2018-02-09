package blog

class HomeController {

    def index() {
        render view: "index"
    }

    def about(){
        render view:"about"
    }
}
