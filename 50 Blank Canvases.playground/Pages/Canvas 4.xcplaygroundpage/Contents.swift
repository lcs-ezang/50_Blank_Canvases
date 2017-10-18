//: [Previous](@previous) / [Next](@next)



import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 200, height: 100)

//Illustrate random noise generation


for x in stride(from: 0, through: 199, by: 1){
    
    //Decide how long to draw the line
    let toY = random(from: 0, toButNotIncluding: 101)
    
    
    //Draw a vertical line
    canvas.drawLine(fromX: x, fromY: 0, toX: x, toY: toY)
    
}

//Learn about data types
var name = "Lakefield" // assignment statement
name = "Lakefield College School"

//Create a number
let value = 4  // Uses type inferance guesses integer
let anotherValue : Int = 5

//Create a number that is not an integer
var decimalValue = 4.5
decimalValue = 5
let anotherDecimalValue : Double = 5.5

// What are the maximum and minimum possible values
Int.min
Int.max


// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

