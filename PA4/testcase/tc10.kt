fun main() {
    val obj: Any = "The quick brown fox jumped over a lazy dog"

    if (obj is String) {
        // The variable obj is automatically cast to a String in this scope.
        // No Explicit Casting needed. 
        println("Found a String of length ${obj.length}")
    }

    if (obj !is String) {
        println("Not a String")
    } 

    val obj2: Any = 123
    val str: String? = obj2 as? String 
    println(str)  
}