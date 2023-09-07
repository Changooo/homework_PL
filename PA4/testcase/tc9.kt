interface MyInterface {
    val seasonNumber: Int
    fun askQuestion(): String
    fun sayHi() {
        println("Hi!")
    }
}

class InterfaceSample : MyInterface {
    override val seasonNumber: Int = 2
    override fun askQuestion() = "Biscuit or Cookie"
}

fun main() {

    val interfaceSample = InterfaceSample()

    println("season Number = " + interfaceSample.seasonNumber)
    interfaceSample.sayHi()

    println(interfaceSample.askQuestion())
}