fun main() {


    for (i in 1..10) {
        println("We Love Kotlin")
    }

    val name = "Programming Language"

    for (ad in name) {
        if (!ad.equals(name.last())) { 
            print(ad + ",") 
        } else { 
            println(ad) 
        }
    }

    val arr = arrayOf(3, 4, 5, 6) 
    var count = 0 

    for (num in arr) { 
        count += num 
    }

    println("Count : " + count) 


    for (i in 1..3) {
        for (j in 3 downTo 1) { 
            println(i.toString() + ", " + j.toString() + ", " + (i + j))
        }
    }

    var i = 1

    while (i <= 5) { 
        println(i) 
        ++i 
    }

}