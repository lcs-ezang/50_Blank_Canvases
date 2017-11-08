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
let canvas = Canvas(width: 400, height: 400)

// Create a starting point for travelling through Perlin noise space
var start = 0.0

//Create a Perlin noise generator
let p = PerlinGenerator()

// for saving prior colour
var lastColour = 0.0


for i in stride(from: 50, through: 600, by: 100){
    for y in stride(from: 50, through: 600, by: 100){
        
        // Size of circles
        for l in stride(from: 100, through: 20, by: -20){
            
            // Color generator

            //Hue
            //Move through Perlin noise space
            start += 0.05

            //Get Perlin noise (gives us a random number between -1 and 1)
            let value = p.perlinNoise(x: start)

            //Convert to a range between 0 and 100
            var newColour = map(value: value, fromLower: -1, fromUpper: 1, toLower: 1, toUpper: 360)

            //Test if number are too close
            if newColour - lastColour > -50 && newColour - lastColour < 50 {
                newColour += 100
            }
            
            //Random saturation and brightness
            let s = random(from: 40, toButNotIncluding: 91)
            let b = random(from: 90, toButNotIncluding: 101)
            
            // Color
            canvas.fillColor = Color.init(hue: Int(newColour), saturation: s, brightness: b, alpha: 90)
            // Drawing the circle
            canvas.drawEllipse(centreX: i, centreY: y, width: l, height: l)
            
            // Save prior colour
            lastColour = newColour

        }
    }
}

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

