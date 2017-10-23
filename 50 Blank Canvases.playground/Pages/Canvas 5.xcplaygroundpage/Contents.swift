
/*:
 ## Required code
 
 
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 400)

// Position of circles
canvas.translate(byX: -50, byY: -50)
for i in stride(from: 50, through: 600, by: 100){

    
    
    for y in stride(from: 50, through: 600, by: 100){
        
        // Size of circles
        for a in stride(from: 100, through: 20, by: -20){
            
            // Color generator
            let c = random(from: 0, toButNotIncluding: 361)
            let s = random(from: 50, toButNotIncluding: 101)
            let b = random(from: 75, toButNotIncluding: 101)
            
            
            // Color
            canvas.translate(byX: i, byY: y)
            canvas.rotate(by: Degrees(s))
            canvas.fillColor = Color.init(hue: c, saturation: s, brightness: b, alpha: 100)
            // Drawing the circle
            canvas.drawRectangle(centreX: 0, centreY: 0, width: a, height: a)
            canvas.rotate(by: Degrees(-s))
            canvas.translate(byX: -i, byY: -y)
            
        }
    }
}

    
    
/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
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
