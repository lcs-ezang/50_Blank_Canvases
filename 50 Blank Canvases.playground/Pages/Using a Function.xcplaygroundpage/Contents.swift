//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 300)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?

////Example of a function
//func someFunction (sides : Int){
//
//    //In the function body (between the brackets firstParameterName and secondParameterName refer to the value provided when the funtion was called)
//
//    //Put in number of sides
//    let sides = 5
//    //Degrees of each side
//    let sideDegrees = Int((sides - 2) * 180)
//
//
//    //Drawing a n-gon
//    canvas.translate(byX: sides, byY: 50)
//    canvas.defaultLineWidth = 5
//
//    //Draw lines
//    for _ in 1...sides {
//        canvas.drawLine(fromX: 0, fromY: 0, toX: 750/sides, toY: 0)
//        canvas.translate(byX: 750/sides, byY: 0)
//        canvas.rotate(by: CGFloat(180-sideDegrees/sides))
//    }
//
//}
//someFunction(sides: 50)
//someFunction(sides: 20)
//someFunction(sides: 10)
//someFunction(sides: 5)
//
//


func drawshape(withSides: Int, sideLength: Int, startX: Int, startY: Int){

    // Find Interior angle
    let interior = (withSides-2)*180/withSides
    
    //Find Exterior angle
    let exterior = 180-interior
    
    //Move to the start position
    canvas.translate(byX: startX, byY: startY)
    
    //Loop to draw
    for _ in 1...withSides{
        
        //draw lines
        canvas.drawLine(fromX: 0, fromY: 0, toX: sideLength, toY: 0)
        canvas.translate(byX: sideLength, byY: 0)
        canvas.rotate(by: Degrees(exterior))
        
        
        
        
    }

}

drawshape(withSides: 10, sideLength: 50, startX: 50, startY: 50)

    /*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */

/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */

/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

