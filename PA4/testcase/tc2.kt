package my.demo

fun add(a: Int, b: Int): Int {
    return a + b
}

fun sub(a: Int, b: Int) = a - b

fun mul(a: Int, b: Int): Unit {
    println(a*b)
}

fun main() {
  fun div(a: Int, b: Int) {
    println(a/b)
  }
  
  println(add(1,2))
  println(sub(4,1))
  mul(5,5)
  div(12,3)
}
