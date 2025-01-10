package com.imckify.application

import spock.lang.Ignore
import spock.lang.Specification

class ControllerSpec extends Specification {

    void 'passing test'() {
        expect:
        true
    }

    @Ignore
    void 'failing test'() {
        given:
            Controller controller = [:]
        when:
            String result = controller.greeting()
        then:
            !result
    }

}
