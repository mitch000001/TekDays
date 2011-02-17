package tekdays

import grails.test.*

class TekEventTests extends GroovyTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

<<<<<<< HEAD
    void testToString() {
        def tekEvent = new TekEvent(name: 'Groovy One',
                city: 'San Francisco, CA',
                organizer: 'John Doe',
                venue: 'Moscone Center',
                startDate: new Date('6/2/2009'),
                endDate: new Date('6/5/2009'),
                description: 'This conference will cover all...')
        assertEquals 'Groovy One, San Francisco, CA', tekEvent.toString()
=======
    void testSomething() {
>>>>>>> 7c99ff7874bb368c955d0b47667453b771e873f2

    }
}
