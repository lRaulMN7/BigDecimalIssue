package bigdecimalissue

import grails.validation.Validateable

class FilterCommand implements Validateable{
    String name
    BigDecimal value
}

class DemoController {

    def index(FilterCommand body) {
        log.error("Name: $body.name , Value: $body.value")

        [body: body]
    }
}
