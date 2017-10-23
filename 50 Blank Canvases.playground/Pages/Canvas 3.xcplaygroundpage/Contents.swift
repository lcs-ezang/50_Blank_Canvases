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

let canvas = Canvas(width:600, height:600)

// Position of circles
for i in stride(from: 50, through: 600, by: 100){
    for y in stride(from: 50, through: 600, by: 100){
        
        // Size of circles
        for p in stride(from: 100, through: 20, by: -20){
        
        // Color generator
        let c = random(from: 0, toButNotIncluding: 361)
        let s = random(from: 50, toButNotIncluding: 101)
        let b = random(from: 75, toButNotIncluding: 101)
        
        
        // Color
        canvas.fillColor = Color.init(hue: c, saturation: s, brightness: b, alpha: 100)
        // Drawing the circle
        canvas.drawEllipse(centreX: i, centreY: y, width: p, height: p)
  
        
    }
}
}
// stop this please
/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?



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

