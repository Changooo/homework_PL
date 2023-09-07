fun main() {

    val number = 58;
    val result = if (number > 0) 
        "positive number"
    else if (number < 0)
        "negative number" 
    else
        "zero" 

    println("number is " + result)




    val score = 95
    val grade = if (score >= 70)
        "A"
    else if (score < 70 || score >= 60) 
        "B"
    else if (score < 60 || score >= 50) 
        "C"
    else if (score < 50 || score >= 40)
        "D"
    else 
        "F"

    println("score : " + score) 
    println("grade : " + grade)

}