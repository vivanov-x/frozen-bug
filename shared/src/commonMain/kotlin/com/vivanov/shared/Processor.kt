package com.vivanov.shared

import co.touchlab.stately.freeze
import co.touchlab.stately.isFrozen

data class Foo(
    val field: String,
    val barsList: List<Bar>
)

data class Bar(
    val field: String
)

class Processor {

    fun execute(foo: Foo) {
        foo.freeze()
        throwIfNotFrozen(foo)
    }

    fun executeWithWorkaround(foo: Foo) {
        foo.freeze()
        foo.barsList.forEach { it.freeze() }

        throwIfNotFrozen(foo)
    }

    private fun throwIfNotFrozen(foo: Foo) {
        if (!foo.isFrozen) {
            throw IllegalStateException("Foo must be frozen")
        }

        if (!foo.barsList.isFrozen) {
            throw IllegalStateException("barsList must be frozen")
        }

        foo.barsList.forEach {
            if (!it.isFrozen) {
                throw IllegalStateException("Each bar inside barsList must be frozen")
            }
        }
    }

}