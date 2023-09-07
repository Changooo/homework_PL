package tutorial
import kotlin.math.ceil
import kotlin.math.floor

fun main(args: Array<String>){
  var nullableValue : String? = null;
  fun returnNull() : Double? {return null}

  var value: Double = 0.123
  // This gives error since value cannot be null
  // value = returnNull()
  var valueWithDefault : Double = returnNull() ?: 0.0001
  println("valueWithDefault %.1f".format(ceil(valueWithDefault)))
}