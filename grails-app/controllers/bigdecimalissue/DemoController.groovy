package bigdecimalissue

import grails.validation.Validateable

class FilterCommand implements Validateable {
    String name
    BigDecimal value
    Book bookChosen

    static constraints = {
        value(min: 1.00, blank: false)
        name(blank: false, nullable: false)
        bookChosen validator: {
            if (it.name == "Best Book") return false
        }
    }
}

class DemoController {

    def index(FilterCommand body) {
        if (body.hasErrors()) {
            log.error("Errors found")
            body.errors.allErrors.each {
                log.error(it.toString())
            }
        }

        log.error("Name: $body.name , Value: $body.value, Id:" + body.bookChosen?.id)

        [body: body]
    }

    def createBook(){
        Book newBook = new Book()
        newBook.name = "Best Book"
        newBook.value = 10
        newBook.save(flush:true, failOnError: true)

        log.error(Book.findAll().size().toString())

        render(view: "index")
    }

    def printBooks(){
        Book.findAll().each {
            log.error(it.id + " " + it.name)
        }

        render(view: "index")
    }

}

