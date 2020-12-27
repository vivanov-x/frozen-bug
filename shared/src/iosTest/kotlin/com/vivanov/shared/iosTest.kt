package com.vivanov.shared

import kotlin.test.Test
import kotlin.test.assertTrue

class IosTest {

    @Test
    fun testExample() {
        val processor = Processor()
        val foo = Foo("", barsList = listOf(Bar("bar1"), Bar("bar2")))
        processor.execute(foo)
        // finished w/o exception in our case is success
    }
}