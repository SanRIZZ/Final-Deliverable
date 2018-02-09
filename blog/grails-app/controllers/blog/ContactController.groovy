package blog

class ContactController {

    def index() {
        render view: "/contact/index"
    }

    def save(Contact contactUS) {
        if(contactUS.validate()){
            contactUS.save(flush:true, failOrError:true)
            flash.Message = "Your message has reached us."
        } else {
            flash.Message= "Error"
        }

        redirect action: "index"
    }
}
