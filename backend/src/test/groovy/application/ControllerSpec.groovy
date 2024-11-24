package application

import com.imckify.application.Controller
import spock.lang.Specification

class ControllerSpec extends Specification {

    void 'passing test'() {
        expect:
            true
    }

    void 'failing test'() {
        given:
            Controller controller = [:]
        when:
            String result = controller.greeting()
        then:
            !result
    }
}
